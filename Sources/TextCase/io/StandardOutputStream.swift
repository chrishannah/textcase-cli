import Foundation

public struct StandardOutputStream: TextOutputStream {
    public mutating func write(_ string: String) {
        fputs(string, stdout)
    }
}

public var outputStream = StandardOutputStream()
