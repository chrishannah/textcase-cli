import Foundation

public final class EncodeBase64: Format {
    public var name: String = "Encode Base64"
    public var description: String = "Encode text as Base64."
    public var id: String = "base64Encode"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        guard let data = input.data(using: .utf8) else { return input }
        return data.base64EncodedString()
    }
}
