# Coding Style Rules

These rules apply to all code in this project. Always follow them unless CLAUDE.md explicitly overrides one.

## Dart / Flutter
- Use `const` constructors everywhere they are valid
- Prefer named parameters for functions/constructors with more than 2 parameters
- Maximum line length: 100 characters
- No `var` for class-level fields — always declare the type explicitly
- Use `final` for anything that doesn't need to be reassigned
- No `dynamic` type unless absolutely necessary and commented why

## Naming
- Files: `snake_case.dart`
- Classes, enums, extensions: `PascalCase`
- Variables, functions, parameters: `camelCase`
- Constants: `kCamelCase` (e.g. `kPrimaryColor`)
- Private members: `_leadingUnderscore`

## Widgets
- One widget per file
- Keep `build()` under ~80 lines — extract sub-widgets if longer
- Extract repeated widget subtrees into their own `StatelessWidget`
- Widget constructors use `const` whenever possible

## No-nos
- No `print()` in production code — use a proper logger
- No hardcoded color values — use `Theme.of(context).colorScheme`
- No hardcoded spacing numbers — use the spacing constants in `lib/core/constants.dart`
- No direct `http` calls in widgets — always go through a repository/service

## Comments
- Only comment code that isn't self-explanatory
- Every public class and method gets a one-line doc comment (`///`)
- No commented-out code — delete it (git history exists for a reason)
