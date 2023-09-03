import Foundation

public final class APTitleCase: BaseTitleCase, Format {
    public var name: String = "AP Title"
    public var description: String = "Format text as a title using AP style."
    public var id: String = "apTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: true,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: ["a", "an", "the"],
                                                   capitaliseAllPrepositionsLongerThanLength: 3,
                                                   capitaliseAllConjunctionLongerThanLength: 3,
                                                   capitaliseAllAdverbsLongerThanLength: nil,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: nil,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: 3)
        super.init(configuration: configuration)
    }
}
