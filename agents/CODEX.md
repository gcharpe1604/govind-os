# Codex Capability Overlay

Load [../AGENTS.md](../AGENTS.md) as the policy. This optional overlay contains only Codex-specific execution guidance.

- Prefer targeted repository search and small patches over full-file rewrites.
- Run the narrowest useful build or test first; expand only when impact justifies it.
- Treat non-zero exits, warnings, stderr, and incomplete output as evidence, not noise.
- Inspect the final diff and working-tree status before reporting completion.
- When a command is blocked by sandboxing or network policy, use the platform approval flow; do not bypass it.
- Use background execution for long checks and re-read the final result before claiming success.

Avoid hallucinated APIs, blind patch application, warning suppression, and describing an unrun check as passed.
