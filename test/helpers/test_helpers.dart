import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Wraps a widget with ProviderScope and MaterialApp for widget tests.
///
/// Usage:
///   await tester.pumpWidget(buildTestWidget(MyWidget()));
Widget buildTestWidget(
  Widget child, {
  List<Override> overrides = const [],
}) {
  return ProviderScope(
    overrides: overrides,
    child: MaterialApp(home: child),
  );
}

/// Creates a ProviderContainer with optional overrides for unit tests.
///
/// Usage:
///   final container = createTestContainer(overrides: [myProvider.overrideWith(...)]);
ProviderContainer createTestContainer({
  List<Override> overrides = const [],
}) {
  final container = ProviderContainer(overrides: overrides);
  addTearDown(container.dispose);
  return container;
}
