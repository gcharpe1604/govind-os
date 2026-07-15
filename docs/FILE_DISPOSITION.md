# Repository-wide File Disposition

Audit date: 2026-07-15. Scope: all 69 non-Git-internal repository files present at audit start: 68 Markdown files and the validator script. The audit retained unique operational behavior, consolidated proven personal lessons, rewrote reusable engineering templates, and removed generic, duplicate, off-scope, placeholder, or potentially stale material.

## Retained or Rewritten

| Files | Outcome |
|---|---|
| `AGENTS.md` | Retained as the only mandatory kernel. |
| `GOVIND_CORE.md`, `README.md` | Rewritten for the reduced architecture. |
| `playbooks/DECIDE.md`, `DIAGNOSE.md`, `DOCUMENT.md`, `IMPLEMENT.md`, `PR_CI.md`, `RESEARCH.md`, `REVIEW.md` | Retained as distinct executable routes; opportunity scoring was consolidated into research. |
| `experience/LESSONS.md`, `experience/DECISION_LOG.md` | Rewritten to preserve only specific historical signal with provenance and re-verification warnings. |
| `templates/ISSUE_REPORT.md`, `PR_DESCRIPTION.md`, `PROJECT_PROPOSAL.md`, `TECHNICAL_WRITEUP.md` | Rewritten as compact coding artifacts. |
| `docs/CONTENT_MAP.md`, `tests/ROUTING_SCENARIOS.md`, `scripts/validate-govind-os.ps1` | Rewritten or retained as governance and regression protection. |

## Removed

| Files | Reason |
|---|---|
| `agents/AGENTS.md`, `agents/ANTIGRAVITY.md`, `agents/CLAUDE.md`, `agents/CODEX.md`, `agents/CURSOR.md` | Thin compatibility pointers and tool advice duplicated current platform instructions. |
| `career/CAREER_OS.md`, `career/GSOC.md`, `career/INTERNSHIPS.md`, `career/LFX.md`, `career/NETWORKING.md`, `career/PROJECT_SELECTION.md`, `career/RESUME_RULES.md`, `career/SUMMER_OF_BITCOIN.md` | Separate career handbook; off the coding-agent critical path and mostly generic or time-sensitive. |
| `core/AI_COLLABORATION.md`, `core/CODING_STANDARDS.md`, `core/DEBUGGING.md`, `core/DECISION_MAKING.md`, `core/DISCOVERY_FRAMEWORKS.md`, `core/ENGINEERING_PRINCIPLES.md`, `core/OPPORTUNITY_DISCOVERY.md`, `core/WORKFLOW_PLAYBOOK.md`, `core/WORKFLOWS.md` | Duplicated the kernel/playbooks or contained generic productivity material. Unique opportunity scoring moved to `RESEARCH.md`. |
| `engineering/BACKEND.md`, `engineering/CLOUD_NATIVE.md`, `engineering/DEVOPS.md`, `engineering/DISTRIBUTED_SYSTEMS.md`, `engineering/ENGINEERING_OS.md`, `engineering/KUBERNETES.md`, `engineering/LANGUAGE_AGNOSTIC_ENGINEERING.md`, `engineering/POSTGRESQL.md`, `engineering/SYSTEM_DESIGN.md` | Generic textbook content without project/version authority; local code and current official docs are safer and cheaper. |
| `experience/HARBOR.md`, `experience/LFX_2026.md`, `experience/REJECTIONS.md` | Mostly placeholders, example plans, or unverified narrative rather than durable evidence. |
| `learning/BOOK_NOTES.md`, `learning/KNOWLEDGE_GRAPH.md`, `learning/LEARNING_BACKLOG.md`, `learning/LEARNING_SYSTEM.md` | Generic learning system and empty planning structures; not required for engineering execution. |
| `open-source/CNCF_PLAYBOOK.md`, `open-source/CONTRIBUTION_WORKFLOW.md`, `open-source/LFX_LESSONS_2026.md`, `open-source/MAINTAINER_INTERACTION.md`, `open-source/PR_CHECKLIST.md`, `open-source/REVIEW_GUIDELINES.md` | Repeated the active PR/review workflows. Five specific historical lessons were consolidated into `experience/LESSONS.md`. |
| `startup/IDEA_VALIDATION.md`, `startup/MVP.md`, `startup/PRODUCT_STRATEGY.md`, `startup/STARTUP_OS.md` | Separate generic product handbook, outside the coding-agent operating scope. |
| `templates/COLD_OUTREACH.md`, `templates/COVER_LETTER.md` | Non-engineering career artifacts. |

## Retention Rule

Do not restore a removed file merely to store general knowledge. Add content only when it changes a repeatable engineering action, has a unique retrieval trigger, and cannot be sourced more accurately from the target repository or current authoritative documentation.
