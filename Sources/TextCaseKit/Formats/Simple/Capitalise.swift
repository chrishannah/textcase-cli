import Foundation

public final class Capitalise: Format {
    
    public var name: String = "Capitalise"
    public var description: String = "Capitalise the first letter."

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        guard !input.isEmpty else { return input }
        var capitalise = input

        // first character
        let firstCharIndexRange = capitalise.startIndex...capitalise.startIndex
        let firstChar = capitalise[firstCharIndexRange]
        capitalise = capitalise.replacingCharacters(
            in: firstCharIndexRange, with: firstChar.uppercased())

        // find periods
        var periods: [String.Index] = []
        for i in 0..<capitalise.count {
            let index = capitalise.index(capitalise.startIndex, offsetBy: i)
            if capitalise[index] == "." {
                periods.append(index)
            }
        }

        // capitalise after period
        for periodIndex in periods {
            if periodIndex == capitalise.endIndex {
                break
            }

            for i in 0..<3 {
                let offsetIndex = capitalise.index(periodIndex, offsetBy: i)

                if offsetIndex == capitalise.endIndex {
                    break
                } else {
                    if capitalise[offsetIndex] != " " {
                        capitalise = capitalise.replacingCharacters(
                            in: offsetIndex...offsetIndex,
                            with: "\(capitalise[offsetIndex])".uppercased())
                    }
                }
            }
        }

        return capitalise
    }
}
