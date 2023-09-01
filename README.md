# Text Case CLI
*A command line interface version of Text Case.*

[Text Case][tc] is a text-transformation app for iOS, iPadOS, and macOS (by me). This project is essentially a subset of the functionality, made available as a command-line tool.

## Install

You can checkout this repository and build from scratch, or to make it slightly easier, it's also available as a custom [Homebrew][hb] tap.

### Building From Source

It's pretty easy:

1. Check out the code.
2. Run `swift build -c release`.
3. You'll find the executable in `.build/release/`.

### From Homebrew

Also, incredibly easy:

0. Make sure you have Homebrew installed.
1. Add the custom tap to your machine: `brew tap chrishannah/textcase`.
2. Install Text Case CLI: `brew install textcase`

To update Text Case CLI via Homebrew, you'll first have to run `brew update` to pull the latest changes from the tap, and if there's an update available, `brew upgrade textcase` will update it to the
latest version.

## Usage

You can use Text Case CLI via the `textcase` command.

It is split into two separate subcommands, `format`, and `list-formats`.

### List Formats

You can see a list of the available formats, with `textcase list-formats`. This will show the identifier that you'll need to provide when formatting text, and also a short description.

**Help text**

```
OVERVIEW: Lists all available formats.

USAGE: text-case list-formats

OPTIONS:
  --version               Show the version.
  -h, --help              Show help information.
```

### Format Text

You can format text with the `format` subcommand. However, this is the default subcommand, so it can also be omitted, with the same result.

**Input**

Input text can be passed via STDIN, as a string with the input-text option, or from a file by passing the parth.

**Output**

The text is writted to STDOUT by default. But you can also specify a file that can be written to instead.

**Help Text**

```
OVERVIEW: Format text into a specified format.

USAGE: text-case format --format <format> [--input <input>] [--input-file <file>] [--output-file <file>]

OPTIONS:
  -f, --format <format>   Format to be used.
  -i, --input <input>     Text to be formatted.
  --input-file <file>     Path of file to be used as input.
  --output-file <file>    Path of file to be used as output.
  --version               Show the version.
  -h, --help              Show help information.
```

[tc]: http://textcase.app
[hb]: https://brew.sh
