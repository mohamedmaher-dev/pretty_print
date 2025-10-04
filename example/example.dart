/// 🎨 PRETTY PRINT - COMPLETE PACKAGE EXAMPLES
///
/// This is the ONLY example file you need! It contains ALL examples from the pretty_print package:
///
/// 📋 SECTIONS INCLUDED:
/// 1. Basic Features Demo (colors, styling, backgrounds, effects)
/// 2. String Extension Methods (organized by category)
/// 3. Logging Examples (application flow simulation)
/// 4. CLI Application Demo (real-world usage)
/// 5. Status Messages Examples
/// 6. New Enum Names Demo (TextBlink, TextThroughLine)
/// 7. Development & Debug Examples
/// 8. Comprehensive Extension Showcase
///
/// Run this example with: dart run example/all_examples.dart
library;

import 'package:pretty_print/pretty_print.dart';

void main() {
  _showMenu();
  _basicFeaturesDemo();
  _stringExtensionsDemo();
  _loggingExamplesDemo();
  _cliApplicationDemo();
  _statusMessagesDemo();
  _newEnumsDemo();
  _developmentDebugDemo();
  _comprehensiveExtensionsDemo();
  _finalMessage();
}

/// Shows the main menu and navigation
void _showMenu() {
  print('\n');
  "🎨 PRETTY PRINT - COMPLETE EXAMPLES SHOWCASE".header(PrintColor.blue);
  print('');

  "Welcome to the comprehensive pretty_print examples!".boldCyan();
  "This file demonstrates ALL features and capabilities.".cyan();
  print('');

  "📋 SECTIONS IN THIS DEMO:".boldWhite();
  "1. Basic Features Demo".numbered(1, PrintColor.cyan);
  "2. String Extension Methods".numbered(2, PrintColor.cyan);
  "3. Logging Examples".numbered(3, PrintColor.cyan);
  "4. CLI Application Demo".numbered(4, PrintColor.cyan);
  "5. Status Messages Examples".numbered(5, PrintColor.cyan);
  "6. New Enum Names Demo".numbered(6, PrintColor.cyan);
  "7. Development & Debug Examples".numbered(7, PrintColor.cyan);
  "8. Comprehensive Extension Showcase".numbered(8, PrintColor.cyan);

  print('');
  "Let's begin the demonstration!".boldGreen();
  "".separator(PrintColor.white, 60);
}

/// Section 1: Basic Features Demo
void _basicFeaturesDemo() {
  "1. BASIC FEATURES DEMO".header(PrintColor.cyan);
  print('');

  // Text Colors
  "🎨 TEXT COLORS".boldYellow();
  print('');

  final colors = [
    (PrintColor.black, "Black"),
    (PrintColor.red, "Red"),
    (PrintColor.green, "Green"),
    (PrintColor.yellow, "Yellow"),
    (PrintColor.blue, "Blue"),
    (PrintColor.magenta, "Magenta"),
    (PrintColor.cyan, "Cyan"),
    (PrintColor.white, "White"),
  ];

  for (final (color, name) in colors) {
    PrettyPrint.log("● $name text", textColor: color);
  }
  print('');

  // Text Styling
  "✨ TEXT STYLING".boldYellow();
  print('');

  PrettyPrint.log("Normal text weight", textWeight: TextWeight.normal);
  PrettyPrint.log("Bold text weight", textWeight: TextWeight.bold);
  PrettyPrint.log("Italic text style", textItalic: TextItalic.italic);
  PrettyPrint.log("Underlined text", textUnderline: TextUnderLine.underline);
  PrettyPrint.log(
    "Strikethrough text",
    textThroughLine: TextThroughLine.lineThrough,
  );

  // Combined styling
  PrettyPrint.log(
    "Bold + Italic + Underlined",
    textWeight: TextWeight.bold,
    textItalic: TextItalic.italic,
    textUnderline: TextUnderLine.underline,
    textColor: PrintColor.magenta,
  );
  print('');

  // Background Colors
  "🖼️ BACKGROUND COLORS".boldYellow();
  print('');

  final backgrounds = [
    (PrintColor.black, PrintColor.white, "Black Background"),
    (PrintColor.red, PrintColor.white, "Red Background"),
    (PrintColor.green, PrintColor.white, "Green Background"),
    (PrintColor.yellow, PrintColor.black, "Yellow Background"),
    (PrintColor.blue, PrintColor.white, "Blue Background"),
    (PrintColor.magenta, PrintColor.white, "Magenta Background"),
    (PrintColor.cyan, PrintColor.black, "Cyan Background"),
    (PrintColor.white, PrintColor.black, "White Background"),
  ];

  for (final (backColor, textColor, text) in backgrounds) {
    PrettyPrint.log(
      " $text ",
      textColor: textColor,
      backColor: backColor,
      textWeight: TextWeight.bold,
    );
  }
  print('');

  // Special Effects
  "🎭 SPECIAL EFFECTS".boldYellow();
  print('');

  PrettyPrint.log(
    "Semi-transparent text",
    textColor: PrintColor.white,
    textBlink: TextBlink.semiOpacity,
  );

  PrettyPrint.log(
    "Slow blinking animation",
    textColor: PrintColor.red,
    textBlink: TextBlink.slowBlink,
  );

  PrettyPrint.log(
    "Fast blinking animation",
    textColor: PrintColor.green,
    textBlink: TextBlink.fastBlink,
  );

  print("Hidden text (next line is invisible):");
  PrettyPrint.log("This text is hidden!", textBlink: TextBlink.hide);

  "".separator(PrintColor.cyan, 60);
}

/// Section 2: String Extension Methods Demo
void _stringExtensionsDemo() {
  "2. STRING EXTENSION METHODS".header(PrintColor.magenta);
  print('');

  // Logging Extensions
  "📋 LOGGING EXTENSIONS".boldYellow();
  print('');

  "Database connection established successfully!".successLog();
  "Application started on port 8080".infoLog();
  "This API endpoint will be deprecated soon".warningLog();
  "Failed to connect to external service".errorLog();
  "Checking user authentication flow".debugLog();
  "System memory critically low!".criticalLog();
  "Entering user validation function".traceLog();
  "API response time: 125ms".performanceLog();
  print('');

  // Styling Extensions
  "🎨 STYLING EXTENSIONS".boldYellow();
  print('');

  "This text is bold".bold(PrintColor.white);
  "This text is italic".italic(PrintColor.cyan);
  "This text is underlined".underline(PrintColor.yellow);
  "This text has line-through".lineThrough(PrintColor.red);
  "This text is blinking".blink(PrintColor.green);
  "Bold and underlined text".boldUnderline(PrintColor.magenta);
  "All effects combined!".allEffects(PrintColor.red);
  print('');

  // Color Extensions
  "🌈 COLOR EXTENSIONS".boldYellow();
  print('');

  "Red text".red();
  "Green text".green();
  "Blue text".blue();
  "Yellow text".yellow();
  " Text on red background ".onRed();
  " Text on green background ".onGreen();
  "Bold red text".boldRed();
  "Bold green text".boldGreen();
  print('');

  // Formatting Extensions
  "📐 FORMATTING EXTENSIONS".boldYellow();
  print('');

  "Important notification".box(PrintColor.green);
  print('');
  "Critical Alert!".doubleBox(PrintColor.red);
  print('');
  "Section Break".separator(PrintColor.white, 40);
  "First item".bullet("•", PrintColor.green);
  "Second item".bullet("→", PrintColor.green);
  "First step".numbered(1, PrintColor.cyan);
  "Second step".numbered(2, PrintColor.cyan);
  "This text is indented".indent(8, PrintColor.magenta);
  "To be or not to be".quote();
  "console.log('Hello')".code();
  print('');

  // Debug Extensions
  "🐛 DEBUG EXTENSIONS".boldYellow();
  print('');

  "User authentication process started".debugPrint();
  "Implement caching mechanism".todo();
  "Fix memory leak in session handling".fixme();
  "This function handles file uploads".note();
  "API Response: {status: 'success'}".inspect();
  "Database query executed in 23ms".benchmark();
  "Current memory usage: 245MB".memory();
  "GET /api/users - 200 OK".network();
  "userId".variable("12345");
  "User must be logged in".assertion();
  "Function deprecated in v2.0".deprecated();
  "New ML engine active".experimental();

  "".separator(PrintColor.magenta, 60);
}

/// Section 3: Logging Examples Demo
void _loggingExamplesDemo() {
  "3. LOGGING EXAMPLES".header(PrintColor.green);
  print('');

  "🚀 Application Lifecycle Simulation".boldYellow();
  print('');

  _logWithTimestamp("Application starting...", "INFO");
  _logWithTimestamp("Loading configuration from config.yaml", "INFO");
  _logWithTimestamp(
    "Connecting to database: postgresql://localhost:5432/myapp",
    "INFO",
  );
  _logWithTimestamp("Database connection established", "SUCCESS");
  _logWithTimestamp("Starting HTTP server on port 8080", "INFO");
  _logWithTimestamp("Application started successfully", "SUCCESS");
  print('');

  _logWithTimestamp("Received shutdown signal", "INFO");
  _logWithTimestamp("Closing database connections", "INFO");
  _logWithTimestamp("Stopping HTTP server", "INFO");
  _logWithTimestamp("Application shutdown complete", "SUCCESS");
  print('');

  "👤 User Actions Simulation".boldYellow();
  print('');

  _logWithTimestamp("User login attempt: john@example.com", "INFO");
  _logWithTimestamp("User authenticated successfully", "SUCCESS");
  _logWithTimestamp("User accessed dashboard", "INFO");
  _logWithTimestamp("User created new project: 'Mobile App Redesign'", "INFO");
  _logWithTimestamp("User invited team member: sarah@example.com", "INFO");
  _logWithTimestamp("User attempted to access restricted resource", "WARNING");
  _logWithTimestamp("User logged out", "INFO");
  print('');

  "⚙️ System Operations".boldYellow();
  print('');

  _logWithTimestamp("Starting scheduled backup task", "INFO");
  _logWithTimestamp("Backup progress: 25% (1.2GB / 4.8GB)", "INFO");
  _logWithTimestamp("Backup progress: 50% (2.4GB / 4.8GB)", "INFO");
  _logWithTimestamp("Backup progress: 75% (3.6GB / 4.8GB)", "INFO");
  _logWithTimestamp("Backup completed successfully (4.8GB)", "SUCCESS");
  _logWithTimestamp("Running database cleanup task", "INFO");
  _logWithTimestamp("Removed 1,234 expired sessions", "INFO");
  _logWithTimestamp("Cleaned up 567 temporary files", "INFO");
  _logWithTimestamp("Database cleanup completed", "SUCCESS");
  print('');

  "🚨 Error Scenarios".boldYellow();
  print('');

  _logWithTimestamp("API rate limit approaching (80/100 requests)", "WARNING");
  _logWithTimestamp("Failed to send email notification", "ERROR");
  _logWithTimestamp("Retrying email send (attempt 1/3)", "INFO");
  _logWithTimestamp("Email sent successfully", "SUCCESS");
  _logWithTimestamp("Database connection lost", "ERROR");
  _logWithTimestamp("Attempting to reconnect...", "INFO");
  _logWithTimestamp("Database connection restored", "SUCCESS");
  _logWithTimestamp("Invalid JSON in API request", "ERROR");
  _logWithTimestamp("Authentication token expired", "ERROR");

  PrettyPrint.log(
    " [${DateTime.now().toString().substring(0, 19)}] [CRITICAL] Security breach detected - unusual login patterns ",
    textColor: PrintColor.white,
    backColor: PrintColor.red,
    textWeight: TextWeight.bold,
    textBlink: TextBlink.slowBlink,
  );

  "".separator(PrintColor.green, 60);
}

/// Section 4: CLI Application Demo
void _cliApplicationDemo() {
  "4. CLI APPLICATION DEMO".header(PrintColor.blue);
  print('');

  // CLI Header
  PrettyPrint.log(
    "╔══════════════════════════════════════╗",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.log(
    "║          🚀 CLI Application          ║",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.log(
    "║         Data Processing Tool         ║",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.log(
    "╚══════════════════════════════════════╝",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');

  "📋 Configuration".boldYellow();
  print('');

  PrettyPrint.log("→ Select data source:", textColor: PrintColor.cyan);
  PrettyPrint.log("  ✓ Local files", textColor: PrintColor.green);
  PrettyPrint.log("→ Choose output format:", textColor: PrintColor.cyan);
  PrettyPrint.log("  ✓ JSON", textColor: PrintColor.green);
  PrettyPrint.log("→ Set processing options:", textColor: PrintColor.cyan);
  PrettyPrint.log("  ✓ Validate data", textColor: PrintColor.green);
  PrettyPrint.log("  ✓ Remove duplicates", textColor: PrintColor.green);
  print('');

  "⚙️ Processing".boldYellow();
  print('');

  PrettyPrint.log(
    "🔄 Loading data files...",
    textColor: PrintColor.cyan,
    textBlink: TextBlink.slowBlink,
  );

  " ✓ SUCCESS ".successLog();
  PrettyPrint.log("   Loaded 1,234 records", textColor: PrintColor.green);
  print('');

  PrettyPrint.log(
    "🔍 Validating data integrity...",
    textColor: PrintColor.cyan,
    textBlink: TextBlink.slowBlink,
  );

  " ⚠ WARNING ".warningLog();
  PrettyPrint.log(
    "   Found 3 invalid records (fixed automatically)",
    textColor: PrintColor.yellow,
  );
  print('');

  PrettyPrint.log(
    "⚙️ Processing records...",
    textColor: PrintColor.cyan,
    textBlink: TextBlink.slowBlink,
  );

  for (int i = 1; i <= 5; i++) {
    PrettyPrint.log("   Processing batch $i/5", textColor: PrintColor.white);
  }

  " ✓ SUCCESS ".successLog();
  PrettyPrint.log("   Processed 1,231 records", textColor: PrintColor.green);
  print('');

  "📊 Results Summary".boldYellow();
  print('');

  "📈 Statistics:".boldWhite();
  "  • Total records processed: 1,234".leftAlign(40, PrintColor.white);
  "  • Valid records: 1,231".leftAlign(40, PrintColor.white);
  "  • Invalid records: 3".leftAlign(40, PrintColor.white);
  "  • Processing time: 2.4 seconds".leftAlign(40, PrintColor.white);
  print('');

  "📁 Output files:".boldWhite();
  "  ✓ output/results.json (45.2 KB)".green();
  "  ✓ output/validation_log.txt (1.8 KB)".green();
  print('');

  " 🎉 PROCESSING COMPLETED SUCCESSFULLY! ".onGreen(PrintColor.white);

  "".separator(PrintColor.blue, 60);
}

/// Section 5: Status Messages Demo
void _statusMessagesDemo() {
  "5. STATUS MESSAGES EXAMPLES".header(PrintColor.yellow);
  print('');

  "🎯 Status Messages with Extension Methods".boldYellow();
  print('');

  "Database connection established successfully!".successLog();
  "User authentication completed".successLog();
  "File upload finished".successLog();
  print('');

  "Application started on port 8080".infoLog();
  "Loading configuration from config.yaml".infoLog();
  "Processing 150 records...".infoLog();
  print('');

  "This API endpoint is deprecated".warningLog();
  "Memory usage is above 80%".warningLog();
  "SSL certificate expires in 30 days".warningLog();
  print('');

  "Failed to connect to database".errorLog();
  "Invalid user credentials provided".errorLog();
  "Network timeout after 30 seconds".errorLog();
  print('');

  "🎨 Custom Styling with Traditional Method".boldYellow();
  print('');

  PrettyPrint.log(
    "Custom styled message",
    textColor: PrintColor.magenta,
    backColor: PrintColor.white,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.log(
    "Another custom message",
    textColor: PrintColor.cyan,
    textItalic: TextItalic.italic,
    textUnderline: TextUnderLine.underline,
  );

  "".separator(PrintColor.yellow, 60);
}

/// Section 6: New Enum Names Demo
void _newEnumsDemo() {
  "6. NEW ENUM NAMES DEMO".header(PrintColor.red);
  print('');

  "🔸 TextBlink Effects (formerly AlphaAndAnim)".boldYellow();
  print('');

  PrettyPrint.log(
    "Semi-transparent text",
    textColor: PrintColor.white,
    textBlink: TextBlink.semiOpacity,
  );

  PrettyPrint.log(
    "Slow blinking text",
    textColor: PrintColor.red,
    textBlink: TextBlink.slowBlink,
  );

  PrettyPrint.log(
    "Fast blinking text",
    textColor: PrintColor.green,
    textBlink: TextBlink.fastBlink,
  );

  print("Hidden text (next line is invisible):");
  PrettyPrint.log("This text is hidden!", textBlink: TextBlink.hide);
  print('');

  "🔸 TextThroughLine Effects (formerly TextDone)".boldYellow();
  print('');

  PrettyPrint.log(
    "This text has line-through",
    textColor: PrintColor.magenta,
    textThroughLine: TextThroughLine.lineThrough,
  );

  PrettyPrint.log(
    "Normal text without line-through",
    textColor: PrintColor.cyan,
    textThroughLine: TextThroughLine.none,
  );
  print('');

  "🔸 Combined Effects".boldYellow();
  print('');

  PrettyPrint.log(
    "Blinking + Line-through + Bold",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
    textBlink: TextBlink.slowBlink,
    textThroughLine: TextThroughLine.lineThrough,
  );
  print('');

  "✅ Enum renaming completed successfully!".boldGreen();
  "   • AlphaAndAnim → TextBlink".cyan();
  "   • TextDone → TextThroughLine".cyan();

  "".separator(PrintColor.red, 60);
}

/// Section 7: Development & Debug Demo
void _developmentDebugDemo() {
  "7. DEVELOPMENT & DEBUG EXAMPLES".header(PrintColor.magenta);
  print('');

  "🔧 Development Workflow".boldYellow();
  print('');

  "Add authentication middleware".todo();
  "Optimize database queries in user service".fixme();
  "Cache implementation is working correctly".note();
  "User authentication flow completed".debugPrint();
  print('');

  "🔍 Variable Inspection".boldYellow();
  print('');

  "currentUser".variable("john_doe");
  "isAdmin".variable(false);
  "sessionTimeout".variable(3600);
  "apiKey".variable("sk_test_123456789");
  print('');

  "📊 Performance Monitoring".boldYellow();
  print('');

  "API endpoint response time: 89ms".benchmark();
  "Current heap size: 145MB".memory();
  "Outgoing HTTP request to payment service".network();
  "SELECT * FROM users WHERE active = true".database();
  print('');

  "🔒 Security & Configuration".boldYellow();
  print('');

  "Invalid authentication token detected".security();
  "Loading database configuration".config();
  "User must be logged in to access resource".assertion();
  "Function getUserData() is deprecated".deprecated();
  "New ML-based recommendation engine active".experimental();

  "".separator(PrintColor.magenta, 60);
}

/// Section 8: Comprehensive Extensions Demo
void _comprehensiveExtensionsDemo() {
  "8. COMPREHENSIVE EXTENSION SHOWCASE".header(PrintColor.cyan);
  print('');

  "🌈 Rainbow Effect".boldYellow();
  print('');

  "Hello, Beautiful World!".rainbow();
  print('');

  "🎨 Advanced Formatting".boldYellow();
  print('');

  "Application Title".header(PrintColor.cyan);
  print('');

  "Important Message".box(PrintColor.green);
  print('');

  "Critical Alert!".doubleBox(PrintColor.red);
  print('');

  "Left aligned text".leftAlign(30, PrintColor.blue);
  "Right aligned text".rightAlign(30, PrintColor.blue);
  "Centered text".center(30, PrintColor.blue);
  print('');

  "🔗 Chaining Examples".boldYellow();
  print('');

  "Success".withPrefix("✓", PrintColor.green);
  "Loading".withSuffix("...", PrintColor.yellow);
  "Error occurred".withPrefix("✗", PrintColor.red);
  print('');

  "📋 Lists and Bullets".boldYellow();
  print('');

  "First item".bullet("•", PrintColor.green);
  "Second item".bullet("→", PrintColor.green);
  "Third item".bullet("★", PrintColor.green);
  print('');

  "Setup instructions:".boldWhite();
  "Install dependencies".numbered(1, PrintColor.cyan);
  "Configure environment".numbered(2, PrintColor.cyan);
  "Run application".numbered(3, PrintColor.cyan);
  print('');

  "💬 Text Formatting".boldYellow();
  print('');

  "To be or not to be, that is the question".quote();
  "console.log('Hello, World!')".code();
  "This is a nested comment".indent(4, PrintColor.yellow);
  "Even more nested".indent(8, PrintColor.yellow);

  "".separator(PrintColor.cyan, 60);
}

/// Final message and summary
void _finalMessage() {
  "🎉 DEMONSTRATION COMPLETE".header(PrintColor.green);
  print('');

  "Congratulations! You've seen ALL features of pretty_print!".boldGreen();
  print('');

  "📊 SUMMARY OF FEATURES DEMONSTRATED:".boldWhite();
  "✓ Basic text colors (8 colors)".bullet("", PrintColor.green);
  "✓ Background colors (8 colors)".bullet("", PrintColor.green);
  "✓ Text styling (bold, italic, underline, strikethrough)".bullet(
    "",
    PrintColor.green,
  );
  "✓ Special effects (blinking, opacity, hide)".bullet("", PrintColor.green);
  "✓ 75+ string extension methods across 5 categories".bullet(
    "",
    PrintColor.green,
  );
  "✓ Logging methods (success, info, warning, error, debug, etc.)".bullet(
    "",
    PrintColor.green,
  );
  "✓ Styling methods (bold, italic, blink, etc.)".bullet("", PrintColor.green);
  "✓ Color methods (red, green, blue, rainbow, etc.)".bullet(
    "",
    PrintColor.green,
  );
  "✓ Formatting methods (box, header, separator, etc.)".bullet(
    "",
    PrintColor.green,
  );
  "✓ Debug methods (todo, fixme, variable, benchmark, etc.)".bullet(
    "",
    PrintColor.green,
  );
  "✓ Real-world examples (CLI apps, logging, status messages)".bullet(
    "",
    PrintColor.green,
  );
  "✓ New enum names (TextBlink, TextThroughLine)".bullet("", PrintColor.green);
  print('');

  "🚀 NEXT STEPS:".boldWhite();
  "Explore the organized extension files in lib/src/extensions/".cyan();
  "Check out the individual example files for focused demos".cyan();
  "Visit: https://pub.dev/packages/pretty_print for documentation".cyan();
  "GitHub: https://github.com/mohamedmaher-dev/pretty_print".cyan();
  print('');

  "Thank you for exploring pretty_print! ❤️".boldMagenta();
  "Happy coding with beautiful terminal output! 🎨".rainbow();
}

/// Helper function to log with timestamp
void _logWithTimestamp(String message, String level) {
  final timestamp = DateTime.now().toString().substring(0, 19);

  switch (level) {
    case "SUCCESS":
      PrettyPrint.log(
        "[$timestamp] [SUCCESS] $message",
        textColor: PrintColor.green,
        textWeight: TextWeight.bold,
      );
      break;
    case "INFO":
      PrettyPrint.log(
        "[$timestamp] [INFO] $message",
        textColor: PrintColor.cyan,
      );
      break;
    case "WARNING":
      PrettyPrint.log(
        "[$timestamp] [WARNING] $message",
        textColor: PrintColor.yellow,
        textWeight: TextWeight.bold,
      );
      break;
    case "ERROR":
      PrettyPrint.log(
        "[$timestamp] [ERROR] $message",
        textColor: PrintColor.red,
        textWeight: TextWeight.bold,
      );
      break;
    default:
      PrettyPrint.log("[$timestamp] [$level] $message");
  }
}
