# Diagnose

## Trigger

The user asked for a cause, explanation, investigation, or status. Diagnosis does not authorize a fix.

## Inspect

1. Define expected versus observed behavior and collect the exact error, input, environment, and timing.
2. Reproduce when safe and practical.
3. Trace from the symptom through callers, state, dependencies, and recent changes.
4. Read relevant tests and authoritative documentation.

## Decide

- Generate a small set of falsifiable hypotheses.
- Test the cheapest discriminating hypothesis first.
- A root cause must explain all important observations and identify the triggering condition and affected path.
- Label inference and uncertainty explicitly.

## Act

Gather evidence only. Do not edit files, mutate external state, or publish anything unless the user also asked for a fix.

## Verify

- Re-run the reproduction or an equivalent check against the identified cause.
- Check whether the explanation covers edge cases and apparent contradictions.
- Distinguish the root cause from downstream symptoms and contributing factors.

## Stop

Return the cause, evidence, impact, confidence, and smallest correct fix direction. If the cause is not proven, return the strongest remaining hypotheses and the next discriminating check; do not present speculation as diagnosis.
