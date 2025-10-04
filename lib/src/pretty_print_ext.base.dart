/// Base classes and extensions for the Pretty Print grouped extension system.
///
/// This file provides the foundation for organizing string extension methods
/// into logical groups, making the API more discoverable and maintainable.
///
/// ## Architecture
///
/// The grouped extension system works by:
/// 1. Creating group classes that implement [PrettyPrintExtBase]
/// 2. Each group contains related methods (e.g., logging, styling, colors)
/// 3. The main [PrettyPrintExt] extension provides getters to access each group
/// 4. Users call methods like: `"text".logging.successLog()` or `"text".colors.red()`
///
/// ## Benefits
///
/// - **Organization**: Methods are logically grouped by functionality
/// - **Discoverability**: IDE autocomplete shows relevant methods for each category
/// - **Maintainability**: Each group is in a separate file for easier maintenance
/// - **Extensibility**: New groups can be easily added without cluttering the main API
///
/// ## Usage Examples
///
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Logging methods
/// "Success message".logging.successLog();
/// "Error occurred".logging.errorLog();
///
/// // Styling methods
/// "Bold text".styling.bold();
/// "Italic text".styling.italic();
///
/// // Color methods
/// "Red text".colors.red();
/// "Text on blue background".colors.onBlue();
///
/// // Formatting methods
/// "Title".formatting.header();
/// "Content".formatting.box();
///
/// // Debug methods
/// "Debug info".debug.debugPrint();
/// "variable".debug.variable(value);
/// ```
library;

// Import all extension group implementations
import 'package:pretty_print/src/extensions/logging_ext.dart';
import 'package:pretty_print/src/extensions/styling_ext.dart';
import 'package:pretty_print/src/extensions/colors_ext.dart';
import 'package:pretty_print/src/extensions/formatting_ext.dart';
import 'package:pretty_print/src/extensions/debug_ext.dart';

/// Abstract base class for all extension groups.
///
/// This class provides a common interface for all extension groups,
/// ensuring they all have access to the original string value.
///
/// Each extension group (LoggingGroup, StylingGroup, etc.) implements
/// this interface to access the string they're operating on.
abstract class PrettyPrintExtBase {
  /// The original string value that the extension methods will operate on.
  final String value;

  /// Creates a new extension group with the given string [value].
  const PrettyPrintExtBase(this.value);
}

/// Main extension on [String] that provides access to all grouped methods.
///
/// This extension adds getter properties to every string that return
/// the appropriate group instances, allowing for the fluent API syntax:
/// `"text".group.method()`.
///
/// ## Available Groups
///
/// - **logging**: Status logging methods (success, error, info, warning, etc.)
/// - **styling**: Text styling methods (bold, italic, underline, etc.)
/// - **colors**: Color methods for text and backgrounds
/// - **formatting**: Layout and formatting methods (boxes, headers, alignment)
/// - **debug**: Development and debugging utilities
extension PrettyPrintExt on String {
  /// Access to logging methods like successLog(), errorLog(), infoLog(), etc.
  ///
  /// Example:
  /// ```dart
  /// "Operation completed".logging.successLog();
  /// "Connection failed".logging.errorLog();
  /// ```
  LoggingGroup get logging => LoggingGroup(this);

  /// Access to text styling methods like bold(), italic(), underline(), etc.
  ///
  /// Example:
  /// ```dart
  /// "Important text".styling.bold();
  /// "Emphasized text".styling.italic();
  /// ```
  StylingGroup get styling => StylingGroup(this);

  /// Access to color methods for text and background colors.
  ///
  /// Example:
  /// ```dart
  /// "Red text".colors.red();
  /// "Text on blue background".colors.onBlue();
  /// ```
  ColorsGroup get colors => ColorsGroup(this);

  /// Access to formatting and layout methods like box(), header(), center(), etc.
  ///
  /// Example:
  /// ```dart
  /// "Title".formatting.header();
  /// "Content".formatting.box();
  /// ```
  FormattingGroup get formatting => FormattingGroup(this);

  /// Access to debugging and development utilities.
  ///
  /// Example:
  /// ```dart
  /// "Debug message".debug.debugPrint();
  /// "variable".debug.variable(someValue);
  /// ```
  DebugGroup get debug => DebugGroup(this);
}
