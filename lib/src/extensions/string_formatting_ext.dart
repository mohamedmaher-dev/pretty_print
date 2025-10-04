import '../../pretty_print.dart';

/// Extension methods on [String] for text formatting and layout.
///
/// This extension provides convenient methods for formatting text with
/// borders, boxes, headers, separators, and other layout elements.
///
/// ## Usage
///
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Formatting methods
/// "Title".header();
/// "Content".box();
/// "".separator();
/// "Left aligned".leftAlign(20);
/// "Centered".center(20);
/// ```
extension StringFormattingExt on String {
  /// Prints the string as a header with decorative borders.
  ///
  /// Example usage:
  /// ```dart
  /// "Application Title".header();
  /// ```
  void header([PrintColor color = PrintColor.cyan]) {
    final border = "=" * (length + 4);
    PrettyPrint.log(border, textColor: color, textWeight: TextWeight.bold);
    PrettyPrint.log(
      "  $this  ",
      textColor: PrintColor.white,
      backColor: color,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(border, textColor: color, textWeight: TextWeight.bold);
  }

  /// Prints the string inside a box with borders.
  ///
  /// Example usage:
  /// ```dart
  /// "Important message".box();
  /// ```
  void box([PrintColor borderColor = PrintColor.white]) {
    final width = length + 4;
    final topBorder = "┌${"─" * (width - 2)}┐";
    final bottomBorder = "└${"─" * (width - 2)}┘";

    PrettyPrint.log(topBorder, textColor: borderColor);
    PrettyPrint.log("│ $this │", textColor: borderColor);
    PrettyPrint.log(bottomBorder, textColor: borderColor);
  }

  /// Prints the string inside a double-line box.
  ///
  /// Example usage:
  /// ```dart
  /// "Critical alert".doubleBox();
  /// ```
  void doubleBox([PrintColor borderColor = PrintColor.red]) {
    final width = length + 4;
    final topBorder = "╔${"═" * (width - 2)}╗";
    final bottomBorder = "╚${"═" * (width - 2)}╝";

    PrettyPrint.log(
      topBorder,
      textColor: borderColor,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(
      "║ $this ║",
      textColor: borderColor,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(
      bottomBorder,
      textColor: borderColor,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints a separator line. If string is empty, prints a default separator.
  ///
  /// Example usage:
  /// ```dart
  /// "".separator();
  /// "Section Break".separator();
  /// ```
  void separator([PrintColor color = PrintColor.white, int width = 50]) {
    if (isEmpty) {
      PrettyPrint.log("─" * width, textColor: color);
    } else {
      final padding = (width - length - 2) ~/ 2;
      final leftPad = "─" * padding;
      final rightPad = "─" * (width - length - 2 - padding);
      PrettyPrint.log("$leftPad $this $rightPad", textColor: color);
    }
  }

  /// Prints the string left-aligned within the specified width.
  ///
  /// Example usage:
  /// ```dart
  /// "Left aligned".leftAlign(20);
  /// ```
  void leftAlign(int width, [PrintColor color = PrintColor.none]) {
    final padded = padRight(width);
    PrettyPrint.log(padded, textColor: color);
  }

  /// Prints the string right-aligned within the specified width.
  ///
  /// Example usage:
  /// ```dart
  /// "Right aligned".rightAlign(20);
  /// ```
  void rightAlign(int width, [PrintColor color = PrintColor.none]) {
    final padded = padLeft(width);
    PrettyPrint.log(padded, textColor: color);
  }

  /// Prints the string centered within the specified width.
  ///
  /// Example usage:
  /// ```dart
  /// "Centered text".center(20);
  /// ```
  void center(int width, [PrintColor color = PrintColor.none]) {
    if (length >= width) {
      PrettyPrint.log(this, textColor: color);
      return;
    }

    final padding = (width - length) ~/ 2;
    final leftPad = " " * padding;
    final rightPad = " " * (width - length - padding);
    PrettyPrint.log("$leftPad$this$rightPad", textColor: color);
  }

  /// Prints the string as a bullet point.
  ///
  /// Example usage:
  /// ```dart
  /// "First item".bullet();
  /// "Second item".bullet("→");
  /// ```
  void bullet([String bulletChar = "•", PrintColor color = PrintColor.none]) {
    PrettyPrint.log("$bulletChar $this", textColor: color);
  }

  /// Prints the string as a numbered list item.
  ///
  /// Example usage:
  /// ```dart
  /// "First step".numbered(1);
  /// ```
  void numbered(int number, [PrintColor color = PrintColor.none]) {
    PrettyPrint.log("$number. $this", textColor: color);
  }

  /// Prints the string with indentation.
  ///
  /// Example usage:
  /// ```dart
  /// "Indented text".indent(4);
  /// ```
  void indent(int spaces, [PrintColor color = PrintColor.none]) {
    final indentation = " " * spaces;
    PrettyPrint.log("$indentation$this", textColor: color);
  }

  /// Prints the string as a quote with quotation marks.
  ///
  /// Example usage:
  /// ```dart
  /// "To be or not to be".quote();
  /// ```
  void quote([PrintColor color = PrintColor.cyan]) {
    PrettyPrint.log('"$this"', textColor: color, textItalic: TextItalic.italic);
  }

  /// Prints the string as a code block with monospace styling.
  ///
  /// Example usage:
  /// ```dart
  /// "console.log('Hello World')".code();
  /// ```
  void code([PrintColor color = PrintColor.green]) {
    PrettyPrint.log("`$this`", textColor: color, backColor: PrintColor.black);
  }

  /// Prints the string with a prefix and custom styling.
  ///
  /// Example usage:
  /// ```dart
  /// "Server started".withPrefix("✓", PrintColor.green);
  /// ```
  void withPrefix(String prefix, [PrintColor color = PrintColor.none]) {
    PrettyPrint.log("$prefix $this", textColor: color);
  }

  /// Prints the string with a suffix and custom styling.
  ///
  /// Example usage:
  /// ```dart
  /// "Loading".withSuffix("...", PrintColor.yellow);
  /// ```
  void withSuffix(String suffix, [PrintColor color = PrintColor.none]) {
    PrettyPrint.log("$this$suffix", textColor: color);
  }
}
