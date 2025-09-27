/// Example of using pretty_print for logging and debugging.
///
/// This example demonstrates how to create a beautiful logging system
/// with different log levels, colors, and formatting for better
/// debugging and monitoring.
///
/// Run with: dart run example/logging_example.dart
library;

import 'package:pretty_print/pretty_print.dart';

void main() {
  // Simulate a logging session
  runLoggingDemo();
}

/// Demonstrates different logging patterns
void runLoggingDemo() {
  _printLogHeader();

  // Application lifecycle logs
  _logApplicationLifecycle();

  // User actions
  _logUserActions();

  // System operations
  _logSystemOperations();

  // Error scenarios
  _logErrorScenarios();

  // Performance monitoring
  _logPerformanceMetrics();

  _printLogFooter();
}

/// Prints logging session header
void _printLogHeader() {
  print('');
  PrettyPrint.pprint(
    "🗂️ Application Logging Demo",
    textColor: PrintColor.white,
    backColor: PrintColor.blue,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "Simulating various log levels and scenarios",
    textColor: PrintColor.cyan,
  );
  print('');
}

/// Simulates application startup/shutdown logs
void _logApplicationLifecycle() {
  PrettyPrint.pprint(
    "🚀 Application Lifecycle",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  // Info logs
  logInfo("Application starting...");
  logInfo("Loading configuration from config.yaml");
  logInfo("Connecting to database: postgresql://localhost:5432/myapp");
  logSuccess("Database connection established");
  logInfo("Starting HTTP server on port 8080");
  logSuccess("Application started successfully");
  print('');

  // Shutdown simulation
  logInfo("Received shutdown signal");
  logInfo("Closing database connections");
  logInfo("Stopping HTTP server");
  logSuccess("Application shutdown complete");
  print('');
}

/// Simulates user action logs
void _logUserActions() {
  PrettyPrint.pprint(
    "👤 User Actions",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  logInfo("User login attempt: john@example.com");
  logSuccess("User authenticated successfully");
  logInfo("User accessed dashboard");
  logInfo("User created new project: 'Mobile App Redesign'");
  logInfo("User invited team member: sarah@example.com");
  logWarning("User attempted to access restricted resource");
  logInfo("User logged out");
  print('');
}

/// Simulates system operation logs
void _logSystemOperations() {
  PrettyPrint.pprint(
    "⚙️ System Operations",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  logInfo("Starting scheduled backup task");
  logInfo("Backup progress: 25% (1.2GB / 4.8GB)");
  logInfo("Backup progress: 50% (2.4GB / 4.8GB)");
  logInfo("Backup progress: 75% (3.6GB / 4.8GB)");
  logSuccess("Backup completed successfully (4.8GB)");

  logInfo("Running database cleanup task");
  logInfo("Removed 1,234 expired sessions");
  logInfo("Cleaned up 567 temporary files");
  logSuccess("Database cleanup completed");

  logInfo("Checking system health");
  logSuccess("CPU usage: 15%");
  logSuccess("Memory usage: 68%");
  logWarning("Disk usage: 89% (consider cleanup)");
  print('');
}

/// Simulates error scenarios
void _logErrorScenarios() {
  PrettyPrint.pprint(
    "🚨 Error Scenarios",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  logWarning("API rate limit approaching (80/100 requests)");
  logError("Failed to send email notification");
  logInfo("Retrying email send (attempt 1/3)");
  logError("Failed to send email notification");
  logInfo("Retrying email send (attempt 2/3)");
  logSuccess("Email sent successfully");

  logError("Database connection lost");
  logInfo("Attempting to reconnect...");
  logSuccess("Database connection restored");

  logError("Invalid JSON in API request");
  logError("Authentication token expired");
  logCritical("Security breach detected - unusual login patterns");
  print('');
}

/// Simulates performance monitoring logs
void _logPerformanceMetrics() {
  PrettyPrint.pprint(
    "📊 Performance Monitoring",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
  print('');

  logPerformance("API endpoint /users - 125ms response time");
  logPerformance("Database query executed in 23ms");
  logPerformance("Cache hit ratio: 94.5%");
  logPerformance("Memory allocation: +15MB");
  logWarning("Slow query detected: SELECT * FROM large_table (1.2s)");
  logPerformance("Garbage collection completed in 45ms");
  print('');
}

/// Prints logging session footer
void _printLogFooter() {
  PrettyPrint.pprint(
    "═══════════════════════════════════════",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "📝 Logging Demo Complete",
    textColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
  PrettyPrint.pprint(
    "Use these patterns in your applications for better debugging!",
    textColor: PrintColor.white,
  );
  PrettyPrint.pprint(
    "═══════════════════════════════════════",
    textColor: PrintColor.cyan,
    textWeight: TextWeight.bold,
  );
  print('');
}

// Logging utility functions

/// Logs an info message
void logInfo(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    "[$timestamp] [INFO] $message",
    textColor: PrintColor.cyan,
  );
}

/// Logs a success message
void logSuccess(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    "[$timestamp] [SUCCESS] $message",
    textColor: PrintColor.green,
    textWeight: TextWeight.bold,
  );
}

/// Logs a warning message
void logWarning(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    "[$timestamp] [WARNING] $message",
    textColor: PrintColor.yellow,
    textWeight: TextWeight.bold,
  );
}

/// Logs an error message
void logError(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    "[$timestamp] [ERROR] $message",
    textColor: PrintColor.red,
    textWeight: TextWeight.bold,
  );
}

/// Logs a critical error message
void logCritical(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    " [$timestamp] [CRITICAL] $message ",
    textColor: PrintColor.white,
    backColor: PrintColor.red,
    textWeight: TextWeight.bold,
  );
}

/// Logs a performance metric
void logPerformance(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    "[$timestamp] [PERF] $message",
    textColor: PrintColor.magenta,
  );
}

/// Logs a debug message
void logDebug(String message) {
  final timestamp = DateTime.now().toString().substring(0, 19);
  PrettyPrint.pprint(
    "[$timestamp] [DEBUG] $message",
    textColor: PrintColor.white,
    textAlphaAnim: AlphaAndAnim.semiOpacity,
  );
}
