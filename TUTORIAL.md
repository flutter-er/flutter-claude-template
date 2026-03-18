# How to Use This Template — Full Tutorial

## What you have

11 agents, no conflicts, one clear job each:

| Agent | Trigger phrase |
|---|---|
| `sow-reader` | "read this SOW / analyze this brief" |
| `product-manager` | "plan the sprint / write user stories" |
| `ui-designer` | "design this screen / layout / colors" |
| `mobile-app-builder` | "plan this feature / camera / biometrics / app store" |
| `security-engineer` | "security review / is this safe / how to store X" |
| `rapid-prototyper` | "prototype this / MVP / fastest way to test" |
| `flutter-developer` | "write this widget / provider / model" |
| `code-reviewer` | "review this code / review before I commit" |
| `debugger` | "debug this / I'm getting this error" |
| `qa-tester` | "QA this feature / find edge cases" |
| `technical-writer` | "write docs / README / release notes" |

---

## Step 1 — Start a new project from this template

1. Go to **https://github.com/flutter-er/flutter-claude-template**
2. Click **"Use this template"** → **"Create a new repository"**
3. Name your repo (e.g. `budget-app`)
4. Clone it locally:
```bash
git clone https://github.com/flutter-er/budget-app.git
cd budget-app
```

---

## Step 2 — Fill in CLAUDE.md (5 minutes)

Open `CLAUDE.md` and replace every `[bracket]`. This is the most important step — the more specific you are, the better Claude's responses.

Example for a budget tracking app:
```markdown
# Project: BudgetTrack

## What this app does
A Flutter app that tracks personal expenses, categorizes them, and shows monthly summaries.

## Tech stack
- Framework: Flutter 3.19
- State management: Riverpod
- Backend/DB: Supabase
- Auth: Supabase Auth
- Key packages: flutter_riverpod, go_router, dio, freezed

## Current focus
Building the expense entry screen and category management.
```

---

## Step 3 — Set up your environment

```bash
# Copy env template
cp .env.example .env

# Fill in your actual values in .env
# API_BASE_URL=https://your-project.supabase.co
# SUPABASE_ANON_KEY=your_key_here

# Install dependencies
flutter pub get
```

---

## Step 4 — Copy agents globally (do this once)

So every project automatically has all 11 agents:
```bash
mkdir -p ~/.claude/agents
cp .claude/agents/*.md ~/.claude/agents/
```

---

## The full workflow — from SOW to shipped app

### Stage 1: You receive a project brief

Paste the document into Claude and say:

> "Read this SOW: [paste brief here]"

The `sow-reader` agent will output:
- Feature list with complexity and priority
- Missing info you need to clarify before building
- Tech stack recommendation
- Risks to watch out for
- Which agents to use next and in what order

---

### Stage 2: Plan the work

After the SOW is clear:

> "Write user stories for the expense tracking feature"

The `product-manager` agent gives you:
- User stories in Given/When/Then format
- Acceptance criteria
- Sprint breakdown (MVP first)

---

### Stage 3: Design the screens

> "Design the expense entry screen — it needs a category picker, amount input, and date selector"

The `ui-designer` agent gives you:
- Layout structure (top → bottom)
- Widget choices and why
- Spacing and color decisions using your theme
- Edge cases to handle (empty, error, long text)

---

### Stage 4: Plan the architecture

> "Plan the expense feature — data model, repository, providers, screens"

The `mobile-app-builder` agent gives you:
- Folder structure for the feature
- Data model and repository interface
- Provider setup
- Performance and offline considerations

---

### Stage 5: Write the code

For each piece:

> "Write the Expense model with Freezed and JSON serialization"
> "Write the ExpenseRepository with Supabase"
> "Write the expense list screen using the provider"

The `flutter-developer` agent writes consistent, idiomatic Dart code following your project's conventions from CLAUDE.md.

**Need to test an idea fast first?**
> "Prototype the expense entry screen — just get it working, no architecture"

The `rapid-prototyper` agent gives you a quick working version without ceremony.

---

### Stage 6: Security check

Before any feature that touches auth, data storage, or API keys:

> "Security review — I'm storing auth tokens and calling the Supabase API"

The `security-engineer` agent checks your approach against the full security checklist.

---

### Stage 7: Review before committing

After writing any meaningful code:

> "Review this code before I commit" [paste the code or file path]

The `code-reviewer` agent gives you a structured report:
- Severity-ranked issues
- Why each issue matters
- Concrete fix for each one
- Overall verdict: ready / needs changes / major rework

---

### Stage 8: QA the feature

When a feature is "done":

> "QA the expense entry feature — find all edge cases"

The `qa-tester` agent produces:
- Full test case list (happy path + edge cases)
- Flutter-specific checks (empty state, error state, offline, rotation)
- Bug report template for anything found

---

### Stage 9: Fix bugs

When something breaks:

> "Debug this — [paste error or stack trace]"

The `debugger` agent:
- Identifies root cause (not just the symptom)
- Explains why it's happening
- Gives the minimal fix
- Points out related issues to watch for

---

### Stage 10: Write docs and release

Before a release:

> "Write release notes for v1.1.0 — we added expense categories and fixed the date picker crash"

The `technical-writer` agent writes:
- User-facing release notes (not developer jargon)
- Updated README sections if needed
- Setup instructions if the API changed

---

## Quick reference — one-liners for each agent

```
# Start of project
"Read this SOW: [paste brief]"
"Write user stories for [feature]"

# Design
"Design the [screen name] screen"
"What widget should I use for [UI pattern]?"

# Architecture
"Plan the [feature] from scratch — data, repo, state, UI"
"How should I integrate [camera / biometrics / push notifications]?"

# Build
"Write the [Widget/Model/Provider] for [feature]"
"Prototype [feature] — just get it working fast"

# Quality
"Review this code before I commit"
"QA the [feature] — find edge cases"
"Security review — I'm doing [auth / API calls / storing X]"

# Fix
"Debug this: [error message or stack trace]"

# Ship
"Write release notes for v[x.x.x]"
"Document the [feature] for the README"
```

---

## Tips

**Be specific in your prompts.** The more context you give, the better the output.
- Bad: "write a screen"
- Good: "write the expense entry screen — amount input, category dropdown using our categories provider, date picker, submit button that calls addExpense() on the repository"

**CLAUDE.md is your secret weapon.** Keep it updated as your tech stack evolves. Claude reads it on every prompt to stay aligned with your project.

**Use the agents in order.** Don't jump to `flutter-developer` before `mobile-app-builder` has defined the architecture — you'll write code that needs to be rewritten.

**Run tests before every commit.**
```bash
flutter test
```
The CI pipeline (`.github/workflows/ci.yml`) will enforce this on every push too.
