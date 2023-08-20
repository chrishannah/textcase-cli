# Text Case CLI
*A command line interface version of Text Case.*

[Text Case][tc] is a text-transformation app for iOS, iPadOS, and macOS. (By me)

This tool takes the core functionality of Text Case, and packages it directly inside a command line tool that is available for free.

## Download

You can download the executable from the [latest release][release].

Hopefully, this will eventually be available on Homebrew as a cask.

## Usage

```bash
textcase [-v | --version] [-l | --listFormats] [-h | --help] [--format <format>] [--input <input>]
```

### Available Formats

- Title Case (AP) - `apTitleCase`
- Title Case (APA) - `apaTitleCase`
- Title Case (Chicago) - `cmosTitleCase`
- Title Case (MLA) - `mlaTitleCase`
- Title Case (Guardian) - `guardianTitleCase`
- Title Case (Wikipedia) - `wikipediaTitleCase`
- Title Case (Bluebook) - `bluebookTitleCase`
- Title Case (New York Times) - `nytTitleCase`
- Title Case (AMA) - `amaTitleCase`
- URL Encoded - `urlEncoded`
- URL Decoded - `urlDecoded`
- Uppercase - `uppercase`
- Lowercase - `lowercase`
- Capitalise - `capitalise`
- Capitalise Words - `capitaliseWords`
- Reversed - `reversed`
- Camel Case - `camelCase`
- Snake Case - `snakeCase`
- Kebab Case - `kebabCase`
- Pascal Case - `pascalCase`
- Hashtags - `hashtags`
- Mocking Spongebob - `mockingSpongebob`
- Sentence Case - `sentenceCase`
- Strip HTML - `stripHTML`
- Base64 Encoded - `base64Encode`
- Base64 Decoded - `base64Decode`
- ROT13 - `rot13`
- Emoji - `textToEmoji`
- Clap Case - `clapCase`
- Strip Whitespace - `stripWhitespace`
- Trim Whitespace - `trimWhitespace`
- Shuffled - `shuffled`
- Markdown Blockquote - `markdownBlockquote`
- Markdown Ordered List - `markdownOrderedList`
- Markdown Unordered List - `markdownUnorderedList`
- Markdown Code Block - `markdownCodeBlock`
- Markdown to HTML - `markdownToHTML`
- Small Caps - `smallCaps`
- Upside Down - `upsideDown`
- Smart Quotes - `smartQuotes`
- Straight Quotes - `straightQuotes`
- Slug - `slug`
- Bold (Serif) - `boldSerif`
- Bold (Sans-serif) - `boldSans`
- Italic Bold (Serif) - `italicBoldSerif`
- Italic Bold (Sans-serif) - `italicBoldSans`
- Script - `script`
- Gothic - `gothic`
- Letters in Squares (Filled) - `squaresFilled`
- Letters in Squares (Outline) - `squaresOutline`
- Letters in Circles (Filled) - `circlesFilled`
- Letters in Circles (Outline) - `circlesOutline`
- Italic - `italic`
- MD2 - `md2`
- MD4 - `md4`
- MD5 - `md5`
- SHA1 - `sha1`
- SHA224 - `sha224`
- SHA256 - `sha256`
- SHA384 - `sha384`
- SHA512 - `sha512`
- Format JSON - `formatJson`
- Minify JSON - `minifyJson`
- Count Characters - `countChars`
- Count Characters (Exc. Whitespace) - `countCharsExcWhitespace`
- Count Words - `countWords`
- Count Lines - `countLines`
- Count Lines (Exc. Blanks) - `countLinesExcBlanks`
- Remove Line Breaks - `removeLineBreaks`
- Strikethrough - `strikethrough`

[tc]: http://textcase.app
[release]: https://github.com/chrishannah/textcase-cli/releases/latest
