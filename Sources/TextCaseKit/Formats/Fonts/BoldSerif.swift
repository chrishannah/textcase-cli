import Foundation

public final class BoldSerif: Format {
    public var name: String = "Bold (Serif)"
    public var id: String = "boldSerif"
    public var description: String = "Bold serif style characters."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩīĭįıĳĵķĸĺļľŀłńņňŉŋō\
        ŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦ\
        ĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳µßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩīĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗř\
        śŝşšţťŧũūŭůűųŵŷźżž𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙Μ𝐒𝐒ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬ\
        Į𝐈ĲĴĶĸĹĻĽĿŁŃŅŇʼ𝐍ŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
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
