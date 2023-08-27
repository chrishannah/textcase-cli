import Foundation

public final class Gothic: Format {
    public var name: String = "Gothic"
    public var id: String = "gothic"
    public var description: String = "Gothic style characters."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩī\
        ĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\
        ÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷µß𝔞̀𝔞́𝔞̂𝔞̃𝔞̈𝔞̊æ𝔠̧𝔢̀𝔢́𝔢̂𝔢̈ı̀𝔦́𝔦̂𝔦̈ð𝔫̃𝔬̀𝔬́𝔬̂𝔬̃𝔬̈ø𝔲̀𝔲́𝔲̂𝔲̈𝔶́þ𝔶̈𝔞̄𝔞̆𝔞̨𝔠́𝔠̂𝔠̇𝔠̌𝔡̌đ𝔢̄𝔢̆𝔢̇𝔢̨𝔢̌𝔤̂𝔤̆𝔤̇𝔤̧𝔥̂ħ𝔦̃𝔦̄𝔦̆𝔦̨ıĳ𝔧̂𝔨̧ĸ𝔩́𝔩̧𝔩̌𝔩ł𝔫́𝔫̧𝔫̌ŉŋ𝔬̄𝔬̆𝔬̋œ\
        𝔯́𝔯̧𝔯̌𝔰́𝔰̂𝔰̧𝔰̌𝔱̧𝔱̌ŧ𝔲̃𝔲̄𝔲̆𝔲̊𝔲̋𝔲̨𝔴̂𝔶̂𝔷́𝔷̇𝔷̌𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨΜ𝔖𝔖𝔄̀𝔄́𝔄̂𝔄̃𝔄̈𝔄̊Æℭ̧𝔈̀𝔈́𝔈̂𝔈̈ℑ̀ℑ́ℑ̂ℑ̈Ð𝔑̃𝔒̀𝔒́𝔒̂𝔒̃𝔒̈Ø\
        𝔘̀𝔘́𝔘̂𝔘̈𝔜́Þ𝔜̈𝔄̄𝔄̆𝔄̨ℭ́ℭ̂ℭ̇ℭ̌𝔇̌Đ𝔈̄𝔈̆𝔈̇𝔈̨𝔈̌𝔊̂𝔊̆𝔊̇𝔊̧ℌ̂Ħℑ̃ℑ̄ℑ̆ℑ̨ℑĲ𝔍̂𝔎̧ĸ𝔏́𝔏̧𝔏̌𝔏Ł𝔑́𝔑̧𝔑̌ʼ𝔑Ŋ𝔒̄𝔒̆𝔒̋Œℜ́ℜ̧ℜ̌𝔖́𝔖̂𝔖̧𝔖̌𝔗̧𝔗̌Ŧ𝔘̃𝔘̄𝔘̆𝔘̊𝔘̋𝔘̨𝔚̂𝔜̂ℨ́ℨ̇ℨ̌
        """

    public init() {}

    public func process(_ input: String) -> String {
        guard !input.isEmpty else { return "" }
        var output = input

        for i in 0 ..< source.count {
            let sourceIndex = source.index(source.startIndex, offsetBy: i)
            let formattedIndex = formatted.index(formatted.startIndex, offsetBy: i)
            let sourceChar = source[sourceIndex]
            let formattedChar = formatted[formattedIndex]
            output = output.replacingOccurrences(of: String(sourceChar), with: String(formattedChar))
        }

        return output
    }
}
