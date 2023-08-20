import TextCaseKit
import XCTest

final class SimpleFormatTests: FormatTestBase {

    func testReversed() throws {
        let outputs: [String] = performFormatterTest(format: Reversed())
        XCTAssertEqual(outputs[0], "dlroW ,olleH")
        XCTAssertEqual(outputs[1], "654321")
        XCTAssertEqual(outputs[2], ".ecnetnes tset .ecnetnes tseT")
        XCTAssertEqual(outputs[3], "41.3")
        XCTAssertEqual(outputs[4], "CBA")
        XCTAssertEqual(outputs[5], "esac_ekans")
        XCTAssertEqual(outputs[6], ".ecnetnes a si sihT")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Reversed())
            }
        }
    }

    func testCapitalise() throws {
        let outputs = performFormatterTest(format: Capitalise())
        XCTAssertEqual(outputs[0], "Hello, World")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "Test sentence. Test sentence.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "ABC")
        XCTAssertEqual(outputs[5], "Snake_case")
        XCTAssertEqual(outputs[6], "This is a sentence.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Capitalise())
            }
        }
    }

    func testCapitaliseWords() throws {
        let outputs = performFormatterTest(format: CapitaliseWords())
        XCTAssertEqual(outputs[0], "Hello, World")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "Test Sentence. Test Sentence.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "Abc")
        XCTAssertEqual(outputs[5], "Snake_Case")
        XCTAssertEqual(outputs[6], "This Is A Sentence.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: CapitaliseWords())
            }
        }
    }

    func testLowercase() throws {
        let outputs = performFormatterTest(format: Lowercase())
        XCTAssertEqual(outputs[0], "hello, world")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "test sentence. test sentence.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "abc")
        XCTAssertEqual(outputs[5], "snake_case")
        XCTAssertEqual(outputs[6], "this is a sentence.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Lowercase())
            }
        }
    }

    func testUppercase() throws {
        let outputs = performFormatterTest(format: Uppercase())
        XCTAssertEqual(outputs[0], "HELLO, WORLD")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "TEST SENTENCE. TEST SENTENCE.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "ABC")
        XCTAssertEqual(outputs[5], "SNAKE_CASE")
        XCTAssertEqual(outputs[6], "THIS IS A SENTENCE.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Uppercase())
            }
        }
    }

    func testSentence() throws {
        let outputs = performFormatterTest(format: Sentence())
        XCTAssertEqual(outputs[0], "Hello, world")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "Test sentence. Test sentence.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "Abc")
        XCTAssertEqual(outputs[5], "Snake_case")
        XCTAssertEqual(outputs[6], "This is a sentence.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Sentence())
            }
        }
    }

}
