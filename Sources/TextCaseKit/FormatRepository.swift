import Foundation

public final class FormatRepository {
    public init() {}

    public func getAllFormats() -> [Format] {
        return [
            // Cleaning
            StripHTML(), StripWhitespace(), TrimWhitespace(),
            // Fun
            ClapCase(), Hashtags(), Rot13(), Shuffled(), Slug(), SmallCaps(),
            Spongebob(), UpsideDown(),
            // Simple
            Capitalise(), CapitaliseWords(), Lowercase(), Reversed(), Uppercase(),
            Sentence(),
        ]
    }
}
