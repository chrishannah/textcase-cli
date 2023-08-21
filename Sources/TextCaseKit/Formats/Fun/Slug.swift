import Foundation

public final class Slug: Format {
    
    public var name: String = "Slug"
    public var description: String = "Convert the text into a slug."
    public var id: String = "slug"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        var slug = input

        let separators = [" ", "_", "-"]

        for separator in separators {
            slug = slug.replacingOccurrences(of: separator, with: "-")
        }

        let characterSetToStrip = CharacterSet.alphanumerics.union(CharacterSet(charactersIn: "-"))
        slug = slug.components(separatedBy: characterSetToStrip.inverted).joined()
            .replacingOccurrences(of: "--", with: "-")
            .replacingOccurrences(of: "--", with: "-")
            .lowercased()
        return slug
    }

}
