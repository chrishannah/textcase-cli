import TextCaseKit
import XCTest

class CleaningFormatTests: FormatTestBase {

    func testStripHTML() throws {
        let inputs = ["<a>text</a>", "<p></p>", "<p><strong>hello</strong></p>"]
        let outputs: [String] = performFormatterTest(format: StripHTML(), inputs: inputs)
        XCTAssertEqual(outputs[0], "text")
        XCTAssertEqual(outputs[1], "")
        XCTAssertEqual(outputs[2], "hello")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: StripHTML())
            }
        }
    }

    func testStripWhitespace() throws {
        let inputs = ["    ab c  ", "\nhello ", "\n\nHello World\n "]
        let outputs: [String] = performFormatterTest(format: StripWhitespace(), inputs: inputs)
        XCTAssertEqual(outputs[0], "abc")
        XCTAssertEqual(outputs[1], "hello")
        XCTAssertEqual(outputs[2], "HelloWorld")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: StripWhitespace())
            }
        }
    }

    func testTrimWhitespace() throws {
        let inputs = ["    ab c  ", "\nhello ", "\n\nHello World\n "]
        let outputs: [String] = performFormatterTest(format: TrimWhitespace(), inputs: inputs)
        XCTAssertEqual(outputs[0], "ab c")
        XCTAssertEqual(outputs[1], "hello")
        XCTAssertEqual(outputs[2], "Hello World")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: TrimWhitespace())
            }
        }
    }
}
