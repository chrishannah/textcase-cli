import TextCaseKit
import XCTest

final class FunFormatTests: FormatTestBase {

    func testClapCase() throws {
        let outputs: [String] = performFormatterTest(format: ClapCase())
        XCTAssertEqual(outputs[0], "Hello, 👏 World")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "Test 👏 sentence. 👏 test 👏 sentence.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "ABC")
        XCTAssertEqual(outputs[5], "snake 👏 case")
        XCTAssertEqual(outputs[6], "This 👏 is 👏 a 👏 sentence.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: ClapCase())
            }
        }
    }

    func testHashtags() throws {
        let outputs: [String] = performFormatterTest(format: Hashtags())
        XCTAssertEqual(outputs[0], "#Hello #World")
        XCTAssertEqual(outputs[1], "#123456")
        XCTAssertEqual(outputs[2], "#Test #sentence #test #sentence")
        XCTAssertEqual(outputs[3], "#314")
        XCTAssertEqual(outputs[4], "#ABC")
        XCTAssertEqual(outputs[5], "#snake_case")
        XCTAssertEqual(outputs[6], "#This #is #a #sentence")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Hashtags())
            }
        }
    }
    
    func testRot13() throws {
        let outputs: [String] = performFormatterTest(format: Rot13())
        XCTAssertEqual(outputs[0], "Uryyb, Jbeyq")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "Grfg fragrapr. grfg fragrapr.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "NOP")
        XCTAssertEqual(outputs[5], "fanxr_pnfr")
        XCTAssertEqual(outputs[6], "Guvf vf n fragrapr.")

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Rot13())
            }
        }
    }
    
    func testShuffled() throws {
        let inputs: [String] = ["hello", "snake", "beer bear"]
        for input in inputs {
            let output = performFormatterTest(format: Shuffled(), inputs: [input]).first ?? ""
            XCTAssertNotEqual(input, output)
            XCTAssertEqual(input.count, output.count)
        }

        self.measure {
            for _ in 1...10 {
                _ = performFormatterTest(format: Shuffled())
            }
        }
    }

}
