# Govind OS

Govind OS is a compact operating layer for reliable engineering work with coding agents. It chooses the next correct action with the least sufficient context.

## Start Here

- **Agents:** load [AGENTS.md](AGENTS.md). It is the only mandatory Govind OS policy.
- **Task routing:** use [GOVIND_CORE.md](GOVIND_CORE.md) when a task needs a playbook.
- **Humans:** use the same router or browse the [content map](docs/CONTENT_MAP.md).

Do not read the whole repository. A normal task loads the kernel, local project rules and evidence, and at most one playbook. History and templates are opt-in.

## Architecture

| Layer | Purpose | Default load |
|---|---|---|
| [AGENTS.md](AGENTS.md) | Authority, scope, evidence, change, safety, verification | Yes |
| [GOVIND_CORE.md](GOVIND_CORE.md) | Task-to-playbook router | When needed |
| `playbooks/` | Short executable workflows | One per task |
| `experience/` | Project history and proven lessons | Only on a matching trigger |
| `templates/` | Reusable output structures | When producing that artifact |
| `docs/`, `tests/`, `scripts/` | Governance and validation | When maintaining Govind OS |

The [content map](docs/CONTENT_MAP.md) defines these boundaries. The [file disposition](docs/FILE_DISPOSITION.md) records the exhaustive 2026-07-15 cleanup.

## Operating Targets

- Mandatory kernel: at most 900 words.
- Router: at most 450 words.
- Playbook: at most 600 words.
- Typical Govind OS task context: below 3,000 tokens, excluding project-local evidence.
- Whole Markdown corpus: at most 9,000 words.
- Zero absolute local links and zero broken internal links.

Run the repository validator after changing the OS:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/validate-govind-os.ps1
```

Behavioral expectations live in [tests/ROUTING_SCENARIOS.md](tests/ROUTING_SCENARIOS.md). Compression is accepted only when correctness, scope, precedence, and verification behavior remain intact.

## Design Rules

- Project-local instructions and current evidence override Govind OS.
- One rule has one authoritative home; other documents link instead of restating it.
- Generic technical knowledge belongs in current project or official documentation, not duplicated here.
- Personalized lessons remain searchable with provenance and applicability.
- New documents need a unique operational purpose, routing trigger, and owner layer.

Govind OS succeeds when it reduces reading and retries while improving correctness, maintainability, and honest verification.
