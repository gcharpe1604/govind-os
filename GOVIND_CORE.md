# Govind OS Router

Read [AGENTS.md](AGENTS.md) first. Choose one primary playbook; use a second only when the requested outcome has a distinct second phase.

| Task signal | Primary playbook |
|---|---|
| Build, change, fix, or refactor | [Implement](playbooks/IMPLEMENT.md) |
| Explain a failure or find root cause | [Diagnose](playbooks/DIAGNOSE.md) |
| Review code, a diff, design, or pull request | [Review](playbooks/REVIEW.md) |
| Fix CI, address feedback, or prepare a pull request | [PR and CI](playbooks/PR_CI.md) |
| Research, orient to a repository, or find work | [Research](playbooks/RESEARCH.md) |
| Make an architectural or consequential trade-off | [Decide](playbooks/DECIDE.md) |
| Produce or change documentation only | [Documentation](playbooks/DOCUMENT.md) |

## Optional Context

- Local repository rules, code, tests, runtime evidence, and authoritative project documentation come before Govind OS.
- Load [lessons](experience/LESSONS.md) or the [decision log](experience/DECISION_LOG.md) only when the named project and trigger match. Re-verify historical claims.
- Use one matching file under `templates/` only when producing that artifact.
- Tool behavior comes from the tool's current platform instructions; Govind OS does not maintain tool overlays.

If no route fits, use the kernel directly. Do not invent a new framework or load the repository wholesale.

See [docs/CONTENT_MAP.md](docs/CONTENT_MAP.md) for content ownership and [docs/FILE_DISPOSITION.md](docs/FILE_DISPOSITION.md) for the repository-wide audit.
