import 'package:flutter_dotenv/flutter_dotenv.dart';

/// App-wide constants. Add new ones here, never inline magic values.
abstract class AppConstants {
  // API
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
  static String get apiKey => dotenv.env['API_KEY'] ?? '';

  // Spacing (always use multiples of 4)
  static const double spaceXS = 4;
  static const double spaceSM = 8;
  static const double spaceMD = 16;
  static const double spaceLG = 24;
  static const double spaceXL = 32;
  static const double spaceXXL = 48;

  // UI
  static const double borderRadius = 12;
  static const double cardElevation = 2;
  static const double minTouchTarget = 48;

  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
