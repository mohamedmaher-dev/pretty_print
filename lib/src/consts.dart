/// ANSI escape sequence constants used throughout the pretty_print package.
///
/// These constants define the basic structure of ANSI escape sequences
/// for terminal text formatting and styling.
library;

/// The leading part of an ANSI escape sequence.
///
/// This is the opening sequence that starts all ANSI formatting codes.
/// Format: `\u001b[` (ESC[)
const String baseLeading = "\u001b[";

/// The trailing part of an ANSI escape sequence.
///
/// This is the reset sequence that clears all formatting and returns
/// the terminal to its default state.
/// Format: `\u001b[0m` (ESC[0m)
const String baseTrailing = "\u001b[0m";

/// Represents no value/empty string for enum options.
///
/// Used as the default value for enum options that should not apply
/// any formatting or styling to the text.
const String noneValue = '';
