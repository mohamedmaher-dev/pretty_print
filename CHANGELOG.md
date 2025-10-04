# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.1.0] - 2025-10-04

### 🚀 NEW FEATURES

- **Grouped Extension API**: Complete redesign of string extension methods into logical groups

  - `.logging` - Status logging methods (successLog, errorLog, infoLog, warningLog, etc.)
  - `.styling` - Text styling methods (bold, italic, underline, lineThrough, etc.)
  - `.colors` - Color methods for text and backgrounds (red, green, onBlue, etc.)
  - `.formatting` - Layout and formatting methods (box, header, separator, alignment, etc.)
  - `.debug` - Development tools (debugPrint, variable, benchmark, memory, etc.)

- **Enhanced IDE Experience**: Better autocomplete and method discoverability through grouped organization
- **Improved API Design**: More intuitive and organized method access pattern
- **Comprehensive Documentation**: Extensive documentation with examples for all extension groups

### 🎨 IMPROVEMENTS

- **Better Organization**: Methods are now logically grouped by functionality
- **Enhanced Discoverability**: IDE autocomplete shows relevant methods for each category
- **Cleaner API**: Reduced namespace pollution with organized method groups
- **Maintainability**: Each group is in a separate file for easier maintenance

### 📚 DOCUMENTATION

- **Updated Library Documentation**: Complete rewrite of main library documentation
- **Grouped Extension Examples**: Comprehensive examples for all extension groups
- **Architecture Documentation**: Detailed explanation of the grouped extension system
- **Usage Patterns**: Clear guidance on how to use the new API effectively

### 🔧 TECHNICAL CHANGES

- **New Base Class System**: `PrettyPrintExtBase` for consistent extension group architecture
- **Organized File Structure**: Extension methods split into logical group files
- **Enhanced Type Safety**: Better type definitions and interfaces
- **Improved Example**: Updated example file showcasing all grouped extension features

### 📋 MIGRATION GUIDE

**Old API :**

```dart
"text".successLog();  // Direct extension method
"text".bold();        // Direct extension method
```

**New API (recommended):**

```dart
"text".logging.successLog();  // Grouped extension method
"text".styling.bold();        // Grouped extension method
```

Both APIs work side by side, but the grouped API is recommended for better organization and discoverability.

## [2.0.2] - 2025-10-04

### 🎨 IMPROVEMENTS

- **Visual Layout**: Updated README.md to display screenshots in a horizontal row layout
- **Better Presentation**: Screenshots now appear side-by-side in a responsive table format
- **Enhanced UX**: More compact and visually appealing documentation layout

## [2.0.1] - 2025-10-04

### 🔧 FIXES

- **Package Description**: Shortened description to meet pub.dev requirements (60-180 characters)
- **Screenshot Files**: Renamed screenshot files to follow Dart naming conventions:
  - `Screenshot from 2025-10-04 14-52-24.png` → `basic_styling.png`
  - `Screenshot from 2025-10-04 14-52-34.png` → `advanced_formatting.png`
  - `Screenshot from 2025-10-04 14-52-48.png` → `professional_output.png`
- **File Conventions**: Updated all file references to use proper naming without spaces
- **Pub.dev Validation**: Fixed all pub.dev validation issues for successful publishing

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

[2.1.0]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v2.1.0
[2.0.2]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v2.0.2
[2.0.1]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v2.0.1
[2.0.0]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v2.0.0
[1.0.0]: https://github.com/mohamedmaher-dev/pretty_print/releases/tag/v1.0.0
