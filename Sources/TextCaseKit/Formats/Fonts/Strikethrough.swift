import Foundation

public final class Strikethrough: Format {
    public var name: String = "Strikethrough"
    public var id: String = "strikethrough"
    public var description: String = "Strikethrough style characters."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģĥħĩīĭįıĳĵķĸĺ\
        ļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄ\
        ĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        a̶b̶c̶d̶e̶f̶g̶h̶i̶j̶k̶l̶m̶n̶o̶p̶q̶r̶s̶t̶u̶v̶w̶x̶y̶z̶µ̶ß̶à̶á̶â̶ã̶ä̶å̶æ̶ç̶è̶é̶ê̶ë̶ì̶í̶î̶ï̶ð̶ñ̶ò̶ó̶ô̶õ̶ö̶ø̶ù̶ú̶û̶ü̶ý̶þ̶ÿ̶ā̶ă̶ą̶ć̶ĉ̶ċ̶č̶ď̶đ̶ē̶ĕ̶ė̶ę̶ě̶ĝ̶ğ̶ġ̶ģ̶ĥ̶ħ̶ĩ̶ī̶ĭ̶į̶ı̶ĳ̶ĵ̶ķ̶ĸ̶ĺ̶\
        ļ̶ľ̶ŀ̶ł̶ń̶ņ̶ň̶ŉ̶ŋ̶ō̶ŏ̶ő̶œ̶ŕ̶ŗ̶ř̶ś̶ŝ̶ş̶š̶ţ̶ť̶ŧ̶ũ̶ū̶ŭ̶ů̶ű̶ų̶ŵ̶ŷ̶ź̶ż̶ž̶A̶B̶C̶D̶E̶F̶G̶H̶I̶J̶K̶L̶M̶N̶O̶P̶Q̶R̶S̶T̶U̶V̶W̶X̶Y̶Z̶Μ̶S̶S̶À̶Á̶Â̶Ã̶Ä̶Å̶Æ̶Ç̶È̶É̶Ê̶Ë̶Ì̶Í̶Î̶Ï̶Ð̶Ñ̶Ò̶Ó̶Ô̶Õ̶Ö̶Ø̶Ù̶Ú̶Û̶\
        Ü̶Ý̶Þ̶Ÿ̶Ā̶Ă̶Ą̶Ć̶Ĉ̶Ċ̶Č̶Ď̶Đ̶Ē̶Ĕ̶Ė̶Ę̶Ě̶Ĝ̶Ğ̶Ġ̶Ģ̶Ĥ̶Ħ̶Ĩ̶Ī̶Ĭ̶Į̶I̶Ĳ̶Ĵ̶Ķ̶ĸ̶Ĺ̶Ļ̶Ľ̶Ŀ̶Ł̶Ń̶Ņ̶Ň̶ʼ̶N̶Ŋ̶Ō̶Ŏ̶Ő̶Œ̶Ŕ̶Ŗ̶Ř̶Ś̶Ŝ̶Ş̶Š̶Ţ̶Ť̶Ŧ̶Ũ̶Ū̶Ŭ̶Ů̶Ű̶Ų̶Ŵ̶Ŷ̶Ź̶Ż̶Ž̶
        """

    public init() {}

    public func process(_ input: String) -> String {
        FontFormatter().process(input, source: source, formatted: formatted)
    }
}
