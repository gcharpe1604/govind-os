# Documentation

## Trigger

The user asked to create, update, or review documentation without changing product behavior.

## Inspect

1. Identify the audience, artifact, source of truth, scope, and required template.
2. Verify commands, APIs, paths, versions, and behavior against current code or authoritative docs.
3. Search for existing documentation to update instead of creating a competing source.

## Decide

- Put information at the closest authoritative location.
- Link to canonical detail rather than duplicating it.
- Remove stale or contradictory text within the authorized scope.
- Preserve project terminology and formatting conventions.

## Act

Write concise, task-oriented content. Prefer prerequisites, steps, examples, verification, and failure recovery over marketing prose or generic explanation. Documentation scope does not authorize code changes or publishing.

## Verify

- Check internal links, headings, examples, and rendered structure.
- Test commands or snippets when practical.
- Confirm the document matches current behavior and does not promise unverified outcomes.
- Inspect the diff for unrelated prose churn.

## Stop

Return the changed artifact and verification performed. State any examples or behaviors that could not be executed. Do not call documentation complete when it still conflicts with the implementation.
