# Govind OS Router

Use this file after [AGENTS.md](AGENTS.md) only when the task benefits from a Govind OS workflow. Select one primary playbook. Add optional references only when local evidence leaves a specific gap.

## Coding Routes

| Task signal | Primary playbook | Optional reference |
|---|---|---|
| Implement, change, refactor, build | [Implement](playbooks/IMPLEMENT.md) | `core/CODING_STANDARDS.md`, then one relevant `engineering/` document |
| Diagnose, explain failure, find root cause | [Diagnose](playbooks/DIAGNOSE.md) | `core/DEBUGGING.md` |
| Review code, diff, design, or pull request | [Review](playbooks/REVIEW.md) | `open-source/REVIEW_GUIDELINES.md` |
| Fix CI, address PR feedback, prepare or update a PR | [PR and CI](playbooks/PR_CI.md) | `open-source/PR_CHECKLIST.md`, project `CONTRIBUTING.md` |
| Research, inspect unfamiliar repository, find an opportunity | [Research](playbooks/RESEARCH.md) | `core/OPPORTUNITY_DISCOVERY.md`; add `core/DISCOVERY_FRAMEWORKS.md` only for systematic discovery |
| Architecture or meaningful technical trade-off | [Decide](playbooks/DECIDE.md) | `core/DECISION_MAKING.md`, relevant engineering reference |
| Documentation-only change or technical artifact | [Documentation](playbooks/DOCUMENT.md) | Matching file in `templates/` |

If the request combines tasks, choose the playbook that governs the requested outcome. Add a second only when it introduces a distinct required action, such as implementation followed by PR publication.

## Domain References

These are cold references, not mandatory policy.

| Evidence gap | Load |
|---|---|
| Backend/API | `engineering/BACKEND.md` |
| System architecture | `engineering/SYSTEM_DESIGN.md` |
| Distributed systems | `engineering/DISTRIBUTED_SYSTEMS.md` |
| PostgreSQL/data modeling | `engineering/POSTGRESQL.md` |
| Kubernetes/cloud native | `engineering/KUBERNETES.md`, then `engineering/CLOUD_NATIVE.md` if needed |
| CI/CD/infrastructure | `engineering/DEVOPS.md` |
| Open-source contribution | `open-source/CONTRIBUTION_WORKFLOW.md` |
| Maintainer communication | `open-source/MAINTAINER_INTERACTION.md` |
| Harbor or LFX history | Matching file under `experience/` or `open-source/` |
| Career, startup, or learning | Corresponding domain entry point |

Load one reference first. Search within it before reading it fully. Stop when the evidence gap is resolved.

## Tool Overlays

Tool behavior is normally governed by the tool's current platform instructions. Load an overlay only when its named capability matters and no higher-priority instruction already covers it:

- [Codex](agents/CODEX.md)
- [Claude](agents/CLAUDE.md)
- [Cursor](agents/CURSOR.md)
- [Antigravity](agents/ANTIGRAVITY.md)

## History and Templates

- `experience/` records prior outcomes. Use a lesson only when its context and applicability match current evidence.
- `templates/` structures outputs; it does not authorize publishing or external actions.
- Never let a historical command, path, dependency version, status, or plan override current repository state.

## Unknown Tasks

1. Read the target repository's local instructions.
2. Search filenames and text for task keywords.
3. Choose the closest primary playbook.
4. Add one reference only if the playbook and local evidence are insufficient.
5. If no route fits, follow the kernel directly; do not invent a new framework during the task.

See [docs/CONTENT_MAP.md](docs/CONTENT_MAP.md) for ownership and lifecycle rules.
