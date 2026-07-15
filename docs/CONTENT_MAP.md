# Govind OS Content Map

Every retained file has one operational purpose. Directory location never makes content mandatory.

## Content Classes

| Path | Class | Load rule | Owner purpose |
|---|---|---|---|
| `AGENTS.md` | Kernel | Automatic/default | Stable cross-project behavior and safety |
| `GOVIND_CORE.md` | Router | When routing helps | Select one playbook |
| `playbooks/*.md` | Active workflow | One primary file per task | Executable task procedure |
| `experience/*.md` | History | Only when project and trigger match | Outcomes, decisions, and lessons |
| `templates/*.md` | Template | When producing that artifact | Output structure, never authority |
| `docs/*.md` | System metadata | Maintainers/audits | Architecture, classification, and budgets |
| `tests/*.md` | Characterization | OS validation | Expected routing and safeguards |

`README.md` is human orientation. Tool-specific behavior comes from current platform instructions, not stored overlays.

## Active Context Contract

A normal task loads:

1. the target repository's local instructions;
2. root `AGENTS.md`;
3. at most one primary playbook;
4. history or a template only when its exact trigger matches.

`GOVIND_CORE.md` may select step 3. Whole-repository loading is a routing failure.

## Retention Gate

Content remains only when it contributes at least one of:

- a stable Govind-specific constraint;
- a historical failure pattern with provenance and applicability;
- an executable decision gate or workflow;
- a reusable engineering artifact template;
- validation that prevents structural or behavioral regression.

Generic explanations reproducible from project code or current authoritative documentation are removed. Historical facts never masquerade as current state.

## Lesson Schema

Record trigger, context, failure, cause, rule, evidence/provenance, and applicability. Re-verify stale commands, paths, versions, and statuses before use.

## Change Rules

- One normative rule has one authoritative home.
- New active files require a unique trigger, owner class, token budget, and routing entry.
- Classify migrations in [FILE_DISPOSITION.md](FILE_DISPOSITION.md).
- Run `scripts/validate-govind-os.ps1` and review [routing scenarios](../tests/ROUTING_SCENARIOS.md) after structural changes.

The validator rejects retired directories, stale placeholders, broken links, excessive file budgets, and a corpus above 9,000 words.
