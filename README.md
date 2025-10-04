# 🎨 Pretty Print

[![pub package](https://img.shields.io/pub/v/pretty_print.svg)](https://pub.dev/packages/pretty_print)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A beautiful and customizable Dart library for printing colored and styled text to the terminal using ANSI escape codes. Perfect for CLI applications, debugging, and adding visual flair to your console output!

## 🖼️ Visual Showcase

### 🎨 Colors & Text Styling

![Colors and Styling](assets/Screenshot%20from%202025-10-04%2014-52-24.png)

### 📋 Status Messages & Extensions

![Status Messages](assets/Screenshot%20from%202025-10-04%2014-52-34.png)

### 🎭 Advanced Formatting & Effects

![Advanced Effects](assets/Screenshot%20from%202025-10-04%2014-52-48.png)

> 🚀 **Try it yourself**: Run `dart run example/example.dart` to see all features in action!

## ✨ Features

- 🎨 **8 Beautiful Colors**: Black, Red, Green, Yellow, Blue, Magenta, Cyan, White
- 🖼️ **Background Colors**: Apply any color as background
- 🎭 **Text Styling**: Bold, Italic, Underline, Strikethrough
- ✨ **Special Effects**: Blinking animations, opacity control, hidden text
- 🔗 **75+ Extension Methods**: Organized into 5 categories (Logging, Styling, Colors, Formatting, Debug)
- 🚀 **Easy to Use**: Simple, intuitive API with sensible defaults
- 🌐 **Cross-Platform**: Works on Windows, macOS, and Linux terminals
- 📦 **Zero Dependencies**: Lightweight and fast
- 🎯 **Type Safe**: Full Dart type safety with enums

## 🚀 Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  pretty_print: ^1.0.0
```

Then run:

```bash
dart pub get
```

## 📖 Usage

Import the package:

```dart
import 'package:pretty_print/pretty_print.dart';
```

### Basic Examples

```dart
// Traditional method
PrettyPrint.log("Hello World!", textColor: PrintColor.green);
PrettyPrint.log("Important!", textWeight: TextWeight.bold);

// Extension methods (recommended!)
"Success message".successLog();        // ✓ SUCCESS + green text
"Error occurred".errorLog();           // ✗ ERROR + red text
"Bold text".bold(PrintColor.red);      // Bold red text
"Important notice".box();              // Boxed text
```

### 🔗 Extension Methods Showcase

```dart
// Logging extensions
"Database connected".successLog();
"Loading configuration".infoLog();
"Deprecated method".warningLog();
"Connection failed".errorLog();
"Debug information".debugLog();

// Styling extensions
"Bold text".bold();
"Italic text".italic();
"Underlined text".underline();
"Blinking text".blink();

// Color extensions
"Red text".red();
"Green text".green();
" Alert ".onRed();                     // Red background
"Bold blue text".boldBlue();

// Formatting extensions
"Application Title".header();
"Important message".box();
"Critical alert".doubleBox();
"First item".bullet();
"Step 1".numbered(1);

// Debug extensions
"Fix this bug".todo();                 // 📝 TODO
"Memory usage: 256MB".memory();        // 💾 MEMORY
"API took 89ms".benchmark();           // ⏱️ PERF
"userId".variable("12345");            // 🔢 Variable
```

## 🎨 Advanced Usage

### Traditional Method

```dart
// Combine multiple styles
PrettyPrint.log("Warning!",
  textColor: PrintColor.yellow,
  textWeight: TextWeight.bold,
  textUnderline: TextUnderLine.underline
);

// Animated text
PrettyPrint.log("Loading...",
  textColor: PrintColor.cyan,
  textBlink: TextBlink.slowBlink
);
```

### Extension Method Combinations

```dart
// Chain multiple effects
"Critical Alert!".onRed().bold().blink();

// Professional output
"System Status Report".header();
"CPU Usage: 45%".benchmark();
"Memory: 256MB".memory();
"All systems operational".successLog();
```

## 🚀 Common Use Cases

### Status Messages (Quick & Easy!)

```dart
// Using extension methods (recommended)
"Operation completed successfully".successLog();
"Loading user preferences".infoLog();
"API endpoint deprecated".warningLog();
"Connection failed".errorLog();
"System debug info".debugLog();
```

### CLI Applications

```dart
"🚀 Application Startup".header();
"Loading configuration...".infoLog();
"Database connected".successLog();

"📊 System Status".box();
"CPU: 45%".benchmark();
"Memory: 256MB".memory();
"Connections: 1,247".network();
```

### Development & Debugging

```dart
"Add user authentication".todo();
"Fix memory leak in cache".fixme();
"Performance looks good".note();

"userId".variable("user_123");
"isAuthenticated".variable(true);
"responseTime".variable("89ms");
```

### Professional Output

```dart
"Application Report".header();
"".separator();

"System Metrics".leftAlign(20);
"Status: Online".rightAlign(15, PrintColor.green);

"Last Updated".leftAlign(20);
DateTime.now().toString().rightAlign(25, PrintColor.cyan);
```

## 📚 API Reference

### 🎨 Available Colors

- `PrintColor.black`, `PrintColor.red`, `PrintColor.green`, `PrintColor.yellow`
- `PrintColor.blue`, `PrintColor.magenta`, `PrintColor.cyan`, `PrintColor.white`

### 🎭 Text Styling Options

- `TextWeight.bold` / `TextWeight.normal`
- `TextItalic.italic` / `TextItalic.none`
- `TextUnderLine.underline` / `TextUnderLine.none`
- `TextThroughLine.lineThrough` / `TextThroughLine.none`

### ✨ Special Effects

- `TextBlink.slowBlink` - Slow blinking animation
- `TextBlink.fastBlink` - Fast blinking animation
- `TextBlink.semiOpacity` - Semi-transparent text
- `TextBlink.hide` - Hidden text

### 🔗 Extension Categories (75+ Methods)

#### 📋 Logging (8 methods)

`successLog()`, `infoLog()`, `warningLog()`, `errorLog()`, `debugLog()`, `criticalLog()`, `traceLog()`, `performanceLog()`

#### 🎨 Styling (12 methods)

`bold()`, `italic()`, `underline()`, `lineThrough()`, `blink()`, `fastBlink()`, `dim()`, `hide()`, `boldUnderline()`, `italicUnderline()`, `allEffects()`

#### 🌈 Colors (25+ methods)

`red()`, `green()`, `blue()`, `onRed()`, `onGreen()`, `boldRed()`, `boldGreen()`, `rainbow()`, etc.

#### 📐 Formatting (16 methods)

`header()`, `box()`, `doubleBox()`, `separator()`, `leftAlign()`, `center()`, `bullet()`, `numbered()`, `indent()`, `quote()`, `code()`, etc.

#### 🐛 Debug (16 methods)

`todo()`, `fixme()`, `note()`, `debugPrint()`, `inspect()`, `variable()`, `benchmark()`, `memory()`, `network()`, `security()`, etc.

```dart
// Debug info
PrettyPrint.pprint("[DEBUG]",
  textColor: PrintColor.blue,
  textWeight: TextWeight.bold
);

// Info message
PrettyPrint.pprint("[INFO]",
  textColor: PrintColor.cyan
);

// Hidden sensitive data
PrettyPrint.pprint("Secret: password123",
  textBlink: TextBlink.hide
);
```

## 🎨 Available Options

### Colors (`PrintColor`)

- `PrintColor.black`
- `PrintColor.red`
- `PrintColor.green`
- `PrintColor.yellow`
- `PrintColor.blue`
- `PrintColor.magenta`
- `PrintColor.cyan`
- `PrintColor.white`
- `PrintColor.none` (default)

### Text Weight (`TextWeight`)

- `TextWeight.normal`
- `TextWeight.bold`
- `TextWeight.none` (default)

### Text Styling

- `TextItalic.italic` / `TextItalic.none`
- `TextUnderLine.underline` / `TextUnderLine.none`
- `TextThroughLine.lineThrough` (strikethrough) / `TextThroughLine.none`

### Blinking and Opacity Effects (`TextBlink`)

- `TextBlink.semiOpacity` - Semi-transparent text
- `TextBlink.hide` - Hidden text
- `TextBlink.slowBlink` - Slow blinking
- `TextBlink.fastBlink` - Fast blinking
- `TextBlink.none` (default)

## 🎯 Complete Example

```dart
import 'package:pretty_print/pretty_print.dart';

void main() {
  // Header
  PrettyPrint.pprint("=== PRETTY PRINT DEMO ===",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold
  );

  // Colors demonstration
  print("\n🎨 Colors:");
  PrettyPrint.pprint("Red", textColor: PrintColor.red);
  PrettyPrint.pprint("Green", textColor: PrintColor.green);
  PrettyPrint.pprint("Blue", textColor: PrintColor.blue);
  PrettyPrint.pprint("Yellow", textColor: PrintColor.yellow);

  // Styling demonstration
  print("\n✨ Styles:");
  PrettyPrint.pprint("Bold text", textWeight: TextWeight.bold);
  PrettyPrint.pprint("Italic text", textItalic: TextItalic.italic);
  PrettyPrint.pprint("Underlined text", textUnderline: TextUnderLine.underline);

  // Effects demonstration
  print("\n🎭 Effects:");
  PrettyPrint.log("Blinking text", textBlink: TextBlink.slowBlink);
  PrettyPrint.log("Semi-transparent", textBlink: TextBlink.semiOpacity);

  // Status messages
  print("\n📋 Status Messages:");
  PrettyPrint.pprint(" SUCCESS ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold
  );

  PrettyPrint.pprint(" WARNING ",
    textColor: PrintColor.black,
    backColor: PrintColor.yellow,
    textWeight: TextWeight.bold
  );

  PrettyPrint.pprint(" ERROR ",
    textColor: PrintColor.white,
    backColor: PrintColor.red,
    textWeight: TextWeight.bold
  );
}
```

## 🛠️ Terminal Compatibility

This package works with most modern terminals that support ANSI escape codes:

- ✅ **Windows**: Windows Terminal, PowerShell, Command Prompt (Windows 10+)
- ✅ **macOS**: Terminal.app, iTerm2, and other terminal emulators
- ✅ **Linux**: GNOME Terminal, Konsole, xterm, and most terminal emulators
- ✅ **IDEs**: VS Code integrated terminal, IntelliJ terminal, and others

## 🤝 Contributing

Contributions are welcome! If you have suggestions, bug reports, or want to contribute code:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Mohamed Maher** - [GitHub](https://github.com/mohamedmaher-dev)

- 📧 Email: mohamedmaher.personal@gmail.com
- 💼 LinkedIn: [Mohamed Maher](https://linkedin.com/in/mohamedmaher-dev)
- 🌍 Portfolio: [Portfolio Website](https://mohamedmaher-dev.github.io/portfolio)

## ⭐ Support

If you like this package, please give it a ⭐ on [GitHub](https://github.com/mohamedmaher-dev/pretty_print) and a 👍 on [pub.dev](https://pub.dev/packages/pretty_print)!

## 📚 More Packages

Check out my other packages:

- [`id_generator`](https://pub.dev/packages/id_generator) - Generate secure, customizable random IDs
- [`easy_in_app_notify`](https://pub.dev/packages/easy_in_app_notify) - Beautiful in-app notifications for Flutter
- [`mena`](https://pub.dev/packages/mena) - Middle East and North Africa country data utilities

---

Made with ❤️ by Mohamed Maher

```

```
