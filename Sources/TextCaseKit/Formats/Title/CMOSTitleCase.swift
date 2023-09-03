import Foundation

public final class CMOSTitleCase: BaseTitleCase, Format {
    public var name: String = "CMOSTitle"
    public var description: String = "Format text as a title using Chigaco Manual of Style."
    public var id: String = "cmosTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: true,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: [
                                                       "a",
                                                       "an",
                                                       "the",
                                                       "and",
                                                       "but",
                                                       "for",
                                                       "or",
                                                       "nor",
                                                       "as",
                                                   ],
                                                   capitaliseAllPrepositionsLongerThanLength: 20,
                                                   capitaliseAllConjunctionLongerThanLength: 20,
                                                   capitaliseAllAdverbsLongerThanLength: 0,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: 0,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: nil)
        super.init(configuration: configuration)
    }
}
