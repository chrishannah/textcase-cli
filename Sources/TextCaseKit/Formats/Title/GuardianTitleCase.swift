import Foundation

public final class GuardianTitleCase: BaseTitleCase, Format {
    public var name: String = "Guardian Title"
    public var description: String = "Format text as a title using The Guardian style."
    public var id: String = "guardianTitle"

    public init() {
        let configuration = TitleCaseConfiguration(shouldIgnoreLinguisticTagger: true,
                                                   shouldCapitaliseFirstWord: true,
                                                   shouldCapitaliseLastWord: false,
                                                   shouldCapitaliseAfterEndPunctionation: true,
                                                   wordsToAlwaysBeCapitalised: [],
                                                   wordsToNeverBeCapitalised: [
                                                       "a",
                                                       "an",
                                                       "and",
                                                       "at",
                                                       "for",
                                                       "from",
                                                       "in",
                                                       "of",
                                                       "on",
                                                       "the",
                                                       "to",
                                                   ],
                                                   capitaliseAllPrepositionsLongerThanLength: nil,
                                                   capitaliseAllConjunctionLongerThanLength: nil,
                                                   capitaliseAllAdverbsLongerThanLength: nil,
                                                   capitaliseAllAdjectivesLongerThanLength: nil,
                                                   capitaliseAllVerbsLongerThanLength: nil,
                                                   shouldCapitalisePronouns: true,
                                                   shouldCapitaliseAllWordsAboveLength: nil)
        super.init(configuration: configuration)
    }
}
