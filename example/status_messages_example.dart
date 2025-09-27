/// Example of using pretty_print for status messages and notifications.
///
/// This example demonstrates how to create consistent, beautiful
/// status messages for success, error, warning, and info scenarios
/// that are commonly used in CLI applications and scripts.
///
/// Run with: dart run example/status_messages_example.dart
library;

import 'package:pretty_print/pretty_print.dart';

void main() {
  runStatusMessagesDemo();
}

/// Demonstrates various status message patterns
void runStatusMessagesDemo() {
  _printHeader();

  // Basic status messages
  _showBasicStatusMessages();

  // Detailed status messages
  _showDetailedStatusMessages();

  // Progress and loading states
  _showProgressMessages();

  // Validation and form messages
  _showValidationMessages();

  // System and operation messages
  _showSystemMessages();

  _printFooter();
}

/// Prints demo header
void _printHeader() {
  print('');
  PrettyPrint.pprint(
    "📢 Status Messages Demo",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "Beautiful status messages for CLI applications",
    textColor: PrintColor.cyan,
  );
  print('');
}

/// Shows basic status message templates
void _showBasicStatusMessages() {
  PrettyPrint.pprint(
    "🎯 Basic Status Messages",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Success messages
  showSuccess("Operation completed successfully");
  showSuccess("File saved");
  showSuccess("User created");
  showSuccess("Data synchronized");
  print('');

  // Error messages
  showError("Operation failed");
  showError("File not found");
  showError("Invalid credentials");
  showError("Network connection lost");
  print('');

  // Warning messages
  showWarning("Disk space low");
  showWarning("Deprecated function used");
  showWarning("Rate limit approaching");
  showWarning("Unsaved changes detected");
  print('');

  // Info messages
  showInfo("Processing started");
  showInfo("Configuration loaded");
  showInfo("Cache cleared");
  showInfo("Session expired");
  print('');
}

/// Shows detailed status messages with descriptions
void _showDetailedStatusMessages() {
  PrettyPrint.pprint(
    "📋 Detailed Status Messages",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Success with details
  showSuccessDetail(
    "Database Migration",
    "Successfully migrated 15 tables and 10,000 records",
  );

  showSuccessDetail(
    "Backup Complete",
    "Created backup archive: backup_2025-09-27.tar.gz (2.4GB)",
  );

  // Error with details
  showErrorDetail(
    "Authentication Failed",
    "Invalid username or password. Please check your credentials.",
  );

  showErrorDetail(
    "File Upload Error",
    "File size exceeds maximum limit of 10MB (received: 15.7MB)",
  );

  // Warning with details
  showWarningDetail(
    "Performance Issue",
    "Query execution time is 2.5s, consider optimizing indexes",
  );

  showWarningDetail(
    "Security Alert",
    "Multiple failed login attempts detected from IP: 192.168.1.100",
  );

  // Info with details
  showInfoDetail(
    "System Maintenance",
    "Scheduled maintenance window: 2:00 AM - 4:00 AM UTC",
  );
  print('');
}

/// Shows progress and loading messages
void _showProgressMessages() {
  PrettyPrint.pprint(
    "⏳ Progress & Loading Messages",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Loading states
  showLoading("Connecting to server...");
  showLoading("Downloading updates...");
  showLoading("Processing data...");
  showLoading("Generating report...");
  print('');

  // Progress indicators
  showProgress("Installing packages", "1/5");
  showProgress("Compiling assets", "2/5");
  showProgress("Running tests", "3/5");
  showProgress("Building application", "4/5");
  showProgress("Deployment", "5/5");
  print('');

  // Completion messages
  showCompleted("Installation finished");
  showCompleted("All tests passed");
  showCompleted("Deployment successful");
  print('');
}

/// Shows validation and form messages
void _showValidationMessages() {
  PrettyPrint.pprint(
    "✅ Validation Messages",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Validation errors
  showValidationError("Email", "Please enter a valid email address");
  showValidationError("Password", "Password must be at least 8 characters");
  showValidationError("Phone", "Phone number format is invalid");
  print('');

  // Validation success
  showValidationSuccess("All fields validated successfully");
  showValidationSuccess("Form data is valid");
  print('');

  // Field-specific status
  showFieldStatus("Username", "Available", true);
  showFieldStatus("Email", "Already registered", false);
  showFieldStatus("Domain", "Available for registration", true);
  print('');
}

/// Shows system and operation messages
void _showSystemMessages() {
  PrettyPrint.pprint(
    "🔧 System Messages",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // System status
  showSystemStatus("CPU Usage", "15%", "normal");
  showSystemStatus("Memory Usage", "78%", "warning");
  showSystemStatus("Disk Space", "92%", "critical");
  showSystemStatus("Network", "Connected", "normal");
  print('');

  // Service status
  showServiceStatus("Database", "Online");
  showServiceStatus("Cache", "Online");
  showServiceStatus("Queue", "Offline");
  showServiceStatus("API", "Online");
  print('');
}

/// Prints demo footer
void _printFooter() {
  PrettyPrint.pprint(
    "════════════════════════════════════════",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "✨ Copy these patterns to your applications!",
    textColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "════════════════════════════════════════",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');
}

// Status message utility functions

/// Shows a success message
void showSuccess(String message) {
  PrettyPrint.pprint(
    " ✓ SUCCESS ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  print("   $message");
}

/// Shows an error message
void showError(String message) {
  PrettyPrint.pprint(
    " ✗ ERROR ",
    textColor: PrintColor.white,
    backColor: PrintColor.red,
    textWeight: TextWeight.bold,
  );
  print("   $message");
}

/// Shows a warning message
void showWarning(String message) {
  PrettyPrint.pprint(
    " ⚠ WARNING ",
    textColor: PrintColor.black,
    backColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print("   $message");
}

/// Shows an info message
void showInfo(String message) {
  PrettyPrint.pprint(
    " ℹ INFO ",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  print("   $message");
}

/// Shows a success message with details
void showSuccessDetail(String title, String description) {
  PrettyPrint.pprint(
    " ✓ $title ",
    textColor: PrintColor.white,
    backColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint("   $description", textColor: PrintColor.green);
}

/// Shows an error message with details
void showErrorDetail(String title, String description) {
  PrettyPrint.pprint(
    " ✗ $title ",
    textColor: PrintColor.white,
    backColor: PrintColor.red,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint("   $description", textColor: PrintColor.red);
}

/// Shows a warning message with details
void showWarningDetail(String title, String description) {
  PrettyPrint.pprint(
    " ⚠ $title ",
    textColor: PrintColor.black,
    backColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint("   $description", textColor: PrintColor.yellow);
}

/// Shows an info message with details
void showInfoDetail(String title, String description) {
  PrettyPrint.pprint(
    " ℹ $title ",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint("   $description", textColor: PrintColor.cyan);
}

/// Shows a loading message
void showLoading(String message) {
  PrettyPrint.pprint(
    "🔄 $message",
    textColor: PrintColor.cyan,
    textAlphaAnim: AlphaAndAnim.slowAnim,
  );
}

/// Shows progress with step indicator
void showProgress(String task, String step) {
  PrettyPrint.pprint(
    "[$step] $task",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
}

/// Shows completion message
void showCompleted(String message) {
  PrettyPrint.pprint(
    "✅ $message",
    textColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
}

/// Shows validation error
void showValidationError(String field, String message) {
  PrettyPrint.pprint("❌ $field: $message", textColor: PrintColor.red);
}

/// Shows validation success
void showValidationSuccess(String message) {
  PrettyPrint.pprint("✅ $message", textColor: PrintColor.green);
}

/// Shows field validation status
void showFieldStatus(String field, String status, bool isValid) {
  final icon = isValid ? "✅" : "❌";
  final color = isValid ? PrintColor.green : PrintColor.red;
  PrettyPrint.pprint("$icon $field: $status", textColor: color);
}

/// Shows system status
void showSystemStatus(String component, String value, String level) {
  String icon;
  PrintColor color;

  switch (level) {
    case "normal":
      icon = "✅";
      color = PrintColor.green;
      break;
    case "warning":
      icon = "⚠️";
      color = PrintColor.yellow;
      break;
    case "critical":
      icon = "🚨";
      color = PrintColor.red;
      break;
    default:
      icon = "ℹ️";
      color = PrintColor.blue;
  }

  PrettyPrint.pprint(
    "$icon $component: $value",
    textColor: color,
    textWeight: level == "critical" ? TextWeight.bold : TextWeight.none,
  );
}

/// Shows service status
void showServiceStatus(String service, String status) {
  final isOnline = status.toLowerCase() == "online";
  final icon = isOnline ? "🟢" : "🔴";
  final color = isOnline ? PrintColor.green : PrintColor.red;

  PrettyPrint.pprint(
    "$icon $service: $status",
    textColor: color,
    textWeight: isOnline ? TextWeight.none : TextWeight.bold,
  );
}
