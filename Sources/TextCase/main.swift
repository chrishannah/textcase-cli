import Foundation
import TextCaseKit

let VERSION = "1.0"

func help() {
    let helpText = """
    USAGE: textcase [--format <format] [--input <input>]

    OPTIONS:
        -h --help           Prints this help text.
        -v --version        Get the version number.
        -l --listFormats    Lists all available formats.
    """
    print(helpText)
}

func version() {
    print("Text Case v\(VERSION)")
}

func listFormats() {
    let formatRepository = FormatRepository()
    print("Formats:")
    for format in formatRepository.getAllFormats() {
        print("    \(format.id) - \(format.description)")
    }
}

func process(arguments: [String]) {
    var args = arguments
    args.remove(at: 0) // First arg is the location, ignore it
    
    guard args.count > 0 else {
        help()
        return
    }

    let first = args[0]
    switch (first) {
        case "-v", "--version":
            version()
        case "-h", "--help":
            help()
        case "-l", "--listFormats":
            listFormats()
        default:
            help()
    }
}

let args = CommandLine.arguments
process(arguments: args)
