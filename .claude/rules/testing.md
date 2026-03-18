# Testing Rules

## What to test
- All business logic (use cases, services, repositories) — unit tests
- State management (providers, blocs) — unit tests
- Complex widgets with multiple states — widget tests
- Critical user flows — integration tests (optional for solo projects)

## What NOT to test
- Simple `StatelessWidget` with no logic
- Pure UI layout widgets
- Third-party package internals

## Test file location
```
test/
  unit/           # pure Dart logic tests
  widget/         # Flutter widget tests
  helpers/        # shared test utilities and mocks
```
Mirror the `lib/` folder structure inside `test/`.

## Test naming convention
```dart
// Format: "does [action] when [condition]"
test('returns empty list when repository throws error', () { ... });
test('emits loading then data states when fetch succeeds', () { ... });
```

## Test structure (AAA pattern)
```dart
test('description', () {
  // Arrange — set up test data and mocks
  final repo = MockUserRepository();
  when(repo.getUser(any)).thenAnswer((_) async => fakeUser);

  // Act — call the thing being tested
  final result = await useCase.execute(userId: '123');

  // Assert — verify the result
  expect(result, equals(fakeUser));
});
```

## Before committing
Run `flutter test` — all tests must pass. Never commit with failing tests.
