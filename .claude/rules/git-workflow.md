# Git Workflow Rules

## Branch naming
```
feature/short-description     # new feature
fix/short-description          # bug fix
refactor/short-description     # code cleanup, no behavior change
chore/short-description        # deps update, config change
```

## Commit message format
```
type: short description (max 72 chars)

Optional body explaining WHY, not WHAT.
```
Types: `feat`, `fix`, `refactor`, `test`, `chore`, `docs`

Examples:
```
feat: add biometric login option
fix: crash when user has no profile photo
refactor: extract PaymentService from CheckoutScreen
```

## Rules
- Commit one logical change per commit — don't bundle unrelated changes
- Never commit directly to `main` — use feature branches
- Run `flutter test` before every commit
- Keep commits small and frequent — easier to review and revert
- Write commit messages for your future self reading `git log`

## Before opening a PR / merging
- [ ] All tests pass (`flutter test`)
- [ ] No debug `print()` statements
- [ ] No TODO comments left without a ticket/issue reference
- [ ] CLAUDE.md updated if tech stack or conventions changed
