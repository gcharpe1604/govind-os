# Govind OS

Govind OS is a small operating layer for reliable engineering work with coding agents. Its value is not the size of its knowledge base; it is choosing the next correct action with the least sufficient context.

## Start Here

- **Agents:** load [AGENTS.md](AGENTS.md). It is the only mandatory Govind OS policy.
- **Task routing:** use [GOVIND_CORE.md](GOVIND_CORE.md) when a task needs a playbook or reference.
- **Humans:** use the same router or browse the [content map](docs/CONTENT_MAP.md).

Do not read the whole repository. A normal coding task should load the kernel, local project instructions, and at most one Govind OS playbook. References and history are opt-in.

## Architecture

| Layer | Purpose | Default load |
|---|---|---|
| [AGENTS.md](AGENTS.md) | Authority, scope, evidence, change, safety, verification | Yes |
| [GOVIND_CORE.md](GOVIND_CORE.md) | Task-to-playbook router | When needed |
| [`playbooks/`](playbooks/) | Short executable workflows | One per task |
| [`agents/`](agents/) | Tool-specific capability deltas | Only for that tool |
| `core/`, `engineering/`, `open-source/` | Deep optional references | On evidence gap |
| `experience/` | Project history and proven lessons | Only on a matching trigger |
| `career/`, `startup/`, `learning/` | Non-coding operating references | Only for those domains |
| `templates/` | Reusable output structures | When producing that artifact |

The [content map](docs/CONTENT_MAP.md) defines these boundaries. The old master file index is retained as a compatibility pointer at [core/WORKFLOW_PLAYBOOK.md](core/WORKFLOW_PLAYBOOK.md).

## Operating Targets

- Mandatory kernel: at most 900 words (about 1,200 tokens).
- Router: at most 900 words.
- Tool overlay: at most 250 words.
- Playbook: at most 600 words.
- Typical Govind OS task context: below 3,000 tokens, excluding project-local evidence.
- Zero absolute local links and zero broken internal links.

Run the repository validator after changing the OS:

```powershell
pwsh -File scripts/validate-govind-os.ps1
```

Behavioral routing expectations live in [tests/ROUTING_SCENARIOS.md](tests/ROUTING_SCENARIOS.md). Token reduction is accepted only when correctness, scope, precedence, and verification behavior are preserved.

## Design Rules

- Project-local instructions and current evidence override Govind OS.
- One rule has one authoritative home; other documents link instead of restating it.
- Generic technical knowledge stays cold. Personalized lessons remain searchable with evidence and applicability.
- New documents need a unique operational purpose, a routing trigger, and a clear owner layer.
- Repeated failures may promote a concise rule; stale rules should be corrected or retired.

Govind OS is successful when it reduces unnecessary reading and retries while improving correctness, maintainability, and honest verification.
