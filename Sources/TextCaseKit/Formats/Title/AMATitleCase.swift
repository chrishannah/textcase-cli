import Foundation

public final class AMATitleCase: BaseTitleCase, Format {
    public var name: String = "AMA Title"
    public var description: String = "Format text as a title using AMA style."
    public var id: String = "amaTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: false,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: false,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: [
                                                       "and",
                                                       "but",
                                                       "for",
                                                       "nor",
                                                       "or",
                                                       "so",
                                                       "yet",
                                                   ],
                                                   capitaliseAllPrepositionsLongerThanLength: 3,
                                                   capitaliseAllConjunctionLongerThanLength: 3,
                                                   capitaliseAllAdverbsLongerThanLength: nil,
                                                   capitaliseAllAdjectivesLongerThanLength: 0,
                                                   capitaliseAllVerbsLongerThanLength: nil,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: nil)
        super.init(configuration: configuration)
    }
}
