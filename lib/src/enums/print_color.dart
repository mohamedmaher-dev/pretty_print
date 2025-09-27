import '../consts.dart';

/// Enum defining available colors for text and background styling.
///
/// This enum provides ANSI color codes for terminal text formatting.
/// Each color can be used for both text color and background color.
///
/// Available colors:
/// - [black]: Black color (ANSI code 0)
/// - [red]: Red color (ANSI code 1)
/// - [green]: Green color (ANSI code 2)
/// - [yellow]: Yellow color (ANSI code 3)
/// - [blue]: Blue color (ANSI code 4)
/// - [magenta]: Magenta/Purple color (ANSI code 5)
/// - [cyan]: Cyan/Light blue color (ANSI code 6)
/// - [white]: White color (ANSI code 7)
/// - [none]: No color applied (default)
///
/// Example usage:
/// ```dart
/// // Red text
/// PrettyPrint.pprint("Error!", textColor: PrintColor.red);
///
/// // White text on red background
/// PrettyPrint.pprint("Alert!",
///   textColor: PrintColor.white,
///   backColor: PrintColor.red
/// );
/// ```
enum PrintColor {
  /// Black color (ANSI code 0)
  black(value: "0;"),

  /// Red color (ANSI code 1)
  red(value: "1;"),

  /// Green color (ANSI code 2)
  green(value: "2;"),

  /// Yellow color (ANSI code 3)
  yellow(value: "3;"),

  /// Blue color (ANSI code 4)
  blue(value: "4;"),

  /// Magenta/Purple color (ANSI code 5)
  magenta(value: "5;"),

  /// Cyan/Light blue color (ANSI code 6)
  cyan(value: "6;"),

  /// White color (ANSI code 7)
  white(value: "7;"),

  /// No color applied (default)
  none(value: noneValue);

  /// The ANSI escape code value for this color
  final String value;

  /// Creates a [PrintColor] with the specified ANSI [value]
  const PrintColor({required this.value});
}
