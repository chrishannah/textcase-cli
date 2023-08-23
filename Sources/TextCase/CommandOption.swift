import Foundation

struct CommandOption {
    let description: String
    let short: String
    let long: String
    let handler: () -> Void
}
