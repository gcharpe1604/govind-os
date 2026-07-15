# Decide

## Trigger

The user needs an architecture choice or a meaningful technical trade-off with multiple viable options.

## Inspect

1. Define the real outcome, constraints, non-goals, current architecture, and decision deadline.
2. Gather measured requirements: scale, reliability, latency, cost, compatibility, team capability, and operational burden.
3. Find existing project decisions and reversible paths.

## Decide

- Generate the minimum viable options, including keeping the current design.
- Compare correctness, simplicity, migration cost, failure modes, reversibility, maintenance, and opportunity cost.
- Use a council or deeper review only when stakes or uncertainty justify its cost.
- Prefer the simplest option that satisfies evidenced constraints.

## Act

Give one recommendation with reasoning. Do not implement, log an ADR, or change external state unless asked.

## Verify

Test the recommendation against:

- the strongest counterargument;
- failure and rollback paths;
- project conventions and current APIs;
- requirements that would reverse the choice.

## Stop

State the recommendation, decisive evidence, trade-offs, confidence, and first action. If a missing user choice changes the architecture materially, ask for it rather than inventing a preference.
