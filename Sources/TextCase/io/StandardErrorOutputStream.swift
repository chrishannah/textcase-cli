import Foundation

public struct StandardErrorOutputStream: TextOutputStream {
    public mutating func write(_ string: String) {
        fputs(string, stderr)
    }
}

public var errorOutputStream = StandardErrorOutputStream()
