import Foundation

public final class Italic: Format {
    public var name: String = "Italic"
    public var id: String = "italic"
    public var description: String = "Italic style characters."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩī\
        ĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉÊ\
        ËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        𝘢𝘣𝘤𝘥𝘦𝘧𝘨𝘩𝘪𝘫𝘬𝘭𝘮𝘯𝘰𝘱𝘲𝘳𝘴𝘵𝘶𝘷𝘸𝘹𝘺𝘻µßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩīĭįıĳĵķĸĺļ\
        ľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżž𝘈𝘉𝘊𝘋𝘌𝘍𝘎𝘏𝘐𝘑𝘒𝘓𝘔𝘕𝘖𝘗𝘘𝘙𝘚𝘛𝘜𝘝𝘞𝘟𝘠𝘡Μ𝘚𝘚ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\
        ÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮ𝘐ĲĴĶĸĹĻĽĿŁŃŅŇʼ𝘕ŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """

    public init() {}

    public func process(_ input: String) -> String {
        FontFormatter().process(input, source: source, formatted: formatted)
    }
}
