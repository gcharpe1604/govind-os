# Govind OS Content Map

This map prevents the repository from becoming one undifferentiated prompt. Classification determines authority and load behavior; directory location alone does not make content mandatory.

## Content Classes

| Path | Class | Load rule | Owner purpose |
|---|---|---|---|
| `AGENTS.md` | Kernel | Automatic/default | Stable cross-project behavior and safety |
| `GOVIND_CORE.md` | Router | When task routing helps | Select one playbook and optional reference |
| `playbooks/*.md` | Active workflow | One primary file per task | Executable task procedure |
| `agents/*.md` | Compatibility/overlay | Only for a matching tool capability | Tool-specific deltas; no global policy |
| `core/*.md` | Reference | On a named evidence gap | Deep methods and legacy compatibility |
| `engineering/*.md` | Reference | On a matching technical gap | Optional domain knowledge |
| `open-source/*.md` | Reference | For upstream contribution work | Community, review, and PR detail |
| `experience/*.md` | History | Only when project and trigger match | Proven outcomes, decisions, and lessons |
| `career/*.md` | Reference | Career tasks only | Applications and program strategy |
| `startup/*.md` | Reference | Product/startup tasks only | Validation and delivery strategy |
| `learning/*.md` | Reference/history | Learning tasks only | Learning plans and notes |
| `templates/*.md` | Template | When producing that artifact | Output structure, not policy or authority |
| `docs/*.md` | System metadata | Maintainers/audits | Architecture, classification, budgets |
| `tests/*.md` | Characterization | OS validation | Expected routing and safeguards |

`README.md` is human orientation. `core/WORKFLOW_PLAYBOOK.md` and `agents/AGENTS.md` are compatibility pointers, not additional authorities.

## Active Context Contract

A normal task loads:

1. the target repository's local instructions;
2. root `AGENTS.md`;
3. at most one primary Govind OS playbook;
4. one optional reference only when local evidence and the playbook leave a concrete gap.

`GOVIND_CORE.md` may be used to choose step 3. History is never loaded merely because it exists. Whole-repository loading is a routing failure.

## Reference Quality Gate

Reference material is useful only when it contributes at least one of:

- a Govind-specific preference or constraint;
- a proven failure pattern with evidence;
- a decision gate or executable checklist;
- a project-specific map, exception, or recovery procedure;
- an artifact template with repeated use.

Generic explanations reproducible from current authoritative documentation should be shortened, linked, or retired. Historical facts must include enough context to judge applicability and must not masquerade as current state.

## Lesson Schema

Promoted lessons should record:

- **Trigger:** when to retrieve the lesson;
- **Context:** project, version, constraints, and date;
- **Failure:** observed behavior or bad outcome;
- **Cause:** verified reason;
- **Rule:** concise required behavior;
- **Evidence:** commands, links, review feedback, or runtime output;
- **Applicability:** where the rule does and does not apply.

One-off anecdotes stay in history. Repeated, durable lessons may become playbook rules after conflict and scope review.

## Change Rules

- One normative rule has one authoritative home. Other files link to it.
- New active files require a unique trigger, owner class, token budget, and routing entry.
- Archive before deleting when unique evidence or provenance may be lost.
- For migrations, classify old material as retained, consolidated, reference, archived, or intentionally removed.
- Run `scripts/validate-govind-os.ps1` and the scenarios in `tests/ROUTING_SCENARIOS.md` after structural changes.
