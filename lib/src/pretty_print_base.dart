import 'package:pretty_print/pretty_print.dart';

/// The main class for printing styled and colored text to the terminal.
///
/// This class provides static methods to print text with various styling options
/// including colors, background colors, text formatting, and animations.
///
/// All methods use ANSI escape codes to format the output, which are supported
/// by most modern terminals.
class PrettyPrint {
  /// Private constructor to prevent instantiation.
  /// This class is designed to be used only through static methods.
  PrettyPrint._();

  /// Prints a message with customizable styling and colors to the terminal.
  ///
  /// This method allows you to apply various text styling options including:
  /// - Text and background colors
  /// - Text formatting (bold, italic, underline, strikethrough)
  /// - Text effects (blinking, opacity)
  ///
  /// Example usage:
  /// ```dart
  /// // Simple colored text
  /// PrettyPrint.log("Hello!", textColor: PrintColor.red);
  ///
  /// // Bold white text on green background
  /// PrettyPrint.log(
  ///   " SUCCESS ",
  ///   textColor: PrintColor.white,
  ///   backColor: PrintColor.green,
  ///   textWeight: TextWeight.bold,
  /// );
  ///
  /// // Italic underlined text with blinking
  /// PrettyPrint.log(
  ///   "Loading...",
  ///   textColor: PrintColor.yellow,
  ///   textItalic: TextItalic.italic,
  ///   textUnderline: TextUnderLine.underline,
  ///   textBlink: TextBlink.slowBlink,
  /// );
  /// ```
  ///
  /// Parameters:
  /// - [msg]: The message to print
  /// - [textColor]: The text color (default: none)
  /// - [backColor]: The background color (default: none)
  /// - [textItalic]: Whether to make text italic (default: none)
  /// - [textUnderline]: Whether to underline text (default: none)
  /// - [textThroughLine]: Whether to add strikethrough effect (default: none)
  /// - [textBlink]: Blinking and opacity effects (default: none)
  /// - [textWeight]: Text weight (normal or bold) (default: none)
  static void log(
    String msg, {
    PrintColor textColor = PrintColor.none,
    PrintColor backColor = PrintColor.none,
    TextItalic textItalic = TextItalic.none,
    TextUnderLine textUnderline = TextUnderLine.none,
    TextThroughLine textThroughLine = TextThroughLine.none,
    TextBlink textBlink = TextBlink.none,
    TextWeight textWeight = TextWeight.none,
  }) {
    String printCode = _getPrintCode(
      msg: msg,
      textColor: textColor.value,
      backColor: backColor.value,
      textItalic: textItalic.value,
      textUnderline: textUnderline.value,
      textThroughLine: textThroughLine.value,
      textBlink: textBlink.value,
      textWeight: textWeight.value,
    );
    print(printCode);
  }

  /// Internal method to generate ANSI escape codes for terminal formatting.
  ///
  /// This method combines all the styling parameters into a single ANSI escape
  /// sequence that can be printed to the terminal to apply the desired formatting.
  ///
  /// The method follows the ANSI escape sequence format:
  /// `\u001b[<formatting_codes>m<message>\u001b[0m`
  ///
  /// Parameters:
  /// - [msg]: The message to be formatted
  /// - [textColor]: ANSI code for text color
  /// - [backColor]: ANSI code for background color
  /// - [textItalic]: ANSI code for italic formatting
  /// - [textUnderline]: ANSI code for underline formatting
  /// - [textThroughLine]: ANSI code for strikethrough formatting
  /// - [textBlink]: ANSI code for blinking and opacity effects
  /// - [textWeight]: ANSI code for text weight (bold)
  ///
  /// Returns a complete ANSI escape sequence string ready for terminal output.
  static String _getPrintCode({
    required String msg,
    required String textColor,
    required String backColor,
    required String textItalic,
    required String textUnderline,
    required String textThroughLine,
    required String textBlink,
    required String textWeight,
  }) {
    // Prepend 'm' to the message for ANSI formatting
    msg = 'm$msg';

    // Add ANSI color prefixes if colors are specified
    textColor = textColor.isNotEmpty ? "3$textColor" : textColor;
    backColor = backColor.isNotEmpty ? "4$backColor" : backColor;

    // Combine all formatting codes into a complete ANSI escape sequence
    String printCode =
        '$baseLeading$textWeight$textItalic$textUnderline$textThroughLine$textBlink$textColor$backColor$msg$baseTrailing';
    return printCode;
  }
}
