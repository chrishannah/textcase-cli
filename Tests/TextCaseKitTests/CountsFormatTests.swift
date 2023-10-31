//

import XCTest
import TextCaseKit

final class CountsFormatTests: FormatTestBase {

    func testCountCharacters() throws {
        let outputs: [String] = performFormatterTest(format: CountCharacters())
        XCTAssertEqual(outputs[0], "12")
        XCTAssertEqual(outputs[1], "6")
        XCTAssertEqual(outputs[2], "29")
        XCTAssertEqual(outputs[3], "4")
        XCTAssertEqual(outputs[4], "3")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CountCharacters())
            }
        }
    }
    
    func testCountCharactersExcWhitespace() throws {
        let outputs: [String] = performFormatterTest(format: CountCharactersExcWhitespace())
        XCTAssertEqual(outputs[0], "11")
        XCTAssertEqual(outputs[1], "6")
        XCTAssertEqual(outputs[2], "26")
        XCTAssertEqual(outputs[3], "4")
        XCTAssertEqual(outputs[4], "3")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CountCharactersExcWhitespace())
            }
        }
    }
    
    func testCountWords() throws {
        let outputs: [String] = performFormatterTest(format: CountWords())
        XCTAssertEqual(outputs[0], "2")
        XCTAssertEqual(outputs[1], "1")
        XCTAssertEqual(outputs[2], "4")
        XCTAssertEqual(outputs[3], "1")
        XCTAssertEqual(outputs[4], "1")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CountWords())
            }
        }
    }
    
    func testCountLines() throws {
        let inputs = ["123", "", """
        
        """,
        """
        Hello
        World
        
        .
        """]
        let outputs: [String] = performFormatterTest(format: CountLines(), inputs: inputs)
        XCTAssertEqual(outputs[0], "1")
        XCTAssertEqual(outputs[1], "0")
        XCTAssertEqual(outputs[2], "0")
        XCTAssertEqual(outputs[3], "4")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CountLines())
            }
        }
    }
    
    func testCountLinesExcBlanks() throws {
        let inputs = ["123", "", """
        
        """,
        """
        Hello
        World
        
        .
        """]
        let outputs: [String] = performFormatterTest(format: CountLinesExcBlanks(), inputs: inputs)
        XCTAssertEqual(outputs[0], "1")
        XCTAssertEqual(outputs[1], "0")
        XCTAssertEqual(outputs[2], "0")
        XCTAssertEqual(outputs[3], "3")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CountLinesExcBlanks())
            }
        }
    }
}
