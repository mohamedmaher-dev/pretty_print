# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2025-10-04

### 🚨 BREAKING CHANGES

- **Method Rename**: `PrettyPrint.pprint()` → `PrettyPrint.log()`
- **Enum Rename**: `AlphaAndAnim` → `TextBlink`
- **Enum Rename**: `TextDone` → `TextThroughLine`
- **Parameter Rename**: `textAlphaAnim` → `textBlink`
- **Parameter Rename**: `textDone` → `textThroughLine`
- **Removed Static Methods**: `PrettyPrint.success()`, `info()`, `warning()`, `error()` (replaced with string extensions)

### ✨ NEW FEATURES

- **🎯 75+ String Extension Methods**: Comprehensive fluent API for terminal styling
- **📋 Logging Extensions**: `.successLog()`, `.infoLog()`, `.warningLog()`, `.errorLog()`, `.debugLog()`, `.criticalLog()`, `.traceLog()`, `.performanceLog()`
- **🎨 Styling Extensions**: `.bold()`, `.italic()`, `.underline()`, `.lineThrough()`, `.blink()`, `.fastBlink()`, `.dim()`, `.hide()`, `.boldUnderline()`, `.italicUnderline()`, `.allEffects()`
- **🌈 Color Extensions**: `.red()`, `.green()`, `.blue()`, `.onRed()`, `.onGreen()`, `.boldRed()`, `.boldGreen()`, `.rainbow()`, and 25+ more
- **📐 Formatting Extensions**: `.header()`, `.box()`, `.doubleBox()`, `.separator()`, `.leftAlign()`, `.center()`, `.bullet()`, `.numbered()`, `.indent()`, `.quote()`, `.code()`, and more
- **🐛 Debug Extensions**: `.todo()`, `.fixme()`, `.note()`, `.debugPrint()`, `.inspect()`, `.variable()`, `.benchmark()`, `.memory()`, `.network()`, `.security()`, and more

### 🏗️ ARCHITECTURE IMPROVEMENTS

- **Modular Extensions**: Split string extensions into categorized files:
  - `string_logging_ext.dart` - Logging methods (8 methods)
  - `string_styling_ext.dart` - Text styling (12 methods)
  - `string_colors_ext.dart` - Color applications (25+ methods)
  - `string_formatting_ext.dart` - Layout and formatting (16 methods)
  - `string_debug_ext.dart` - Development and debugging (16 methods)

### 📚 DOCUMENTATION & EXAMPLES

- **Visual Showcase**: Added screenshots in README.md
- **Consolidated Examples**: Single comprehensive `example/example.dart` file
- **Enhanced API Reference**: Complete documentation of all 75+ methods
- **Professional Usage Examples**: Real-world CLI application patterns

### 🔧 TECHNICAL IMPROVEMENTS

- **Better Enum Naming**: More intuitive and consistent enum names
- **Improved Parameter Names**: Clearer parameter naming conventions
- **Enhanced Type Safety**: Better type definitions and documentation
- **Performance Optimizations**: More efficient string processing

### 📦 MIGRATION GUIDE

#### Method Renaming

```dart
// Old (v1.x)
PrettyPrint.pprint("Hello", textColor: PrintColor.red);

// New (v2.x)
PrettyPrint.log("Hello", textColor: PrintColor.red);
```

#### Enum Renaming

```dart
// Old (v1.x)
PrettyPrint.pprint("Text", textAlphaAnim: AlphaAndAnim.slowAnim, textDone: TextDone.done);

// New (v2.x)
PrettyPrint.log("Text", textBlink: TextBlink.slowBlink, textThroughLine: TextThroughLine.lineThrough);
```

#### Status Messages

```dart
// Old (v1.x)
PrettyPrint.success("Operation completed");
PrettyPrint.error("Something went wrong");

// New (v2.x) - Use string extensions
"Operation completed".successLog();
"Something went wrong".errorLog();
```

#### Extension Methods (New in v2.x)

```dart
// Beautiful fluent API
"Important text".bold().red();
"Debug info".todo();
"Server status".header();
"List item".bullet();
"Code example".code();
```

## [1.0.0] - 2025-09-27

### Added

- 🎨 **Complete color support**: 8 beautiful colors for text and background (black, red, green, yellow, blue, magenta, cyan, white)
- 🎭 **Rich text styling**: Bold, italic, underline, and strikethrough text formatting
- ✨ **Special effects**: Blinking animations (slow/fast), semi-transparency, and hidden text
- 🚀 **Easy-to-use API**: Simple `PrettyPrint.pprint()` method with intuitive parameters
- 📦 **Zero dependencies**: Lightweight package with no external dependencies
- 🎯 **Type safety**: Full Dart type safety with comprehensive enums
- 🌐 **Cross-platform**: Works on Windows, macOS, and Linux terminals
- 📚 **Comprehensive documentation**: Detailed API documentation with examples
- 🎨 **Beautiful examples**: Complete example file showcasing all features
- 🧪 **Production ready**: Thoroughly tested and documented

### Features

- **PrettyPrint class**: Main class for printing styled text
- **PrintColor enum**: 8 colors plus none option for text and background colors
- **TextWeight enum**: Normal and bold text weight options
- **TextItalic enum**: Italic text styling
- **TextUnderLine enum**: Underline text decoration
- **TextDone enum**: Strikethrough text decoration
- **AlphaAndAnim enum**: Opacity and animation effects (semi-opacity, hide, slow/fast blinking)
- **ANSI escape codes**: Full ANSI terminal formatting support
- **Customizable styling**: Mix and match any combination of colors and styles

### Documentation

- Complete README with usage examples and terminal compatibility information
- Comprehensive API documentation for all classes and methods
- Real-world use case examples (status messages, progress indicators, debug info)
- Getting started guide and installation instructions

### Examples

- Basic color and styling examples
- Advanced multi-style combinations
- Status message templates (success, warning, error, info)
- Progress indicator patterns
- Debug and logging use cases
- CLI interface element styling

This initial release provides a complete, production-ready solution for terminal text formatting in Dart applications.

[2.0.0]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v2.0.0
[1.0.0]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v1.0.0
