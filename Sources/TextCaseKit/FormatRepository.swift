import Foundation

public final class FormatRepository {
    public init() {}

    public func getAllFormats() -> [Format] {
        [
            // Cleaning
            StripHTML(), StripWhitespace(), TrimWhitespace(),
            // Fun
            ClapCase(), Hashtags(), Rot13(), Shuffled(), Slug(), SmallCaps(),
            Spongebob(), UpsideDown(),
            // Simple
            Capitalise(), CapitaliseWords(), Lowercase(), Reversed(), Uppercase(),
            Sentence(),
            // Programming
            CamelCase(), PascalCase(), SnakeCase(), KebabCase(),
            // Base64
            EncodeBase64(), DecodeBase64(),
            // Fonts
            BoldSerif(), BoldSansSerif(), Italic(), ItalicBoldSerif(), ItalicBoldSansSerif(),
            Gothic(), Strikethrough(), Script(),
            LettersInCirclesFilled(), LettersInCirclesOutline(), LettersInSquaresFilled(), LettersInSquaresOutline(),
        ]
    }

    public func format(for identifier: String) -> Format? {
        for format in getAllFormats() {
            if format.id == identifier {
                return format
            }
        }
        return nil
    }
}
