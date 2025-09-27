# 🎨 Pretty Print

[![pub package](https://img.shields.io/pub/v/pretty_print.svg)](https://pub.dev/packages/pretty_print)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A beautiful and customizable Dart library for printing colored and styled text to the terminal using ANSI escape codes. Perfect for CLI applications, debugging, and adding visual flair to your console output!

## ✨ Features

- 🎨 **8 Beautiful Colors**: Black, Red, Green, Yellow, Blue, Magenta, Cyan, White
- 🖼️ **Background Colors**: Apply any color as background
- 🎭 **Text Styling**: Bold, Italic, Underline, Strikethrough
- ✨ **Special Effects**: Blinking animations, opacity control, hidden text
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
// Simple colored text
PrettyPrint.pprint("Hello World!", textColor: PrintColor.green);

// Bold text
PrettyPrint.pprint("Important!", textWeight: TextWeight.bold);

// Text with background color
PrettyPrint.pprint(" SUCCESS ",
  textColor: PrintColor.white,
  backColor: PrintColor.green
);
```

### Advanced Styling

```dart
// Combine multiple styles
PrettyPrint.pprint("Warning!",
  textColor: PrintColor.yellow,
  textWeight: TextWeight.bold,
  textUnderline: TextUnderLine.underline
);

// Animated text
PrettyPrint.pprint("Loading...",
  textColor: PrintColor.cyan,
  textAlphaAnim: AlphaAndAnim.slowAnim
);

// Italic text with background
PrettyPrint.pprint("Stylish text",
  textColor: PrintColor.white,
  backColor: PrintColor.magenta,
  textItalic: TextItalic.italic
);
```

### Common Use Cases

#### Success/Error Messages

```dart
// Success message
PrettyPrint.pprint(" ✓ SUCCESS ",
  textColor: PrintColor.white,
  backColor: PrintColor.green,
  textWeight: TextWeight.bold
);

// Error message
PrettyPrint.pprint(" ✗ ERROR ",
  textColor: PrintColor.white,
  backColor: PrintColor.red,
  textWeight: TextWeight.bold
);

// Warning message
PrettyPrint.pprint(" ⚠ WARNING ",
  textColor: PrintColor.black,
  backColor: PrintColor.yellow,
  textWeight: TextWeight.bold
);
```

#### Progress Indicators

```dart
// Loading with animation
PrettyPrint.pprint("🔄 Loading...",
  textColor: PrintColor.cyan,
  textAlphaAnim: AlphaAndAnim.slowAnim
);

// Completed task
PrettyPrint.pprint("✅ Task completed",
  textColor: PrintColor.green,
  textDone: TextDone.done  // Strikethrough
);
```

#### Debug Information

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
  textAlphaAnim: AlphaAndAnim.hide
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
- `TextDone.done` (strikethrough) / `TextDone.none`

### Special Effects (`AlphaAndAnim`)

- `AlphaAndAnim.semiOpacity` - Semi-transparent text
- `AlphaAndAnim.hide` - Hidden text
- `AlphaAndAnim.slowAnim` - Slow blinking
- `AlphaAndAnim.fastAnim` - Fast blinking
- `AlphaAndAnim.none` (default)

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
  PrettyPrint.pprint("Blinking text", textAlphaAnim: AlphaAndAnim.slowAnim);
  PrettyPrint.pprint("Semi-transparent", textAlphaAnim: AlphaAndAnim.semiOpacity);

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
