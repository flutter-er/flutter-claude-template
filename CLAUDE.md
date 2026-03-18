# Project: [APP NAME]

## What this app does
[1–2 sentences. Example: "A Flutter budgeting app that tracks expenses and syncs with Firebase."]

## Tech stack
- **Framework:** Flutter [version]
- **Language:** Dart
- **State management:** [Riverpod / Bloc / Provider]
- **Backend/DB:** [Supabase / Firebase / REST API]
- **Auth:** [Supabase Auth / Firebase Auth / none]
- **Key packages:** [list main pubspec.yaml deps]

## Folder structure
```
lib/
  features/         # feature-first folders (auth, home, settings…)
  shared/           # reusable widgets, utils, constants
  core/             # routing, theme, DI setup
```

## Coding conventions
- Follow the rules in `.claude/rules/coding-style.md`
- Widget files: `snake_case.dart`, classes: `PascalCase`
- Every public method needs a one-line doc comment
- Prefer `const` constructors everywhere possible

## Testing approach
- Unit tests for all business logic in `test/unit/`
- Widget tests for complex UI in `test/widget/`
- Run tests with `flutter test` before committing

## Current focus / active sprint
[What are you building right now? Be specific so Claude gives better help.]

## Known constraints / decisions
- [Example: "We chose Riverpod over Bloc for simplicity — don't suggest switching."]
- [Example: "No third-party analytics until v2."]

## How to run locally
```bash
flutter pub get
flutter run
```
