import TextCaseKit
import XCTest

final class TitleFormatTests: FormatTestBase {
    func testAMATitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: AMATitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, world.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This is a Sentence")
        XCTAssertEqual(outputs[3], "This is a Sentence. And another one.")
        XCTAssertEqual(outputs[4], "The Fox jumped Over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: AMATitleCase())
            }
        }
    }

    func testAPATitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: APATitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This Is a Sentence")
        XCTAssertEqual(outputs[3], "This Is a Sentence. And Another One.")
        XCTAssertEqual(outputs[4], "The Fox Jumped Over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: APATitleCase())
            }
        }
    }

    func testAPTitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: APTitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This is a Sentence")
        XCTAssertEqual(outputs[3], "This is a Sentence. And Another One.")
        XCTAssertEqual(outputs[4], "The Fox Jumped Over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: APTitleCase())
            }
        }
    }

    func testBluebookTitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: BluebookTitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This is a Sentence")
        XCTAssertEqual(outputs[3], "This is a Sentence. And Another one.")
        XCTAssertEqual(outputs[4], "The Fox Jumped over the lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: BluebookTitleCase())
            }
        }
    }

    func testCMOSTitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: CMOSTitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This Is a Sentence")
        XCTAssertEqual(outputs[3], "This Is a Sentence. And another One.")
        XCTAssertEqual(outputs[4], "The Fox Jumped over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: CMOSTitleCase())
            }
        }
    }

    func testGuardianTitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: GuardianTitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, world.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This is a Sentence")
        XCTAssertEqual(outputs[3], "This is a Sentence. And another one.")
        XCTAssertEqual(outputs[4], "The Fox jumped over the lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: GuardianTitleCase())
            }
        }
    }

    func testMLATitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: MLATitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This Is a Sentence")
        XCTAssertEqual(outputs[3], "This Is a Sentence. And another One.")
        XCTAssertEqual(outputs[4], "The Fox Jumped over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: MLATitleCase())
            }
        }
    }

    func testNYTTitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: NYTTitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This Is a Sentence")
        XCTAssertEqual(outputs[3], "This Is a Sentence. And Another One.")
        XCTAssertEqual(outputs[4], "The Fox Jumped Over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: NYTTitleCase())
            }
        }
    }

    func testWikipediaTitleCase() throws {
        let inputs = ["Hello, World.", "3.14", "this is a sentence", "THIS IS A SENTENCE. AND ANOTHER ONE.", "the fox jumped over the lazy dog"]
        let outputs: [String] = performFormatterTest(format: WikipediaTitleCase(), inputs: inputs)
        XCTAssertEqual(outputs[0], "Hello, World.")
        XCTAssertEqual(outputs[1], "3.14")
        XCTAssertEqual(outputs[2], "This Is a Sentence")
        XCTAssertEqual(outputs[3], "This Is a Sentence. And Another One.")
        XCTAssertEqual(outputs[4], "The Fox Jumped Over the Lazy Dog")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: WikipediaTitleCase())
            }
        }
    }
}
