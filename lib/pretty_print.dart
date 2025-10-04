/// A beautiful and customizable Dart library for printing colored and styled text to the terminal.
///
/// This library provides an easy-to-use API for creating colorful and styled terminal output
/// using ANSI escape codes. Perfect for CLI applications, debugging, and logging.
///
/// ## Features
/// - 🎨 **8 Beautiful Colors**: Black, Red, Green, Yellow, Blue, Magenta, Cyan, White
/// - 🖼️ **Background Colors**: Apply any color as background
/// - 🎭 **Text Styling**: Bold, Italic, Underline, Strikethrough, Blinking
/// - 📋 **75+ Extension Methods**: Organized into logical groups for easy discovery
/// - 🔧 **Grouped API**: Methods organized by category (logging, styling, colors, formatting, debug)
/// - 📊 **Advanced Formatting**: Boxes, headers, separators, alignment, lists
/// - 🐛 **Development Tools**: Debugging utilities, variable inspection, performance monitoring
/// - 🌈 **Special Effects**: Rainbow text, animations, and visual enhancements
/// - 🚀 **Cross-platform**: Works on all platforms that support ANSI escape codes
///
/// ## Quick Start
///
/// ### Basic PrettyPrint.log Usage
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
/// ```
///
/// ### Grouped Extension Methods (Recommended)
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Logging methods
/// "Operation completed successfully!".logging.successLog();
/// "Application started".logging.infoLog();
/// "This feature is deprecated".logging.warningLog();
/// "Failed to connect to database".logging.errorLog();
///
/// // Text styling
/// "Bold text".styling.bold();
/// "Italic text".styling.italic();
/// "Underlined text".styling.underline();
///
/// // Colors
/// "Red text".colors.red();
/// "Green text".colors.green();
/// "Text on blue background".colors.onBlue();
///
/// // Formatting
/// "Title".formatting.header();
/// "Content".formatting.box();
/// "Left aligned text".formatting.leftAlign(30);
///
/// // Development & Debugging
/// "Debug message".debug.debugPrint();
/// "variable".debug.variable(someValue);
/// "Performance check".debug.benchmark();
/// ```
///
/// ## Extension Groups
///
/// The library organizes methods into logical groups for better discoverability:
///
/// - **`.logging`**: Status logging (success, error, info, warning, debug, critical, trace, performance)
/// - **`.styling`**: Text styling (bold, italic, underline, strikethrough, blink, combinations)
/// - **`.colors`**: Colors (red, green, blue, etc.) and backgrounds (onRed, onGreen, etc.)
/// - **`.formatting`**: Layout (box, header, separator, alignment, lists, quotes, code blocks)
/// - **`.debug`**: Development tools (debugPrint, variable inspection, performance, memory, network)
///
/// ## Advanced Features
///
/// ```dart
/// // Rainbow text effect
/// "Rainbow text!".colors.rainbow();
///
/// // Complex formatting
/// "Important Title".formatting.header();
/// "Boxed content".formatting.box();
/// "Item 1".formatting.bullet();
/// "Step 1".formatting.numbered(1);
///
/// // Development utilities
/// "userName".debug.variable("john_doe");
/// "API Response".debug.inspect();
/// "Query took 150ms".debug.benchmark();
/// ```
///
/// For complete documentation and examples, visit: https://pub.dev/packages/pretty_print
library;

/// Core library for the pretty_print package
export 'src/pretty_print_base.dart';

/// Enums for colors and text styling
export 'src/enums/print_color.dart';
export 'src/enums/text_styles.dart';

/// Constants used throughout the package
export 'src/consts.dart';

/// Extensions for string methods organized by category
export 'src/pretty_print_ext.base.dart';
export 'src/extensions/logging_ext.dart' hide LoggingGroup;
export 'src/extensions/styling_ext.dart' hide StylingGroup;
export 'src/extensions/colors_ext.dart' hide ColorsGroup;
export 'src/extensions/formatting_ext.dart' hide FormattingGroup;
export 'src/extensions/debug_ext.dart' hide DebugGroup;
