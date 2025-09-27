/// Example demonstrating all features of the pretty_print package.
///
/// This example showcases:
/// - All available colors
/// - Text styling options
/// - Background colors
/// - Special effects and animations
/// - Real-world use cases
///
/// Run this example with: dart run example/example.dart
library;

import 'package:pretty_print/pretty_print.dart';

void main() {
  // Welcome header
  _printHeader();

  // Demonstrate all colors
  _demonstrateColors();

  // Demonstrate text styling
  _demonstrateTextStyling();

  // Demonstrate background colors
  _demonstrateBackgroundColors();

  // Demonstrate special effects
  _demonstrateSpecialEffects();

  // Show real-world use cases
  _demonstrateUseCases();

  // Footer
  _printFooter();
}

/// Prints a welcome header with styling
void _printHeader() {
  print('\n');
  PrettyPrint.pprint(
    "========================================",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "        🎨 PRETTY PRINT DEMO 🎨        ",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "========================================",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');
}

/// Demonstrates all available text colors
void _demonstrateColors() {
  PrettyPrint.pprint(
    "🎨 TEXT COLORS DEMONSTRATION",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
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
    PrettyPrint.pprint("● $name text", textColor: color);
  }
  print('');
}

/// Demonstrates text styling options
void _demonstrateTextStyling() {
  PrettyPrint.pprint(
    "✨ TEXT STYLING DEMONSTRATION",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  PrettyPrint.pprint("Normal text weight", textWeight: TextWeight.normal);
  PrettyPrint.pprint("Bold text weight", textWeight: TextWeight.bold);
  PrettyPrint.pprint("Italic text style", textItalic: TextItalic.italic);
  PrettyPrint.pprint("Underlined text", textUnderline: TextUnderLine.underline);
  PrettyPrint.pprint("Strikethrough text", textDone: TextDone.done);

  // Combined styling
  PrettyPrint.pprint(
    "Bold + Italic + Underlined",
    textWeight: TextWeight.bold,
    textItalic: TextItalic.italic,
    textUnderline: TextUnderLine.underline,
    textColor: PrintColor.magenta,
  );
  print('');
}

/// Demonstrates background colors
void _demonstrateBackgroundColors() {
  PrettyPrint.pprint(
    "🖼️ BACKGROUND COLORS DEMONSTRATION",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
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
    PrettyPrint.pprint(
      " $text ",
      textColor: textColor,
      backColor: backColor,
      textWeight: TextWeight.bold,
    );
  }
  print('');
}

/// Demonstrates special effects and animations
void _demonstrateSpecialEffects() {
  PrettyPrint.pprint(
    "🎭 SPECIAL EFFECTS DEMONSTRATION",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  PrettyPrint.pprint(
    "Semi-transparent text",
    textColor: PrintColor.white,
    textAlphaAnim: AlphaAndAnim.semiOpacity,
  );

  PrettyPrint.pprint(
    "Slow blinking animation",
    textColor: PrintColor.red,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );

  PrettyPrint.pprint(
    "Fast blinking animation",
    textColor: PrintColor.green,
    textAlphaAnim: AlphaAndAnim.fastAnim,
  );

  print("Hidden text (next line is invisible):");
  PrettyPrint.pprint("This text is hidden!", textAlphaAnim: AlphaAndAnim.hide);
  print('');
}

/// Demonstrates real-world use cases
void _demonstrateUseCases() {
  PrettyPrint.pprint(
    "🚀 REAL-WORLD USE CASES",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Status messages
  print("📋 Status Messages:");
  PrettyPrint.pprint(
    " ✓ SUCCESS ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint(
    " ⚠ WARNING ",
    textColor: PrintColor.black,
    backColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint(
    " ✗ ERROR ",
    textColor: PrintColor.white,
    backColor: PrintColor.red,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint(
    " ℹ INFO ",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  print('');

  // Progress indicators
  print("🔄 Progress Indicators:");
  PrettyPrint.pprint(
    "🔄 Loading data...",
    textColor: PrintColor.cyan,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );

  PrettyPrint.pprint(
    "✅ Task completed successfully",
    textColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint("📁 Processing files...", textColor: PrintColor.yellow);
  print('');

  // Debug information
  print("🐛 Debug Information:");
  PrettyPrint.pprint(
    "[DEBUG] Application started",
    textColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint(
    "[INFO] User logged in: john@example.com",
    textColor: PrintColor.cyan,
  );

  PrettyPrint.pprint(
    "[WARN] Deprecated function called",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint(
    "[ERROR] Failed to connect to database",
    textColor: PrintColor.red,
    textWeight: TextWeight.bold,
  );
  print('');

  // CLI interface elements
  print("💻 CLI Interface Elements:");
  PrettyPrint.pprint(
    r"$ Command executed successfully",
    textColor: PrintColor.green,
  );

  PrettyPrint.pprint(
    "> User input prompt",
    textColor: PrintColor.white,
    textWeight: TextWeight.bold,
  );

  PrettyPrint.pprint(
    "→ Step 1: Initialize project",
    textColor: PrintColor.cyan,
  );

  PrettyPrint.pprint(
    "✓ Step 2: Install dependencies",
    textColor: PrintColor.green,
    textDone: TextDone.done,
  );
  print('');
}

/// Prints a closing footer
void _printFooter() {
  PrettyPrint.pprint(
    "========================================",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "         Demo completed! 🎉           ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "   Thanks for using pretty_print! ❤️   ",
    textColor: PrintColor.magenta,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "========================================",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');

  // Instructions
  print(
    "Try modifying the examples above to experiment with different combinations!",
  );
  print("Visit: https://pub.dev/packages/pretty_print for documentation");
  print("GitHub: https://github.com/mohamedmaher-dev/pretty_print");
}
