# Pull Requests and CI

## Trigger

The user asked to inspect or fix CI, address review comments, prepare a pull request, or update an existing pull request.

## Inspect

1. Read the target repository's `CONTRIBUTING.md`, PR template, commit rules, and CI workflow.
2. Re-check live PR comments, reviews, and checks when current status matters.
3. Separate functional failures from policy, signing, coverage, flaky, or infrastructure failures.
4. Confirm branch, remotes, status, and user changes before editing or rewriting history.

## Decide

- Map each failure or comment to evidence and the smallest response.
- Distinguish accepted, rejected, stale, and already-resolved feedback.
- Do not change working behavior merely to satisfy a metric or speculative suggestion.

## Act

Fix only when requested. Follow the implementation playbook for code changes. Commit, push, force-push, submit reviews, or open/update a PR only with user authorization. Before an authorized history rewrite, create a backup ref and use `--force-with-lease`.

## Verify

- Run the relevant local checks and inspect the diff.
- After external updates, re-query the live PR or CI state; do not infer success from a local push.
- Report unresolved checks separately with their actual status.

## Stop

Stop when requested comments or failures are addressed and current state is verified, or when a specific external blocker remains. Never report a PR as green from partial checks.
