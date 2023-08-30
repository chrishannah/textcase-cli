import ArgumentParser

@main
struct TextCase: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A text transformation tool.",
        version: "1.2",
        subcommands: [Format.self, ListFormats.self],
        defaultSubcommand: Format.self
    )
}
