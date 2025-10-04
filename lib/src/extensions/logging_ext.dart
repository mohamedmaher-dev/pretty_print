import '../../pretty_print.dart';

/// Extension methods on [String] for logging with styled output.
///
/// This extension provides convenient methods to log strings with predefined
/// status styling (success, info, warning, error, debug, etc.). Each method displays a
/// styled header followed by the string content in matching colors.
///
/// ## Usage
///
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Basic logging methods
/// "Operation completed successfully!".successLog();
/// "Application started".infoLog();
/// "This feature is deprecated".warningLog();
/// "Failed to connect to database".errorLog();
///
/// // Advanced logging methods
/// "Debugging user authentication".debugLog();
/// "Critical system failure".criticalLog();
/// "Trace: entering function".traceLog();
/// ```
class LoggingGroup implements PrettyPrintExtBase {
  @override
  final String value;
  const LoggingGroup(this.value);

  /// Prints a success message with green background and white text.
  ///
  /// This is a convenience extension method for displaying success status messages.
  /// The header will have a green background with white text, and the message
  /// will be displayed in green text.
  ///
  /// Example usage:
  /// ```dart
  /// "Operation completed successfully!".successLog();
  /// ```

  void successLog() {
    PrettyPrint.log(
      " ✓ SUCCESS ",
      textColor: PrintColor.white,
      backColor: PrintColor.green,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.green);
  }

  /// Prints an info message with blue background and white text.
  ///
  /// This is a convenience extension method for displaying informational messages.
  /// The header will have a blue background with white text, and the message
  /// will be displayed in blue text.
  ///
  /// Example usage:
  /// ```dart
  /// "Application started successfully".infoLog();
  /// ```
  void infoLog() {
    PrettyPrint.log(
      " ℹ INFO ",
      textColor: PrintColor.white,
      backColor: PrintColor.blue,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.blue);
  }

  /// Prints a warning message with yellow background and black text.
  ///
  /// This is a convenience extension method for displaying warning messages.
  /// The header will have a yellow background with black text, and the message
  /// will be displayed in yellow text.
  ///
  /// Example usage:
  /// ```dart
  /// "This feature is deprecated".warningLog();
  /// ```
  void warningLog() {
    PrettyPrint.log(
      " ⚠ WARNING ",
      textColor: PrintColor.black,
      backColor: PrintColor.yellow,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.yellow);
  }

  /// Prints an error message with red background and white text.
  ///
  /// This is a convenience extension method for displaying error messages.
  /// The header will have a red background with white text, and the message
  /// will be displayed in red text.
  ///
  /// Example usage:
  /// ```dart
  /// "Failed to connect to database".errorLog();
  /// ```
  void errorLog() {
    PrettyPrint.log(
      " ✗ ERROR ",
      textColor: PrintColor.white,
      backColor: PrintColor.red,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.red);
  }

  /// Prints a debug message with magenta background and white text.
  ///
  /// This is a convenience extension method for displaying debug messages.
  /// The header will have a magenta background with white text, and the message
  /// will be displayed in magenta text.
  ///
  /// Example usage:
  /// ```dart
  /// "Debugging user authentication process".debugLog();
  /// ```
  void debugLog() {
    PrettyPrint.log(
      " 🐛 DEBUG ",
      textColor: PrintColor.white,
      backColor: PrintColor.magenta,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.magenta);
  }

  /// Prints a critical message with red background and blinking text.
  ///
  /// This is a convenience extension method for displaying critical system messages.
  /// The header will have a red background with white text and blinking effect.
  ///
  /// Example usage:
  /// ```dart
  /// "Critical system failure detected".criticalLog();
  /// ```
  void criticalLog() {
    PrettyPrint.log(
      " 🚨 CRITICAL ",
      textColor: PrintColor.white,
      backColor: PrintColor.red,
      textWeight: TextWeight.bold,
      textBlink: TextBlink.slowBlink,
    );
    PrettyPrint.log(
      value,
      textColor: PrintColor.red,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints a trace message with cyan text.
  ///
  /// This is a convenience extension method for displaying trace/verbose messages.
  /// The message will be displayed in cyan text with a trace prefix.
  ///
  /// Example usage:
  /// ```dart
  /// "Entering authentication function".traceLog();
  /// ```
  void traceLog() {
    PrettyPrint.log(
      " 📍 TRACE ",
      textColor: PrintColor.white,
      backColor: PrintColor.cyan,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.cyan);
  }

  /// Prints a performance message with yellow text.
  ///
  /// This is a convenience extension method for displaying performance-related messages.
  /// The message will be displayed in yellow text with a performance prefix.
  ///
  /// Example usage:
  /// ```dart
  /// "Database query took 150ms".performanceLog();
  /// ```
  void performanceLog() {
    PrettyPrint.log(
      " ⚡ PERF ",
      textColor: PrintColor.black,
      backColor: PrintColor.yellow,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log(value, textColor: PrintColor.yellow);
  }
}
