import ArgumentParser
import Foundation
import TextCaseKit

extension TextCase {
    struct ListFormats: ParsableCommand {
        static var configuration
            = CommandConfiguration(abstract: "Lists all available formats.")

        mutating func run() {
            let formats = FormatRepository().getAllFormats()
            var maxFormatIdentifierLength = 0
            print("Formats (\(formats.count)):", to: &outputStream)
            for format in formats {
                if format.id.count > maxFormatIdentifierLength {
                    maxFormatIdentifierLength = format.id.count
                }
            }
            for format in formats {
                let formatLine = String(repeating: " ", count: 4)
                    .appending(format.id)
                    .appending(String(repeating: " ", count: 2 + (maxFormatIdentifierLength - format.id.count)))
                    .appending(format.description)
                print(formatLine, to: &outputStream)
            }
        }
    }
}
