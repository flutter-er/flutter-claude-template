# Flutter Claude Template

A GitHub template repository for Flutter projects with pre-configured Claude Code agents, rules, and project context.

Inspired by [agency-agents](https://github.com/msitarzewski/agency-agents) and [everything-claude-code](https://github.com/affaan-m/everything-claude-code).

---

## How to use this template

### Starting a new project

1. On GitHub, click **"Use this template"** → **"Create a new repository"**
2. Clone your new repo locally
3. Open `CLAUDE.md` and fill in the blanks (5 minutes)
4. Start coding with Claude Code — the agents and rules are ready

### What's inside

```
CLAUDE.md                       ← Fill this in per project (5 min)
.claude/
  agents/
    flutter-developer.md        ← Writing/debugging Flutter code
    ui-designer.md              ← Screen design and component decisions
    product-manager.md          ← Sprint planning and user stories
    code-reviewer.md            ← Pre-commit code review
  rules/
    coding-style.md             ← Dart/Flutter style conventions
    testing.md                  ← How to write and structure tests
    git-workflow.md             ← Branch and commit conventions
```

---

## Using the agents in Claude Code

Just mention what you need and Claude will use the right agent:

```
"Help me implement the login screen"         → flutter-developer agent
"Design the onboarding flow"                 → ui-designer agent
"Plan this week's sprint"                    → product-manager agent
"Review my code before I commit"             → code-reviewer agent
```

Or be explicit:
```
"As the product manager, write user stories for push notifications"
"As the code reviewer, check lib/features/auth/login_screen.dart"
```

---

## Global agents (set up once, works everywhere)

To make agents available in ALL your projects automatically, copy them to your global Claude config:

```bash
mkdir -p ~/.claude/agents
cp .claude/agents/*.md ~/.claude/agents/
```

Your `CLAUDE.md` stays project-specific. Your agents become global tools.

---

## Filling in CLAUDE.md

Open `CLAUDE.md` and replace everything in `[brackets]`. The most important fields:

| Field | Example |
|-------|---------|
| App name | "BudgetTrack" |
| What it does | "Flutter expense tracker with Supabase sync" |
| State management | "Riverpod" |
| Current focus | "Building the home dashboard screen" |

The more specific your CLAUDE.md, the better Claude's suggestions will be.

---

## Adding project-specific agents

Need a specialized agent just for this project? Add it to `.claude/agents/`:

```bash
# Example: a Supabase integration specialist
touch .claude/agents/supabase-specialist.md
```

Use the same frontmatter format as the existing agents.
