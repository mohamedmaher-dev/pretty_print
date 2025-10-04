import '../../pretty_print.dart';

/// Extension methods on [String] for debugging and development output.
///
/// This extension provides convenient methods for debugging, development,
/// and diagnostic output with specialized formatting and information display.
///
/// ## Usage
///
/// ```dart
/// import 'package:pretty_print/pretty_print.dart';
///
/// // Debugging methods
/// "Variable value".debugPrint();
/// "Function called".stackTrace();
/// "API Response".inspect();
/// "Performance metric".benchmark();
/// ```
extension StringDebugExt on String {
  /// Prints the string with debug information including timestamp.
  ///
  /// Example usage:
  /// ```dart
  /// "User authentication started".debugPrint();
  /// ```
  void debugPrint() {
    final timestamp = DateTime.now().toString().substring(11, 23);
    PrettyPrint.log(
      "[$timestamp] 🐛 DEBUG: $this",
      textColor: PrintColor.magenta,
    );
  }

  /// Prints the string as a TODO item.
  ///
  /// Example usage:
  /// ```dart
  /// "Implement error handling".todo();
  /// ```
  void todo() {
    PrettyPrint.log(
      "📝 TODO: $this",
      textColor: PrintColor.yellow,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string as a FIXME item.
  ///
  /// Example usage:
  /// ```dart
  /// "Fix memory leak in cache".fixme();
  /// ```
  void fixme() {
    PrettyPrint.log(
      "🔧 FIXME: $this",
      textColor: PrintColor.red,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string as a NOTE item.
  ///
  /// Example usage:
  /// ```dart
  /// "This function is called frequently".note();
  /// ```
  void note() {
    PrettyPrint.log(
      "📌 NOTE: $this",
      textColor: PrintColor.cyan,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string with inspection details.
  ///
  /// Example usage:
  /// ```dart
  /// "API Response: {user: 'john'}".inspect();
  /// ```
  void inspect() {
    PrettyPrint.log(
      "🔍 INSPECT:",
      textColor: PrintColor.white,
      backColor: PrintColor.blue,
      textWeight: TextWeight.bold,
    );
    PrettyPrint.log("  $this", textColor: PrintColor.blue);
  }

  /// Prints the string as a stack trace or function call indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "UserService.authenticate()".stackTrace();
  /// ```
  void stackTrace() {
    PrettyPrint.log(
      "📚 STACK: $this",
      textColor: PrintColor.white,
      textBlink: TextBlink.semiOpacity,
    );
  }

  /// Prints the string as a benchmark or performance metric.
  ///
  /// Example usage:
  /// ```dart
  /// "Database query completed in 45ms".benchmark();
  /// ```
  void benchmark() {
    PrettyPrint.log(
      "⏱️ PERF: $this",
      textColor: PrintColor.yellow,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string as a memory usage indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "Memory usage: 256MB".memory();
  /// ```
  void memory() {
    PrettyPrint.log("💾 MEMORY: $this", textColor: PrintColor.cyan);
  }

  /// Prints the string as a network activity indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "HTTP GET /api/users".network();
  /// ```
  void network() {
    PrettyPrint.log("🌐 NETWORK: $this", textColor: PrintColor.blue);
  }

  /// Prints the string as a database activity indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "SELECT * FROM users WHERE active = true".database();
  /// ```
  void database() {
    PrettyPrint.log("🗄️ DB: $this", textColor: PrintColor.green);
  }

  /// Prints the string as a security-related message.
  ///
  /// Example usage:
  /// ```dart
  /// "Invalid authentication token detected".security();
  /// ```
  void security() {
    PrettyPrint.log(
      "🔒 SECURITY: $this",
      textColor: PrintColor.red,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string as a configuration message.
  ///
  /// Example usage:
  /// ```dart
  /// "Loading configuration from config.yaml".config();
  /// ```
  void config() {
    PrettyPrint.log("⚙️ CONFIG: $this", textColor: PrintColor.magenta);
  }

  /// Prints the string with variable name and value formatting.
  ///
  /// Example usage:
  /// ```dart
  /// "userName".variable("john_doe");
  /// ```
  void variable(dynamic value) {
    PrettyPrint.log("🔢 $this = $value", textColor: PrintColor.cyan);
  }

  /// Prints the string as an assertion message.
  ///
  /// Example usage:
  /// ```dart
  /// "User should be authenticated".assertion();
  /// ```
  void assertion() {
    PrettyPrint.log(
      "✅ ASSERT: $this",
      textColor: PrintColor.green,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string as a deprecation warning.
  ///
  /// Example usage:
  /// ```dart
  /// "Function getUserData() is deprecated".deprecated();
  /// ```
  void deprecated() {
    PrettyPrint.log(
      "⚠️ DEPRECATED: $this",
      textColor: PrintColor.yellow,
      textThroughLine: TextThroughLine.lineThrough,
    );
  }

  /// Prints the string as an experimental feature notice.
  ///
  /// Example usage:
  /// ```dart
  /// "New caching mechanism enabled".experimental();
  /// ```
  void experimental() {
    PrettyPrint.log(
      "🧪 EXPERIMENTAL: $this",
      textColor: PrintColor.magenta,
      textBlink: TextBlink.slowBlink,
    );
  }
}
