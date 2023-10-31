//

import Foundation

public final class CountCharacters: Format {
    public var name: String = "Count Characters"
    public var id: String = "countCharacters"
    public var description: String = "Count number of characters."
    
    public init() {}
    
    public func process(_ input: String) -> String {
        return "\(input.count)"
    }
}
