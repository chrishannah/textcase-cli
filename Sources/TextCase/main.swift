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

    USAGE
        textcase [--format <format>] [--input <input>]

    """
    print(helpText)
}

func version() {
    print("Text Case CLI v\(VERSION)")
}

func listFormats() {
    let formatRepository = FormatRepository()
    print("Formats:")
    for format in formatRepository.getAllFormats() {
        print("    \(format.id) - \(format.description)")
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
    print(formatted)
}

func resolveFormat(arguments: [String]) -> Format? {
    let formatOption = "--format"
    let formatRepository = FormatRepository()

    for (i, arg) in arguments.enumerated() {
        guard arg == formatOption else {
            continue
        }
        guard arguments.count > i + 1 else {
            break
        }
        let identifier = arguments[i + 1]
        guard let format = formatRepository.format(for: identifier) else {
            print("Format not found, use textcase --listFormats to see the full list of available formats.")
            return nil
        }
        return format
    }
    print("Format not specified, use textcase --help to see the proper syntax.")
    return nil
}

func resolveInput(arguments: [String]) -> String? {
    let inputOption = "--input"

    for (i, arg) in arguments.enumerated() {
        guard arg == inputOption else {
            continue
        }
        guard arguments.count > i + 1 else {
            break
        }
        return arguments[i + 1]
    }
    print("Input not provided, use textcase --help to see the proper syntax.")
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
