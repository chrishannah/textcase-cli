import Foundation

public final class DecodeBase64: Format {
    public var name: String = "Decode Base64"
    public var description: String = "Decode Base64 encoded text."
    public var id: String = "base64Decode"

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        guard let base64 = Data(base64Encoded: input) else { return input }
        guard let string = String(data: base64, encoding: .utf8) else { return input }
        return string
    }
}
