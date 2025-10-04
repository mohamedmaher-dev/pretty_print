import '../../pretty_print.dart';

/// Extension methods on [String] for colored text output.
///
/// This extension provides convenient methods to print strings in different
/// colors, both for text and background colors.
///
/// ## Usage
///
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Text colors
/// "Red text".red();
/// "Green text".green();
/// "Blue text".blue();
///
/// // Background colors
/// "Text on red background".onRed();
/// "Text on green background".onGreen();
/// ```
extension StringColorsExt on String {
  // Text color methods

  /// Prints the string in black text.
  void black() {
    PrettyPrint.log(this, textColor: PrintColor.black);
  }

  /// Prints the string in red text.
  void red() {
    PrettyPrint.log(this, textColor: PrintColor.red);
  }

  /// Prints the string in green text.
  void green() {
    PrettyPrint.log(this, textColor: PrintColor.green);
  }

  /// Prints the string in yellow text.
  void yellow() {
    PrettyPrint.log(this, textColor: PrintColor.yellow);
  }

  /// Prints the string in blue text.
  void blue() {
    PrettyPrint.log(this, textColor: PrintColor.blue);
  }

  /// Prints the string in magenta text.
  void magenta() {
    PrettyPrint.log(this, textColor: PrintColor.magenta);
  }

  /// Prints the string in cyan text.
  void cyan() {
    PrettyPrint.log(this, textColor: PrintColor.cyan);
  }

  /// Prints the string in white text.
  void white() {
    PrettyPrint.log(this, textColor: PrintColor.white);
  }

  // Background color methods

  /// Prints the string with black background.
  void onBlack([PrintColor textColor = PrintColor.white]) {
    PrettyPrint.log(this, backColor: PrintColor.black, textColor: textColor);
  }

  /// Prints the string with red background.
  void onRed([PrintColor textColor = PrintColor.white]) {
    PrettyPrint.log(this, backColor: PrintColor.red, textColor: textColor);
  }

  /// Prints the string with green background.
  void onGreen([PrintColor textColor = PrintColor.white]) {
    PrettyPrint.log(this, backColor: PrintColor.green, textColor: textColor);
  }

  /// Prints the string with yellow background.
  void onYellow([PrintColor textColor = PrintColor.black]) {
    PrettyPrint.log(this, backColor: PrintColor.yellow, textColor: textColor);
  }

  /// Prints the string with blue background.
  void onBlue([PrintColor textColor = PrintColor.white]) {
    PrettyPrint.log(this, backColor: PrintColor.blue, textColor: textColor);
  }

  /// Prints the string with magenta background.
  void onMagenta([PrintColor textColor = PrintColor.white]) {
    PrettyPrint.log(this, backColor: PrintColor.magenta, textColor: textColor);
  }

  /// Prints the string with cyan background.
  void onCyan([PrintColor textColor = PrintColor.black]) {
    PrettyPrint.log(this, backColor: PrintColor.cyan, textColor: textColor);
  }

  /// Prints the string with white background.
  void onWhite([PrintColor textColor = PrintColor.black]) {
    PrettyPrint.log(this, backColor: PrintColor.white, textColor: textColor);
  }

  // Combined color and styling methods

  /// Prints the string in bold red text.
  void boldRed() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.red,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string in bold green text.
  void boldGreen() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.green,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string in bold blue text.
  void boldBlue() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.blue,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string in bold yellow text.
  void boldYellow() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.yellow,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string in bold magenta text.
  void boldMagenta() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.magenta,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string in bold cyan text.
  void boldCyan() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.cyan,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string in bold white text.
  void boldWhite() {
    PrettyPrint.log(
      this,
      textColor: PrintColor.white,
      textWeight: TextWeight.bold,
    );
  }

  // Gradient-like effects using different colors

  /// Prints the string with a rainbow-like effect by cycling through colors.
  /// Each character gets a different color.
  void rainbow() {
    final colors = [
      PrintColor.red,
      PrintColor.yellow,
      PrintColor.green,
      PrintColor.cyan,
      PrintColor.blue,
      PrintColor.magenta,
    ];

    for (int i = 0; i < length; i++) {
      final char = this[i];
      final color = colors[i % colors.length];
      PrettyPrint.log(char, textColor: color);
    }
  }
}
