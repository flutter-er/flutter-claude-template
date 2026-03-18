import 'package:flutter_test/flutter_test.dart';

// Example unit test — replace with tests for your business logic.
// Pattern: test('does X when Y', () { ... });
void main() {
  group('ExampleUseCase', () {
    test('returns true when input is valid', () {
      // Arrange
      const input = 'valid@example.com';

      // Act
      final result = input.contains('@');

      // Assert
      expect(result, isTrue);
    });

    test('returns false when input is empty', () {
      // Arrange
      const input = '';

      // Act
      final result = input.contains('@');

      // Assert
      expect(result, isFalse);
    });
  });
}
