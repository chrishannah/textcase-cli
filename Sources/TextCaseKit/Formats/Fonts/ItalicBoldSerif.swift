import Foundation

public final class ItalicBoldSerif: Format {
    public var name: String = "ItalicBoldSerif"
    public var id: String = "italicBoldSerif"
    public var description: String = "Italic bold serif style characters."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģ\
        ĥħĩīĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉ\
        ÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛µßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩī\
        ĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżž𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁Μ𝑺𝑺ÀÁÂÃÄÅÆÇÈÉ\
        ÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮ𝑰ĲĴĶĸĹĻĽĿŁŃŅŇʼ𝑵ŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """

    public init() {}

    public func process(_ input: String) -> String {
        FontFormatter().process(input, source: source, formatted: formatted)
    }
}
