# Implement

## Trigger

The user asked to change, build, fix, or refactor code or configuration.

## Inspect

1. Confirm scope, acceptance criteria, repository root, local instructions, and working-tree state.
2. Search for the entry point, callers, tests, similar implementations, and contribution rules.
3. For a bug, reproduce or obtain concrete failure evidence before editing when practical.

## Decide

- State the root cause or design constraint.
- Choose the smallest solution consistent with local architecture.
- Identify impact surface and risk. Escalate validation for public APIs, security, data, dependencies, or multi-component behavior.

## Act

- Preserve user changes and unrelated behavior.
- Make focused edits; avoid opportunistic cleanup and new abstractions without repeated need.
- Add or update tests for changed behavior.
- Do not commit, push, deploy, or publish unless requested.

## Verify

1. Run targeted tests for changed paths.
2. Run relevant build, lint, type, integration, or regression checks based on impact.
3. Exercise important failure and boundary cases.
4. Inspect the full diff and status for accidental changes.

## Stop

Stop when acceptance criteria are met and relevant checks pass. If blocked, report the blocker, attempted evidence, and exact unverified remainder. Do not substitute a workaround that changes the requested outcome without approval.
