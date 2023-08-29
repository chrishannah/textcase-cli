import Foundation

public final class LettersInSquaresOutline: Format {
    public var name: String = "Letters in Squares (Outline)"
    public var id: String = "lettersInSquaresOutline"
    public var description: String = "Characters inside outlined squares."

    let source =
        """
        abcdefghijklmnopqrstuvwxyzµßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿāăąćĉċčďđēĕėęěĝğġģ\
        ĥħĩīĭįıĳĵķĸĺļľŀłńņňŉŋōŏőœŕŗřśŝşšţťŧũūŭůűųŵŷźżžABCDEFGHIJKLMNOPQRSTUVWXYZΜSSÀÁÂÃÄÅÆÇÈÉÊËÌÍ\
        ÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞŸĀĂĄĆĈĊČĎĐĒĔĖĘĚĜĞĠĢĤĦĨĪĬĮIĲĴĶĸĹĻĽĿŁŃŅŇʼNŊŌŎŐŒŔŖŘŚŜŞŠŢŤŦŨŪŬŮŰŲŴŶŹŻŽ
        """
    let formatted =
        """
        🄰🄱🄲🄳🄴🄵🄶🄷🄸🄹🄺🄻🄼🄽🄾🄿🅀🅁🅂🅃🅄🅅🅆🅇🅈🅉µß🄰̀🄰🄰̂🄰̃🄰̈🄰̊æ🄲̧🄴̀🄴🄴̂🄴̈ı̀🄸🄸̂🄸̈ð🄽̃🄾̀🄾🄾̂🄾̃🄾̈\
        ø🅄̀🅄🅄̂🅄̈🅈þ🅈̈🄰🄰̆🄰̨🄲🄲̂🄲̇🄲̌🄳̌đ🄴🄴̆🄴̇🄴̨🄴̌🄶̂🄶̆🄶̇🄶̧🄷̂ħ🄸̃🄸🄸̆🄸̨ıĳ🄹̂🄺̧ĸ🄻🄻̧🄻̌🄻ł🄽🄽̧🄽̌ŉŋ🄾🄾̆🄾̋œ🅁🅁̧🅁̌🅂🅂̂🅂̧🅂̌🅃̧🅃̌\
        ŧ🅄̃🅄🅄̆🅄̊🅄̋🅄̨🅆̂🅈̂🅉🅉̇🅉̌🄰🄱🄲🄳🄴🄵🄶🄷🄸🄹🄺🄻🄼🄽🄾🄿🅀🅁🅂🅃🅄🅅🅆🅇🅈🅉Μ🅂🅂🄰̀🄰🄰̂🄰̃🄰̈🄰̊Æ🄲̧🄴̀🄴🄴̂🄴̈🄸̀🄸🄸̂🄸̈\
        Ð🄽̃🄾̀🄾🄾̂🄾̃🄾̈Ø🅄̀🅄🅄̂🅄̈🅈Þ🅈̈🄰🄰̆🄰̨🄲🄲̂🄲̇🄲̌🄳̌Đ🄴🄴̆🄴̇🄴̨🄴̌🄶̂🄶̆🄶̇🄶̧🄷̂Ħ🄸̃🄸🄸̆🄸̨🄸Ĳ🄹̂🄺̧ĸ🄻🄻̧🄻̌🄻Ł🄽🄽̧🄽̌ʼ🄽Ŋ🄾🄾̆🄾̋Œ🅁\
        🅁̧🅁̌🅂🅂̂🅂̧🅂̌🅃̧🅃̌Ŧ🅄̃🅄🅄̆🅄̊🅄̋🅄̨🅆̂🅈̂🅉🅉̇🅉̌
        """

    public init() {}

    public func process(_ input: String) -> String {
        FontFormatter().process(input, source: source, formatted: formatted)
    }
}
