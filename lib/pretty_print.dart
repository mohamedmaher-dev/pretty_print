/// A beautiful and customizable Dart library for printing colored and styled text to the terminal.
///
/// This library provides an easy-to-use API for creating colorful and styled terminal output
/// using ANSI escape codes. Perfect for CLI applications, debugging, and logging.
///
/// ## Features
/// - 8 different text colors (black, red, green, yellow, blue, magenta, cyan, white)
/// - 8 different background colors
/// - Text styling (bold, italic, underline, strikethrough)
/// - Text effects (blinking animations, opacity)
/// - Easy-to-use chainable API
/// - Cross-platform terminal support
///
/// ## Basic Usage
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Simple colored text
/// PrettyPrint.log(
///   "Hello World!",
///   textColor: PrintColor.green,
///   textWeight: TextWeight.bold,
/// );
///
/// // Text with background color and styling
/// PrettyPrint.log(
///   " SUCCESS ",
///   textColor: PrintColor.white,
///   backColor: PrintColor.green,
///   textWeight: TextWeight.bold,
/// );
///
/// // Convenient status methods
/// PrettyPrint.success("Operation completed successfully!");
/// PrettyPrint.info("Application started");
/// PrettyPrint.warning("This feature is deprecated");
/// PrettyPrint.error("Failed to connect to database");
/// ```
library;

/// Core library for the pretty_print package
export 'src/pretty_print_base.dart';

/// Enums for colors and text styling
export 'src/enums/print_color.dart';
export 'src/enums/text_styles.dart';

/// Constants used throughout the package
export 'src/consts.dart';

/// Extensions for string methods organized by category
export 'src/extensions/string_logging_ext.dart';
export 'src/extensions/string_styling_ext.dart';
export 'src/extensions/string_colors_ext.dart';
export 'src/extensions/string_formatting_ext.dart';
export 'src/extensions/string_debug_ext.dart';
