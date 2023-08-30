import ArgumentParser
import Foundation
import TextCaseKit

extension TextCase {
    struct Format: ParsableCommand {
        static var configuration = CommandConfiguration(
            abstract: "Format text into a specified format.")

        @Option(name: [.customShort("f"), .customLong("format")], help: "Format to be used.")
        var formatIdentifier: String

        @Option(name: .shortAndLong, help: "Text to be formatted.")
        var input: String?

        @Option(name: .long, help: ArgumentHelp("Path of file to be used as input.", valueName: "file"))
        var inputFile: String?

        @Option(name: .long, help: ArgumentHelp("Path of file to be used as output.", valueName: "file"))
        var outputFile: String?

        mutating func run() {
            let formatRepository = FormatRepository()
            guard let format = formatRepository.format(for: formatIdentifier) else {
                print(
                    "Format \(formatIdentifier) is not a valid format.",
                    to: &errorOutputStream
                )
                return
            }

            guard let input = resolveInput(input: input, inputFile: inputFile) else {
                print(
                    "Input not provided, use textcase --help to see the proper syntax.",
                    to: &errorOutputStream
                )
                return
            }

            let formattedText = format.process(input)

            if let path = outputFile {
                do {
                    try formattedText.write(toFile: path, atomically: true, encoding: .utf8)
                    return
                } catch {
                    print("Error writing to file", to: &errorOutputStream)
                    print(error.localizedDescription, to: &errorOutputStream)
                }
            }

            print(formattedText, to: &outputStream)
        }

        func resolveInput(input: String?, inputFile: String?) -> String? {
            if let input {
                return input
            }
            if let path = inputFile {
                do {
                    return try String(contentsOfFile: path, encoding: .utf8)
                } catch {
                    print("Error reading file from path", to: &errorOutputStream)
                    print(error.localizedDescription)
                }
            }
            if let input = readLine(strippingNewline: false) {
                return input
            }
            return nil
        }
    }
}
