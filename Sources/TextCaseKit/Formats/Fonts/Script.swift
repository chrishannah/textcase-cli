import Foundation

public final class Script: Format {
    public var name: String = "Script"
    public var id: String = "script"
    public var description: String = "Script style characters."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩīĭįıĳĵķĸĺ\
        ļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚ\
        ÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏µß𝒶̀𝒶́𝒶̂𝒶̃𝒶̈𝒶̊æ𝒸̧ℯ̀ℯ́ℯ̂ℯ̈ı̀𝒾́𝒾̂𝒾̈ð𝓃̃ℴ̀ℴ́ℴ̂ℴ̃ℴ̈ø𝓊̀𝓊́𝓊̂𝓊̈𝓎́þ𝓎̈𝒶̄𝒶̆𝒶̨𝒸́𝒸̂𝒸̇𝒸̌𝒹̌đℯ̄ℯ̆ℯ̇ℯ̨ℯ̌ℊ̂ℊ̆ℊ̇ℊ̧𝒽̂ħ\
        𝒾̃𝒾̄𝒾̆𝒾̨ıĳ𝒿̂𝓀̧ĸ𝓁́𝓁̧𝓁̌𝓁ł𝓃́𝓃̧𝓃̌ŉŋℴ̄ℴ̆ℴ̋œ𝓇́𝓇̧𝓇̌𝓈́𝓈̂𝓈̧𝓈̌𝓉̧𝓉̌ŧ𝓊̃𝓊̄𝓊̆𝓊̊𝓊̋𝓊̨𝓌̂𝓎̂𝓏́𝓏̇𝓏̌𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵Μ𝒮𝒮𝒜̀𝒜́𝒜̂\
        𝒜̃𝒜̈𝒜̊Æ𝒞̧ℰ̀ℰ́ℰ̂ℰ̈ℐ̀ℐ́ℐ̂ℐ̈Ð𝒩̃𝒪̀𝒪́𝒪̂𝒪̃𝒪̈Ø𝒰̀𝒰́𝒰̂𝒰̈𝒴́Þ𝒴̈𝒜̄𝒜̆𝒜̨𝒞́𝒞̂𝒞̇𝒞̌𝒟̌Đℰ̄ℰ̆ℰ̇ℰ̨ℰ̌𝒢̂𝒢̆𝒢̇𝒢̧ℋ̂Ħℐ̃ℐ̄ℐ̆ℐ̨ℐĲ𝒥̂𝒦̧ĸℒ́ℒ̧ℒ̌ℒŁ𝒩́𝒩̧𝒩̌ʼ𝒩Ŋ𝒪̄𝒪̆\
        𝒪̋Œℛ́ℛ̧ℛ̌𝒮́𝒮̂𝒮̧𝒮̌𝒯̧𝒯̌Ŧ𝒰̃𝒰̄𝒰̆𝒰̊𝒰̋𝒰̨𝒲̂𝒴̂𝒵́𝒵̇𝒵̌
        """

    public init() {}

    public func process(_ input: String) -> String {
        FontFormatter().process(input, source: source, formatted: formatted)
    }
}
