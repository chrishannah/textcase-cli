import Foundation

class FontFormatter {
    func process(_ input: String, source: String, formatted: String) -> String {
        guard !input.isEmpty else { return "" }
        var output = input

        for i in 0 ..< source.count {
            let sourceIndex = source.index(source.startIndex, offsetBy: i)
            let formattedIndex = formatted.index(formatted.startIndex, offsetBy: i)
            let sourceChar = source[sourceIndex]
            let formattedChar = formatted[formattedIndex]
            output = output.replacingOccurrences(of: String(sourceChar), with: String(formattedChar))
        }

        return output
    }
}
