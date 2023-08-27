import Foundation

public final class LettersInCirclesFilled: Format {
    public var name: String = "Letters in Circles (Filled)"
    public var id: String = "lettersInCirclesFilled"
    public var description: String = "Characters inside filled circles."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęě\
        ĝğġģĥħĩīĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂ\
        ÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦ\
        ŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        🅐🅑🅒🅓🅔🅕🅖🅗🅘🅙🅚🅛🅜🅝🅞🅟🅠🅡🅢🅣🅤🅥🅦🅧🅨🅩µß🅐̀🅐🅐̂🅐̃🅐̈🅐̊æ🅒̧🅔̀🅔🅔̂🅔̈ı̀🅘🅘̂🅘̈ð🅝̃🅞̀🅞\
        🅞̂🅞̃🅞̈ø🅤̀🅤🅤̂🅤̈🅨þ🅨̈🅐🅐̆🅐̨🅒🅒̂🅒̇🅒̌🅓̌đ🅔🅔̆🅔̇🅔̨🅔̌🅖̂🅖̆🅖̇🅖̧🅗̂ħ🅘̃🅘🅘̆🅘̨ıĳ🅙̂🅚̧ĸ🅛🅛̧🅛̌🅛ł🅝🅝̧🅝̌ŉŋ🅞🅞̆🅞̋œ🅡🅡̧\
        🅡̌🅢🅢̂🅢̧🅢̌🅣̧🅣̌ŧ🅤̃🅤🅤̆🅤̊🅤̋🅤̨🅦̂🅨̂🅩🅩̇🅩̌🅐🅑🅒🅓🅔🅕🅖🅗🅘🅙🅚🅛🅜🅝🅞🅟🅠🅡🅢🅣🅤🅥🅦🅧🅨🅩Μ🅢🅢🅐̀🅐🅐̂🅐̃\
        🅐̈🅐̊Æ🅒̧🅔̀🅔🅔̂🅔̈🅘̀🅘🅘̂🅘̈Ð🅝̃🅞̀🅞🅞̂🅞̃🅞̈Ø🅤̀🅤🅤̂🅤̈🅨Þ🅨̈🅐🅐̆🅐̨🅒🅒̂🅒̇🅒̌🅓̌Đ🅔🅔̆🅔̇🅔̨🅔̌🅖̂🅖̆🅖̇🅖̧🅗̂Ħ🅘̃🅘🅘̆🅘̨🅘Ĳ🅙̂\
        🅚̧ĸ🅛🅛̧🅛̌🅛Ł🅝🅝̧🅝̌ʼ🅝Ŋ🅞🅞̆🅞̋Œ🅡🅡̧🅡̌🅢🅢̂🅢̧🅢̌🅣̧🅣̌Ŧ🅤̃🅤🅤̆🅤̊🅤̋🅤̨🅦̂🅨̂🅩🅩̇🅩̌
        """

    public init() {}

    public func process(_ input: String) -> String {
        FontFormatter().process(input, source: source, formatted: formatted)
    }
}
