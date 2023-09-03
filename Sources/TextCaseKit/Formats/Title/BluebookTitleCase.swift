import Foundation

public final class BluebookTitleCase: BaseTitleCase, Format {
    public var name: String = "Bluebook Title"
    public var description: String = "Format text as a title using Bluebook style."
    public var id: String = "bluebookTitle"

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
                                                   capitaliseAllPrepositionsLongerThanLength: 4,
                                                   capitaliseAllConjunctionLongerThanLength: 4,
                                                   capitaliseAllAdverbsLongerThanLength: 4,
                                                   capitaliseAllAdjectivesLongerThanLength: 4,
                                                   capitaliseAllVerbsLongerThanLength: 4,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: 4)
        super.init(configuration: configuration)
    }
}
