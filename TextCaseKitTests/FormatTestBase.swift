import TextCaseKit
import XCTest

class FormatTestBase: XCTestCase {

    private static let defaultInputs = [
        "Hello, World", "123456", "Test sentence. test sentence.", "3.14", "ABC", "snake_case",
        "This is a sentence.",
    ]

    // MARK: - General

    func performFormatterTest(format: Format, inputs: [String] = defaultInputs) -> [String] {
        var outputs: [String] = []
        for input in inputs {
            outputs.append(format.process(input))
        }
        return outputs
    }

}
