import 'package:pretty_print/pretty_print.dart';

void main() {
  // Welcome header
  "🎨 Pretty Print v2.0+ - Grouped Extensions Demo".formatting.header();

  // Logging examples
  "\n📝 Logging Methods".styling.bold(PrintColor.yellow);
  "Operation completed successfully!".logging.successLog();
  "Application started".logging.infoLog();
  "This feature is deprecated".logging.warningLog();
  "Failed to connect to database".logging.errorLog();
  "Debugging user authentication".logging.debugLog();
  "Critical system failure".logging.criticalLog();
  "Entering function".logging.traceLog();
  "Database query took 150ms".logging.performanceLog();

  "".formatting.separator();

  // Styling examples
  "\n🎭 Text Styling Methods".styling.bold(PrintColor.yellow);
  "Bold text".styling.bold();
  "Italic text".styling.italic();
  "Underlined text".styling.underline();
  "Strikethrough text".styling.lineThrough();
  "Blinking text".styling.blink();
  "Bold + Underlined".styling.boldUnderline();
  "All effects combined".styling.allEffects();

  "".formatting.separator();

  // Color examples
  "\n🌈 Color Methods".styling.bold(PrintColor.yellow);
  "Red text".colors.red();
  "Green text".colors.green();
  "Blue text".colors.blue();
  "Yellow text".colors.yellow();
  "Text on red background".colors.onRed();
  "Text on green background".colors.onGreen();
  "Bold red".colors.boldRed();
  "Bold green".colors.boldGreen();

  "".formatting.separator();

  // Formatting examples
  "\n📋 Formatting Methods".styling.bold(PrintColor.yellow);

  "Boxed Content".formatting.box();

  "Double Box Content".formatting.doubleBox();

  "".formatting.separator();
  "Bullet item 1".formatting.bullet();
  "Bullet item 2".formatting.bullet();
  "Numbered item".formatting.numbered(1);
  "Numbered item".formatting.numbered(2);
  "    Indented text".formatting.indent(2);
  "Famous quote here".formatting.quote();
  "console.log('Hello')".formatting.code();

  "".formatting.separator();

  // Debug examples
  "\n🐛 Debug Methods".styling.bold(PrintColor.yellow);

  "Variable inspection".debug.debugPrint();
  "Fix this later".debug.todo();
  "This needs attention".debug.fixme();
  "Important note".debug.note();
  "Response data".debug.inspect();
  "Performance check".debug.benchmark();
  "Memory usage".debug.memory();
  "API call status".debug.network();
  "userName".debug.variable("john_doe");
  "User is authenticated".debug.assertion();
  "Old method usage".debug.deprecated();
  "New feature test".debug.experimental();

  "".formatting.separator();

  // Advanced examples
  "\n✨ Advanced Formatting".styling.bold(PrintColor.yellow);

  "Rainbow text!".colors.rainbow();

  "\n📊 Layout Examples".styling.bold(PrintColor.yellow);

  "Left aligned".formatting.leftAlign(30);
  "Right aligned".formatting.rightAlign(30);
  "Centered".formatting.center(30);

  "\n🔧 Utility Methods".styling.bold(PrintColor.yellow);

  "Hello".formatting.withPrefix(">>> ");
  "World".formatting.withSuffix(" <<<");
  "Prefixed".formatting.withPrefix("🎯 ");

  "\n📝 List Formatting".styling.bold(PrintColor.yellow);

  "First item".formatting.bullet();
  "Second item".formatting.bullet();
  "Third item".formatting.bullet();

  "\n🔢 Numbered Lists".styling.bold(PrintColor.white);
  "Setup environment".formatting.numbered(1);
  "Install dependencies".formatting.numbered(2);
  "Run tests".formatting.numbered(3);

  "\n💬 Text Formatting".styling.bold(PrintColor.yellow);

  "This is a famous quote from someone".formatting.quote();
  "function helloWorld() { return 'Hello!'; }".formatting.code();
  "Normal text".formatting.indent(0);
  "    Indented once".formatting.indent(1);

  "".formatting.separator();

  // Comprehensive demo
  "\n🎯 Comprehensive Demo".formatting.header();

  "This demo showcases the new grouped extension API!".styling.bold(
    PrintColor.green,
  );

  "\n✅ Benefits:".styling.bold(PrintColor.white);
  "Organized methods by category".formatting.bullet();
  "Cleaner IDE autocomplete".formatting.bullet();
  "Better discoverability of features".formatting.bullet();

  "\n🎨 Usage Pattern:".styling.bold(PrintColor.white);
  'string.logging.successLog()    // For logging'.colors.cyan();
  'string.styling.bold()          // For text styling'.colors.cyan();
  'string.colors.red()            // For colors'.colors.cyan();
  'string.formatting.box()        // For layout'.colors.cyan();
  'string.debug.debugPrint()      // For debugging'.colors.cyan();

  "\n🚀 Try the new API!".styling.bold(PrintColor.magenta);
  "Visit pub.dev/packages/pretty_print for more info".colors.rainbow();
}
