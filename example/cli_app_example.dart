/// Example of using pretty_print in a CLI application.
///
/// This example demonstrates how to use pretty_print to create
/// a beautiful command-line interface with status messages,
/// progress indicators, and user interactions.
///
/// Run with: dart run example/cli_app_example.dart
library;

import 'package:pretty_print/pretty_print.dart';

void main() async {
  await runCLIApp();
}

/// Simulates a complete CLI application workflow
Future<void> runCLIApp() async {
  // App header
  _printAppHeader();

  // User input
  await _getUserInput();

  // Processing simulation
  await _simulateProcessing();

  // Results
  _showResults();

  // App footer
  _printAppFooter();
}

/// Prints application header
void _printAppHeader() {
  print('');
  PrettyPrint.pprint(
    "╔══════════════════════════════════════╗",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "║          🚀 CLI Application          ║",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "║         Data Processing Tool         ║",
    textColor: PrintColor.cyan,
  );
  PrettyPrint.pprint(
    "╚══════════════════════════════════════╝",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');
}

/// Simulates user input
Future<void> _getUserInput() async {
  PrettyPrint.pprint(
    "📋 Configuration",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Simulate user selections
  PrettyPrint.pprint("→ Select data source:", textColor: PrintColor.white);
  await Future.delayed(Duration(milliseconds: 500));
  PrettyPrint.pprint("  ✓ Local files", textColor: PrintColor.green);

  await Future.delayed(Duration(milliseconds: 300));
  PrettyPrint.pprint("→ Choose output format:", textColor: PrintColor.white);
  await Future.delayed(Duration(milliseconds: 500));
  PrettyPrint.pprint("  ✓ JSON", textColor: PrintColor.green);

  await Future.delayed(Duration(milliseconds: 300));
  PrettyPrint.pprint("→ Set processing options:", textColor: PrintColor.white);
  await Future.delayed(Duration(milliseconds: 500));
  PrettyPrint.pprint("  ✓ Validate data", textColor: PrintColor.green);
  PrettyPrint.pprint("  ✓ Remove duplicates", textColor: PrintColor.green);
  print('');
}

/// Simulates processing with progress indicators
Future<void> _simulateProcessing() async {
  PrettyPrint.pprint(
    "⚙️ Processing",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Step 1: Loading
  PrettyPrint.pprint(
    "🔄 Loading data files...",
    textColor: PrintColor.cyan,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );
  await Future.delayed(Duration(seconds: 1));
  PrettyPrint.pprint(
    " ✓ SUCCESS ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint("   Loaded 1,234 records", textColor: PrintColor.green);
  print('');

  // Step 2: Validation
  PrettyPrint.pprint(
    "🔍 Validating data integrity...",
    textColor: PrintColor.cyan,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );
  await Future.delayed(Duration(milliseconds: 800));
  PrettyPrint.pprint(
    " ⚠ WARNING ",
    textColor: PrintColor.black,
    backColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "   Found 3 invalid records (fixed automatically)",
    textColor: PrintColor.yellow,
  );
  print('');

  // Step 3: Processing
  PrettyPrint.pprint(
    "⚙️ Processing records...",
    textColor: PrintColor.cyan,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );

  // Simulate progress
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    PrettyPrint.pprint("   Processing batch $i/5", textColor: PrintColor.white);
  }

  PrettyPrint.pprint(
    " ✓ SUCCESS ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint("   Processed 1,231 records", textColor: PrintColor.green);
  print('');

  // Step 4: Saving
  PrettyPrint.pprint(
    "💾 Saving results...",
    textColor: PrintColor.cyan,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );
  await Future.delayed(Duration(milliseconds: 600));
  PrettyPrint.pprint(
    " ✓ SUCCESS ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "   Saved to: output/results.json",
    textColor: PrintColor.green,
  );
  print('');
}

/// Shows final results
void _showResults() {
  PrettyPrint.pprint(
    "📊 Results Summary",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Statistics
  PrettyPrint.pprint(
    "📈 Statistics:",
    textColor: PrintColor.white,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "  • Total records processed: 1,234",
    textColor: PrintColor.cyan,
  );
  PrettyPrint.pprint("  • Valid records: 1,231", textColor: PrintColor.green);
  PrettyPrint.pprint("  • Invalid records: 3", textColor: PrintColor.yellow);
  PrettyPrint.pprint(
    "  • Processing time: 2.4 seconds",
    textColor: PrintColor.cyan,
  );
  print('');

  // Files created
  PrettyPrint.pprint(
    "📁 Output files:",
    textColor: PrintColor.white,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "  ✓ output/results.json (45.2 KB)",
    textColor: PrintColor.green,
  );
  PrettyPrint.pprint(
    "  ✓ output/validation_log.txt (1.8 KB)",
    textColor: PrintColor.green,
  );
  print('');

  // Success message
  PrettyPrint.pprint(
    " 🎉 PROCESSING COMPLETED SUCCESSFULLY! ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  print('');
}

/// Prints application footer
void _printAppFooter() {
  PrettyPrint.pprint(
    "═══════════════════════════════════════",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "Thank you for using our CLI tool! 🙏",
    textColor: PrintColor.magenta,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "For help, visit: https://github.com/mohamedmaher-dev/pretty_print",
    textColor: PrintColor.blue,
    textUnderline: TextUnderLine.underline,
  );
  PrettyPrint.pprint(
    "═══════════════════════════════════════",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');
}
