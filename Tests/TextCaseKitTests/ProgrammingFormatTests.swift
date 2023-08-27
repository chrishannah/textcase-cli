import TextCaseKit
import XCTest

class ProgrammingFormatTests: FormatTestBase {
    func testCamelCase() throws {
        let inputs = ["hello world", "HelloWorld", "hello-world", "hello_world"]
        let outputs: [String] = performFormatterTest(format: CamelCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "helloWorld")
        XCTAssertEqual(outputs[1], "helloWorld")
        XCTAssertEqual(outputs[2], "helloWorld")
        XCTAssertEqual(outputs[3], "helloWorld")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CamelCase())
            }
        }
    }

    func testPascalCase() throws {
        let inputs = ["hello world", "HelloWorld", "hello-world", "hello_world"]
        let outputs: [String] = performFormatterTest(format: PascalCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "HelloWorld")
        XCTAssertEqual(outputs[1], "HelloWorld")
        XCTAssertEqual(outputs[2], "HelloWorld")
        XCTAssertEqual(outputs[3], "HelloWorld")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: PascalCase())
            }
        }
    }

    func testSnakeCase() throws {
        let inputs = ["hello world", "HelloWorld", "hello-world", "hello_world"]
        let outputs: [String] = performFormatterTest(format: SnakeCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "hello_world")
        XCTAssertEqual(outputs[1], "hello_world")
        XCTAssertEqual(outputs[2], "hello_world")
        XCTAssertEqual(outputs[3], "hello_world")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: SnakeCase())
            }
        }
    }

    func testKebabCase() throws {
        let inputs = ["hello world", "HelloWorld", "hello-world", "hello_world"]
        let outputs: [String] = performFormatterTest(format: KebabCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "hello-world")
        XCTAssertEqual(outputs[1], "hello-world")
        XCTAssertEqual(outputs[2], "hello-world")
        XCTAssertEqual(outputs[3], "hello-world")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: KebabCase())
            }
        }
    }
}
