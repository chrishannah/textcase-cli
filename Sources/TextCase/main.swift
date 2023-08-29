import Foundation
import TextCaseKit

let VERSION = "1.0"

func help() {
    let helpText = """
    NAME
        textcase - Format text into a specified format.

    OPTIONS
        -h --help           Prints this help text.
        -v --version        Get the version number.
        -l --listFormats    Lists all available formats.

        --format <format>   Format to be used.
        --input <input>     Text to be formatted.
        --in <file>         Path of file to be used as input.
        --out <file>        Path of file to be used as output.

    USAGE
        textcase [--format <format>] [--input <input> | --in <file>] [--out <path>]


    INPUT
        You can pass an input string to be formatted in three ways. Pass a string
        with the --input option, a path to a file with the --in option, or you can 
        pipe in input from stdin.

    OUTPUT
        By default the formatted text will be sent to stdout. But you can override
        this by specifying a file path with the --out option.

    """
    print(helpText, to: &outputStream)
}

func version() {
    print("Text Case CLI v\(VERSION)")
}

func listFormats() {
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

func process(arguments: [String]) {
    let commandOptions = buildCommandOptions()

    var args = arguments
    args.remove(at: 0) // First arg is the location, ignore it

    guard args.count > 0 else {
        help()
        return
    }
    guard let first = args.first else {
        help()
        return
    }

    // Check for any command options before attempting to format text
    for commandOption in commandOptions {
        if first == commandOption.short || first == commandOption.long {
            commandOption.handler()
            return
        }
    }

    // Format text
    guard let format = resolveFormat(arguments: args) else {
        return
    }
    guard let input = resolveInput(arguments: args) else {
        return
    }
    let formatted = format.process(input)
    returnFormattedText(formatted, arguments: args)
}

func resolveFormat(arguments: [String]) -> Format? {
    let formatRepository = FormatRepository()

    if let identifier = getArgValue(for: "--format", in: arguments) {
        guard let format = formatRepository.format(for: identifier) else {
            print("Format not found, use textcase --listFormats to see the full list of available formats.",
                  to: &errorOutputStream)
            return nil
        }
        return format
    }
    print("Format not specified, use textcase --help to see the proper syntax.", to: &errorOutputStream)
    return nil
}

func resolveInput(arguments: [String]) -> String? {
    if let input = getArgValue(for: "--input", in: arguments) {
        return input
    }
    if let path = getArgValue(for: "--in", in: arguments) {
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

    print("Input not provided, use textcase --help to see the proper syntax.", to: &errorOutputStream)
    return nil
}

func returnFormattedText(_ text: String, arguments: [String]) {
    if let path = getArgValue(for: "--out", in: arguments) {
        do {
            try text.write(toFile: path, atomically: true, encoding: .utf8)
            return
        } catch {
            print("Error writing to file", to: &errorOutputStream)
            print(error.localizedDescription, to: &errorOutputStream)
        }
    }

    print(text, to: &outputStream)
}

func getArgValue(for argument: String, in arguments: [String]) -> String? {
    for (i, arg) in arguments.enumerated() {
        guard arg == argument else {
            continue
        }
        guard arguments.count > i + 1 else {
            break
        }
        return arguments[i + 1]
    }
    return nil
}

func buildCommandOptions() -> [CommandOption] {
    let helpOption = CommandOption(description: "Prints this help text",
                                   short: "-h", long: "--help",
                                   handler: help)
    let versionOption = CommandOption(description: "Get the version number.",
                                      short: "-v", long: "--version",
                                      handler: version)
    let listFormatsOption = CommandOption(description: "Lists all available formats.",
                                          short: "-l", long: "--listFormats",
                                          handler: listFormats)
    return [versionOption, helpOption, listFormatsOption]
}

let args = CommandLine.arguments
process(arguments: args)
