import '../../pretty_print.dart';

/// Extension methods on [String] for styling and formatting text output.
///
/// This extension provides convenient methods to apply various text styling
/// options like bold, italic, underline, strikethrough, and blinking effects.
///
/// ## Usage
///
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Text styling
/// "Bold text".bold();
/// "Italic text".italic();
/// "Underlined text".underline();
/// "Strikethrough text".lineThrough();
/// "Blinking text".blink();
/// ```
extension StringStylingExt on String {
  /// Prints the string in bold text.
  ///
  /// Example usage:
  /// ```dart
  /// "Important message".bold();
  /// ```
  void bold([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(this, textWeight: TextWeight.bold, textColor: color);
  }

  /// Prints the string in italic text.
  ///
  /// Example usage:
  /// ```dart
  /// "Emphasized text".italic();
  /// ```
  void italic([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(this, textItalic: TextItalic.italic, textColor: color);
  }

  /// Prints the string with underline decoration.
  ///
  /// Example usage:
  /// ```dart
  /// "Important link".underline();
  /// ```
  void underline([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(
      this,
      textUnderline: TextUnderLine.underline,
      textColor: color,
    );
  }

  /// Prints the string with strikethrough (line-through) decoration.
  ///
  /// Example usage:
  /// ```dart
  /// "Deprecated feature".lineThrough();
  /// ```
  void lineThrough([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(
      this,
      textThroughLine: TextThroughLine.lineThrough,
      textColor: color,
    );
  }

  /// Prints the string with slow blinking effect.
  ///
  /// Example usage:
  /// ```dart
  /// "Attention required".blink();
  /// ```
  void blink([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(this, textBlink: TextBlink.slowBlink, textColor: color);
  }

  /// Prints the string with fast blinking effect.
  ///
  /// Example usage:
  /// ```dart
  /// "Urgent notification".fastBlink();
  /// ```
  void fastBlink([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(this, textBlink: TextBlink.fastBlink, textColor: color);
  }

  /// Prints the string with semi-transparent (dim) effect.
  ///
  /// Example usage:
  /// ```dart
  /// "Secondary information".dim();
  /// ```
  void dim([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(this, textBlink: TextBlink.semiOpacity, textColor: color);
  }

  /// Hides the string (makes it invisible).
  ///
  /// Example usage:
  /// ```dart
  /// "Secret information".hide();
  /// ```
  void hide() {
    PrettyPrint.log(this, textBlink: TextBlink.hide);
  }

  /// Prints the string with combined bold and underline styling.
  ///
  /// Example usage:
  /// ```dart
  /// "Header text".boldUnderline();
  /// ```
  void boldUnderline([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(
      this,
      textWeight: TextWeight.bold,
      textUnderline: TextUnderLine.underline,
      textColor: color,
    );
  }

  /// Prints the string with combined italic and underline styling.
  ///
  /// Example usage:
  /// ```dart
  /// "Book title".italicUnderline();
  /// ```
  void italicUnderline([PrintColor color = PrintColor.none]) {
    PrettyPrint.log(
      this,
      textItalic: TextItalic.italic,
      textUnderline: TextUnderLine.underline,
      textColor: color,
    );
  }

  /// Prints the string with all styling effects combined.
  ///
  /// Example usage:
  /// ```dart
  /// "Maximum emphasis".allEffects();
  /// ```
  void allEffects([PrintColor color = PrintColor.red]) {
    PrettyPrint.log(
      this,
      textWeight: TextWeight.bold,
      textItalic: TextItalic.italic,
      textUnderline: TextUnderLine.underline,
      textBlink: TextBlink.slowBlink,
      textColor: color,
    );
  }
}
