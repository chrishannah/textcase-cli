import TextCaseKit
import XCTest

final class Base64FormatTests: FormatTestBase {
    func testEncodeBase64() throws {
        let inputs = ["Hello, World.", "3.14", "https://chrishannah.me"]
        let outputs: [String] = performFormatterTest(format: EncodeBase64(), inputs: inputs)
        XCTAssertEqual(outputs[0], "SGVsbG8sIFdvcmxkLg==")
        XCTAssertEqual(outputs[1], "My4xNA==")
        XCTAssertEqual(outputs[2], "aHR0cHM6Ly9jaHJpc2hhbm5haC5tZQ==")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: EncodeBase64())
            }
        }
    }

    func testDecodeBase64() throws {
        let inputs = ["SGVsbG8sIFdvcmxkLg==", "My4xNA==", "aHR0cHM6Ly9jaHJpc2hhbm5haC5tZQ=="]
        let outputs: [String] = performFormatterTest(format: DecodeBase64(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "https://chrishannah.me")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: DecodeBase64())
            }
        }
    }
}
