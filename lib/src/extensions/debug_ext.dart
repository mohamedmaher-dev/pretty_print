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
/// "Variable value".debug.debugPrint();
/// "Function called".debug.stackTrace();
/// "API Response".debug.inspect();
/// "Performance metric".debug.benchmark();
/// ```
class DebugGroup implements PrettyPrintExtBase {
  @override
  final String value;
  const DebugGroup(this.value);

  /// Prints the string with debug information including timestamp.
  ///
  /// Example usage:
  /// ```dart
  /// "User authentication started".debugPrint();
  /// ```
  void debugPrint() {
    final timestamp = DateTime.now().toString().substring(11, 23);
    PrettyPrint.log(
      "[$timestamp] 🐛 DEBUG: $value",
      textColor: PrintColor.magenta,
    );
  }

  /// Prints the string as a development task item.
  ///
  /// This method displays the string as a task that needs to be completed,
  /// formatted with a 📝 icon and yellow styling.
  ///
  /// Example usage:
  /// ```dart
  /// "Implement error handling".todo();
  /// ```
  void todo() {
    PrettyPrint.log(
      "📝 TODO: $value",
      textColor: PrintColor.yellow,
      textWeight: TextWeight.bold,
    );
  }

  /// Prints the string as a development issue item.
  ///
  /// This method displays the string as an issue that needs immediate attention,
  /// formatted with a 🔧 icon and red styling.
  ///
  /// Example usage:
  /// ```dart
  /// "Fix memory leak in cache".fixme();
  /// ```
  void fixme() {
    PrettyPrint.log(
      "🔧 FIXME: $value",
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
      "📌 NOTE: $value",
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
    PrettyPrint.log("  $value", textColor: PrintColor.blue);
  }

  /// Prints the string as a stack trace or function call indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "UserService.authenticate()".stackTrace();
  /// ```
  void stackTrace() {
    PrettyPrint.log(
      "📚 STACK: $value",
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
      "⏱️ PERF: $value",
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
    PrettyPrint.log("💾 MEMORY: $value", textColor: PrintColor.cyan);
  }

  /// Prints the string as a network activity indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "HTTP GET /api/users".network();
  /// ```
  void network() {
    PrettyPrint.log("🌐 NETWORK: $value", textColor: PrintColor.blue);
  }

  /// Prints the string as a database activity indicator.
  ///
  /// Example usage:
  /// ```dart
  /// "SELECT * FROM users WHERE active = true".database();
  /// ```
  void database() {
    PrettyPrint.log("🗄️ DB: $value", textColor: PrintColor.green);
  }

  /// Prints the string as a security-related message.
  ///
  /// Example usage:
  /// ```dart
  /// "Invalid authentication token detected".security();
  /// ```
  void security() {
    PrettyPrint.log(
      "🔒 SECURITY: $value",
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
    PrettyPrint.log("⚙️ CONFIG: $value", textColor: PrintColor.magenta);
  }

  /// Prints the string with variable name and value formatting.
  ///
  /// Example usage:
  /// ```dart
  /// "userName".variable("john_doe");
  /// ```
  void variable(dynamic variableValue) {
    PrettyPrint.log("🔢 $value = $variableValue", textColor: PrintColor.cyan);
  }

  /// Prints the string as an assertion message.
  ///
  /// Example usage:
  /// ```dart
  /// "User should be authenticated".assertion();
  /// ```
  void assertion() {
    PrettyPrint.log(
      "✅ ASSERT: $value",
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
      "⚠️ DEPRECATED: $value",
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
      "🧪 EXPERIMENTAL: $value",
      textColor: PrintColor.magenta,
      textBlink: TextBlink.slowBlink,
    );
  }
}
