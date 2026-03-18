import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_name/features/auth/presentation/screens/login_screen.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('LoginScreen', () {
    testWidgets('shows email and password fields', (tester) async {
      await tester.pumpWidget(buildTestWidget(const LoginScreen()));

      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
      expect(find.text('Sign in'), findsOneWidget);
    });

    testWidgets('shows validation error for empty email', (tester) async {
      await tester.pumpWidget(buildTestWidget(const LoginScreen()));

      // Tap submit without filling in fields
      await tester.tap(find.text('Sign in'));
      await tester.pump();

      expect(find.text('Enter a valid email'), findsOneWidget);
    });

    testWidgets('shows validation error for short password', (tester) async {
      await tester.pumpWidget(buildTestWidget(const LoginScreen()));

      await tester.enterText(
        find.widgetWithText(TextFormField, 'Email'),
        'test@example.com',
      );
      await tester.enterText(
        find.widgetWithText(TextFormField, 'Password'),
        '123',
      );
      await tester.tap(find.text('Sign in'));
      await tester.pump();

      expect(find.text('Min 6 characters'), findsOneWidget);
    });
  });
}
