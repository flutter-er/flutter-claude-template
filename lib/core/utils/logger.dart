import 'package:logger/logger.dart';

/// App-wide logger. Use this instead of print().
///
/// Usage:
///   log.d('debug message');
///   log.i('info message');
///   log.w('warning message');
///   log.e('error message', error: e, stackTrace: st);
final log = Logger(
  printer: PrettyPrinter(
    methodCount: 2,
    errorMethodCount: 8,
    lineLength: 80,
    colors: true,
    printEmojis: true,
  ),
  // Set to Level.off in production builds
  level: Level.debug,
);
