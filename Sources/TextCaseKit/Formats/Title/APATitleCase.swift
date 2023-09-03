import Foundation

public final class APATitleCase: BaseTitleCase, Format {
    public var name: String = "APA Title"
    public var description: String = "Format text as a title using APA style."
    public var id: String = "apaTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: false,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: ["a", "an", "the"],
                                                   capitaliseAllPrepositionsLongerThanLength: 3,
                                                   capitaliseAllConjunctionLongerThanLength: 3,
                                                   capitaliseAllAdverbsLongerThanLength: 0,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: 0,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: 3)
        super.init(configuration: configuration)
    }
}
