import Foundation

public protocol Format {
    var name: String { get }
    var description: String { get }

    func process(_ input: String) -> String
}
