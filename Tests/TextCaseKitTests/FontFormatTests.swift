import TextCaseKit
import XCTest

final class FontFormatTests: FormatTestBase {
    func testBoldSansSerif() throws {
        let outputs: [String] = performFormatterTest(format: BoldSansSerif())
        XCTAssertEqual(outputs[0], "𝗛𝗲𝗹𝗹𝗼, 𝗪𝗼𝗿𝗹𝗱")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝗧𝗲𝘀𝘁 𝘀𝗲𝗻𝘁𝗲𝗻𝗰𝗲. 𝘁𝗲𝘀𝘁 𝘀𝗲𝗻𝘁𝗲𝗻𝗰𝗲.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝗔𝗕𝗖")
        XCTAssertEqual(outputs[5], "𝘀𝗻𝗮𝗸𝗲_𝗰𝗮𝘀𝗲")
        XCTAssertEqual(outputs[6], "𝗧𝗵𝗶𝘀 𝗶𝘀 𝗮 𝘀𝗲𝗻𝘁𝗲𝗻𝗰𝗲.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: BoldSansSerif())
            }
        }
    }

    func testBoldSerif() throws {
        let outputs: [String] = performFormatterTest(format: BoldSerif())
        XCTAssertEqual(outputs[0], "𝐇𝐞𝐥𝐥𝐨, 𝐖𝐨𝐫𝐥𝐝")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝐓𝐞𝐬𝐭 𝐬𝐞𝐧𝐭𝐞𝐧𝐜𝐞. 𝐭𝐞𝐬𝐭 𝐬𝐞𝐧𝐭𝐞𝐧𝐜𝐞.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝐀𝐁𝐂")
        XCTAssertEqual(outputs[5], "𝐬𝐧𝐚𝐤𝐞_𝐜𝐚𝐬𝐞")
        XCTAssertEqual(outputs[6], "𝐓𝐡𝐢𝐬 𝐢𝐬 𝐚 𝐬𝐞𝐧𝐭𝐞𝐧𝐜𝐞.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: BoldSerif())
            }
        }
    }

    func testGothic() throws {
        let outputs: [String] = performFormatterTest(format: Gothic())
        XCTAssertEqual(outputs[0], "ℌ𝔢𝔩𝔩𝔬, 𝔚𝔬𝔯𝔩𝔡")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝔗𝔢𝔰𝔱 𝔰𝔢𝔫𝔱𝔢𝔫𝔠𝔢. 𝔱𝔢𝔰𝔱 𝔰𝔢𝔫𝔱𝔢𝔫𝔠𝔢.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝔄𝔅ℭ")
        XCTAssertEqual(outputs[5], "𝔰𝔫𝔞𝔨𝔢_𝔠𝔞𝔰𝔢")
        XCTAssertEqual(outputs[6], "𝔗𝔥𝔦𝔰 𝔦𝔰 𝔞 𝔰𝔢𝔫𝔱𝔢𝔫𝔠𝔢.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: Gothic())
            }
        }
    }

    func testItalic() throws {
        let outputs: [String] = performFormatterTest(format: Italic())
        XCTAssertEqual(outputs[0], "𝘏𝘦𝘭𝘭𝘰, 𝘞𝘰𝘳𝘭𝘥")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝘛𝘦𝘴𝘵 𝘴𝘦𝘯𝘵𝘦𝘯𝘤𝘦. 𝘵𝘦𝘴𝘵 𝘴𝘦𝘯𝘵𝘦𝘯𝘤𝘦.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝘈𝘉𝘊")
        XCTAssertEqual(outputs[5], "𝘴𝘯𝘢𝘬𝘦_𝘤𝘢𝘴𝘦")
        XCTAssertEqual(outputs[6], "𝘛𝘩𝘪𝘴 𝘪𝘴 𝘢 𝘴𝘦𝘯𝘵𝘦𝘯𝘤𝘦.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: Italic())
            }
        }
    }

    func testItalicBoldSansSerif() throws {
        let outputs: [String] = performFormatterTest(format: ItalicBoldSansSerif())
        XCTAssertEqual(outputs[0], "𝙃𝙚𝙡𝙡𝙤, 𝙒𝙤𝙧𝙡𝙙")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝙏𝙚𝙨𝙩 𝙨𝙚𝙣𝙩𝙚𝙣𝙘𝙚. 𝙩𝙚𝙨𝙩 𝙨𝙚𝙣𝙩𝙚𝙣𝙘𝙚.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝘼𝘽𝘾")
        XCTAssertEqual(outputs[5], "𝙨𝙣𝙖𝙠𝙚_𝙘𝙖𝙨𝙚")
        XCTAssertEqual(outputs[6], "𝙏𝙝𝙞𝙨 𝙞𝙨 𝙖 𝙨𝙚𝙣𝙩𝙚𝙣𝙘𝙚.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: ItalicBoldSansSerif())
            }
        }
    }

    func testItalicBoldSerif() throws {
        let outputs: [String] = performFormatterTest(format: ItalicBoldSerif())
        XCTAssertEqual(outputs[0], "𝑯𝒆𝒍𝒍𝒐, 𝑾𝒐𝒓𝒍𝒅")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝑻𝒆𝒔𝒕 𝒔𝒆𝒏𝒕𝒆𝒏𝒄𝒆. 𝒕𝒆𝒔𝒕 𝒔𝒆𝒏𝒕𝒆𝒏𝒄𝒆.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝑨𝑩𝑪")
        XCTAssertEqual(outputs[5], "𝒔𝒏𝒂𝒌𝒆_𝒄𝒂𝒔𝒆")
        XCTAssertEqual(outputs[6], "𝑻𝒉𝒊𝒔 𝒊𝒔 𝒂 𝒔𝒆𝒏𝒕𝒆𝒏𝒄𝒆.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: ItalicBoldSerif())
            }
        }
    }

    func testLettersInCirclesFilled() throws {
        let outputs: [String] = performFormatterTest(format: LettersInCirclesFilled())
        XCTAssertEqual(outputs[0], "🅗🅔🅛🅛🅞, 🅦🅞🅡🅛🅓")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "🅣🅔🅢🅣 🅢🅔🅝🅣🅔🅝🅒🅔. 🅣🅔🅢🅣 🅢🅔🅝🅣🅔🅝🅒🅔.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "🅐🅑🅒")
        XCTAssertEqual(outputs[5], "🅢🅝🅐🅚🅔_🅒🅐🅢🅔")
        XCTAssertEqual(outputs[6], "🅣🅗🅘🅢 🅘🅢 🅐 🅢🅔🅝🅣🅔🅝🅒🅔.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: LettersInCirclesFilled())
            }
        }
    }

    func testLettersInCirclesOutline() throws {
        let outputs: [String] = performFormatterTest(format: LettersInCirclesOutline())
        XCTAssertEqual(outputs[0], "Ⓗⓔⓛⓛⓞ, Ⓦⓞⓡⓛⓓ")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "Ⓣⓔⓢⓣ ⓢⓔⓝⓣⓔⓝⓒⓔ. ⓣⓔⓢⓣ ⓢⓔⓝⓣⓔⓝⓒⓔ.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "ⒶⒷⒸ")
        XCTAssertEqual(outputs[5], "ⓢⓝⓐⓚⓔ_ⓒⓐⓢⓔ")
        XCTAssertEqual(outputs[6], "Ⓣⓗⓘⓢ ⓘⓢ ⓐ ⓢⓔⓝⓣⓔⓝⓒⓔ.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: LettersInCirclesOutline())
            }
        }
    }

    func testLettersInSquaresFilled() throws {
        let outputs: [String] = performFormatterTest(format: LettersInSquaresFilled())
        XCTAssertEqual(outputs[0], "🅷🅴🅻🅻🅾, 🆆🅾🆁🅻🅳")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "🆃🅴🆂🆃 🆂🅴🅽🆃🅴🅽🅲🅴. 🆃🅴🆂🆃 🆂🅴🅽🆃🅴🅽🅲🅴.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "🅰🅱🅲")
        XCTAssertEqual(outputs[5], "🆂🅽🅰🅺🅴_🅲🅰🆂🅴")
        XCTAssertEqual(outputs[6], "🆃🅷🅸🆂 🅸🆂 🅰 🆂🅴🅽🆃🅴🅽🅲🅴.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: LettersInSquaresFilled())
            }
        }
    }

    func testLettersInSquaresOutline() throws {
        let outputs: [String] = performFormatterTest(format: LettersInSquaresOutline())
        XCTAssertEqual(outputs[0], "🄷🄴🄻🄻🄾, 🅆🄾🅁🄻🄳")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "🅃🄴🅂🅃 🅂🄴🄽🅃🄴🄽🄲🄴. 🅃🄴🅂🅃 🅂🄴🄽🅃🄴🄽🄲🄴.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "🄰🄱🄲")
        XCTAssertEqual(outputs[5], "🅂🄽🄰🄺🄴_🄲🄰🅂🄴")
        XCTAssertEqual(outputs[6], "🅃🄷🄸🅂 🄸🅂 🄰 🅂🄴🄽🅃🄴🄽🄲🄴.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: LettersInSquaresOutline())
            }
        }
    }

    func testScript() throws {
        let outputs: [String] = performFormatterTest(format: Script())
        XCTAssertEqual(outputs[0], "ℋℯ𝓁𝓁ℴ, 𝒲ℴ𝓇𝓁𝒹")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "𝒯ℯ𝓈𝓉 𝓈ℯ𝓃𝓉ℯ𝓃𝒸ℯ. 𝓉ℯ𝓈𝓉 𝓈ℯ𝓃𝓉ℯ𝓃𝒸ℯ.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "𝒜ℬ𝒞")
        XCTAssertEqual(outputs[5], "𝓈𝓃𝒶𝓀ℯ_𝒸𝒶𝓈ℯ")
        XCTAssertEqual(outputs[6], "𝒯𝒽𝒾𝓈 𝒾𝓈 𝒶 𝓈ℯ𝓃𝓉ℯ𝓃𝒸ℯ.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: Script())
            }
        }
    }

    func testStrikethrough() throws {
        let outputs: [String] = performFormatterTest(format: Strikethrough())
        XCTAssertEqual(outputs[0], "H̶e̶l̶l̶o̶, W̶o̶r̶l̶d̶")
        XCTAssertEqual(outputs[1], "123456")
        XCTAssertEqual(outputs[2], "T̶e̶s̶t̶ s̶e̶n̶t̶e̶n̶c̶e̶. t̶e̶s̶t̶ s̶e̶n̶t̶e̶n̶c̶e̶.")
        XCTAssertEqual(outputs[3], "3.14")
        XCTAssertEqual(outputs[4], "A̶B̶C̶")
        XCTAssertEqual(outputs[5], "s̶n̶a̶k̶e̶_c̶a̶s̶e̶")
        XCTAssertEqual(outputs[6], "T̶h̶i̶s̶ i̶s̶ a̶ s̶e̶n̶t̶e̶n̶c̶e̶.")

        measure {
            for _ in 1 ... 10 {
                _ = performFormatterTest(format: Strikethrough())
            }
        }
    }
}
