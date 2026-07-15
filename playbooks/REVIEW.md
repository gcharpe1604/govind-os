# Review

## Trigger

The user asked for review of code, a diff, architecture, or a pull request. Review is report-only unless fixes are explicitly requested.

## Inspect

1. Read local review and contribution rules.
2. Establish the intended behavior and inspect the complete relevant diff.
3. Trace changed call paths and inspect tests, public interfaces, failure paths, and configuration effects.
4. Run safe read-only checks when they materially increase confidence.

## Decide

Prioritize findings that affect correctness, security, data integrity, compatibility, reliability, or maintainability. Ignore subjective style unless it creates real cost or violates enforced conventions.

Each finding must include:

- severity and concise title;
- exact file and tight line range;
- triggering conditions;
- concrete impact;
- why existing tests or guards do not prevent it.

## Act

Report findings in severity order. Do not change code, submit reviews, or contact authors without authorization. Avoid praise-heavy summaries that bury risks.

## Verify

Challenge each finding against the real API, callers, language semantics, and tests. Remove findings that are speculative, non-actionable, or already handled.

## Stop

If actionable findings exist, lead with them. If none exist, say so and name residual testing or context gaps. A clean review means no validated findings, not proof that defects are impossible.
