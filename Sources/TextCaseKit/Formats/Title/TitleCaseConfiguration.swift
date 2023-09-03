import Foundation

struct TitleCaseConfiguration {
    let shouldIgnoreLinguisticTagger: Bool
    let shouldCapitaliseFirstWord: Bool
    let shouldCapitaliseLastWord: Bool
    let shouldCapitaliseAfterEndPunctionation: Bool
    var wordsToAlwaysBeCapitalised: [String]
    let wordsToNeverBeCapitalised: [String]
    let capitaliseAllPrepositionsLongerThanLength: Int?
    let capitaliseAllConjunctionLongerThanLength: Int?
    let capitaliseAllAdverbsLongerThanLength: Int?
    let capitaliseAllAdjectivesLongerThanLength: Int?
    let capitaliseAllVerbsLongerThanLength: Int?
    let shouldCapitalisePronouns: Bool
    let shouldCapitaliseAllWordsAboveLength: Int?
}
