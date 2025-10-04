import '../consts.dart';

/// Enum defining text weight options for terminal output.
///
/// Controls the boldness of the text using ANSI escape codes.
///
/// Available options:
/// - [normal]: Normal text weight (ANSI code 0)
/// - [bold]: Bold text weight (ANSI code 1)
/// - [none]: No text weight modification (default)
///
/// Example:
/// ```dart
/// PrettyPrint.log("Bold text", textWeight: TextWeight.bold);
/// ```
enum TextWeight {
  /// Normal text weight (ANSI code 0)
  normal(value: "0;"),

  /// Bold text weight (ANSI code 1)
  bold(value: "1;"),

  /// No text weight modification (default)
  none(value: noneValue);

  /// The ANSI escape code value for this text weight
  final String value;

  /// Creates a [TextWeight] with the specified ANSI [value]
  const TextWeight({required this.value});
}

/// Enum defining text blinking and opacity effects for terminal output.
///
/// Provides various visual effects including opacity changes and blinking animations
/// using ANSI escape codes.
///
/// Available effects:
/// - [semiOpacity]: Semi-transparent text (ANSI code 2)
/// - [hide]: Hidden/invisible text (ANSI code 8)
/// - [slowBlink]: Slow blinking animation (ANSI code 5)
/// - [fastBlink]: Fast blinking animation (ANSI code 6)
/// - [none]: No opacity or animation effects (default)
///
/// Example:
/// ```dart
/// PrettyPrint.log("Blinking text", textBlink: TextBlink.slowBlink);
/// ```
enum TextBlink {
  /// Semi-transparent text (ANSI code 2)
  semiOpacity(value: "2;"),

  /// Hidden/invisible text (ANSI code 8)
  hide(value: "8;"),

  /// Slow blinking animation (ANSI code 5)
  slowBlink(value: "5;"),

  /// Fast blinking animation (ANSI code 6)
  fastBlink(value: "6;"),

  /// No opacity or animation effects (default)
  none(value: noneValue);

  /// The ANSI escape code value for this effect
  final String value;

  /// Creates a [TextBlink] with the specified ANSI [value]
  const TextBlink({required this.value});
}

/// Enum defining italic text styling for terminal output.
///
/// Controls whether text appears in italic style using ANSI escape codes.
///
/// Available options:
/// - [italic]: Italic text style (ANSI code 3)
/// - [none]: No italic styling (default)
///
/// Example:
/// ```dart
/// PrettyPrint.log("Italic text", textItalic: TextItalic.italic);
/// ```
enum TextItalic {
  /// Italic text style (ANSI code 3)
  italic(value: "3;"),

  /// No italic styling (default)
  none(value: noneValue);

  /// The ANSI escape code value for this italic style
  final String value;

  /// Creates a [TextItalic] with the specified ANSI [value]
  const TextItalic({required this.value});
}

/// Enum defining underline text styling for terminal output.
///
/// Controls whether text appears with underline decoration using ANSI escape codes.
///
/// Available options:
/// - [underline]: Underlined text (ANSI code 4)
/// - [none]: No underline decoration (default)
///
/// Example:
/// ```dart
/// PrettyPrint.log("Underlined text", textUnderline: TextUnderLine.underline);
/// ```
enum TextUnderLine {
  /// Underlined text (ANSI code 4)
  underline(value: "4;"),

  /// No underline decoration (default)
  none(value: noneValue);

  /// The ANSI escape code value for this underline style
  final String value;

  /// Creates a [TextUnderLine] with the specified ANSI [value]
  const TextUnderLine({required this.value});
}

/// Enum defining line-through (strikethrough) text styling for terminal output.
///
/// Controls whether text appears with strikethrough decoration using ANSI escape codes.
///
/// Available options:
/// - [lineThrough]: Strikethrough text decoration (ANSI code 9)
/// - [none]: No strikethrough decoration (default)
///
/// Example:
/// ```dart
/// PrettyPrint.log("Crossed out text", textThroughLine: TextThroughLine.lineThrough);
/// ```
enum TextThroughLine {
  /// Strikethrough text decoration (ANSI code 9)
  lineThrough(value: "9;"),

  /// No strikethrough decoration (default)
  none(value: noneValue);

  /// The ANSI escape code value for this strikethrough style
  final String value;

  /// Creates a [TextThroughLine] with the specified ANSI [value]
  const TextThroughLine({required this.value});
}
