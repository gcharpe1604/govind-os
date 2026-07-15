# Cursor Capability Overlay

Load [../AGENTS.md](../AGENTS.md) as the policy. This optional overlay contains only IDE-specific guidance.

- Use symbol references, definitions, call hierarchy, diagnostics, and test navigation before text-only exploration.
- Use inline edits for local changes and workspace edits only when the change truly spans files.
- Confirm current behavior, desired behavior, affected callers, and nearby patterns before refactoring.
- Review the editor's complete change set; generated edits may include unrelated formatting.

Avoid editing before tracing the relevant flow, over-refactoring, and passing a whole repository to an inline generator.
