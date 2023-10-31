import ArgumentParser

@main
struct TextCase: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "textcase",
        abstract: "A text transformation tool.",
        version: "1.3",
        subcommands: [Format.self, ListFormats.self],
        defaultSubcommand: Format.self
    )
}
