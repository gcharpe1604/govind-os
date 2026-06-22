# GOVIND CORE

Primary entry point to Govind-OS.

---

# Purpose

GOVIND_CORE answers three questions:

1. **How should I think?** → Follow `agents/AGENTS.md`
2. **What should I load?** → Task Routing
3. **What if I don't know?** → Search Govind-OS

Everything else lives in specialized documents.

---

# Default Operating Mode

```text
Understand → Classify → Load → Execute → Validate
```

`agents/AGENTS.md` defines:

- Engineering principles
- Decision-making standards
- Validation requirements
- Repository interaction standards

All work should follow `agents/AGENTS.md`.

> GOVIND_CORE = Bootstrap. AGENTS.md = Main Operating System.

---

# Task Routing

Always load:

- `GOVIND_CORE.md`
- `agents/AGENTS.md`

before loading additional context. Then load only what the task requires.

| Task | Load |
|---|---|
| **Engineering** | |
| Backend / API / Go server development | `engineering/ENGINEERING_OS.md` → route from there |
| System design / architecture | `engineering/SYSTEM_DESIGN.md` |
| Distributed systems / consensus | `engineering/DISTRIBUTED_SYSTEMS.md` |
| Kubernetes / operators / cloud native | `engineering/KUBERNETES.md` + `engineering/CLOUD_NATIVE.md` |
| Database design / PostgreSQL | `engineering/POSTGRESQL.md` |
| Infrastructure / DevOps / CI/CD | `engineering/DEVOPS.md` |
| **Open Source** | |
| Repository & Opportunity Analysis | `core/OPPORTUNITY_DISCOVERY.md` |
| Open Source Contributions (general) | `open-source/CONTRIBUTION_WORKFLOW.md` |
| CNCF ecosystem work | `open-source/CNCF_PLAYBOOK.md` |
| Code review (giving or receiving) | `open-source/REVIEW_GUIDELINES.md` |
| PR submission / pre-submit workflow | `open-source/PR_CHECKLIST.md` + `templates/PR_DESCRIPTION.md` |
| Maintainer communication | `open-source/MAINTAINER_INTERACTION.md` |
| LFX-specific work | `open-source/LFX_LESSONS_2026.md` + `experience/LFX_2026.md` |
| Harbor-specific work | `experience/HARBOR.md` |
| **Core** | |
| Debugging / Root Cause Analysis | `core/DEBUGGING.md` |
| Technical decisions / tradeoffs | `core/DECISION_MAKING.md` |
| Coding implementation | `core/CODING_STANDARDS.md` + `core/ENGINEERING_PRINCIPLES.md` |
| **Career** | |
| Career / Resume / Applications | `career/CAREER_OS.md` → route from there |
| Project selection | `career/PROJECT_SELECTION.md` |
| Networking / cold outreach | `career/NETWORKING.md` + `templates/COLD_OUTREACH.md` |
| **Other Domains** | |
| Startup / Product / MVP | `startup/STARTUP_OS.md` → route from there |
| Learning / Skill Acquisition | `learning/LEARNING_SYSTEM.md` |
| Historical Context / Lessons | `experience/LESSONS.md` + `experience/DECISION_LOG.md` |
| Artifact Generation | Search `templates/` |
| Unknown / Unclassified Task | Use Knowledge Discovery |

**Agent overlay selection:** If using Antigravity → also load `agents/ANTIGRAVITY.md`. If using Claude → also load `agents/CLAUDE.md`. If using Cursor → also load `agents/CURSOR.md`. If using Codex → also load `agents/CODEX.md`.

**Multi-domain tasks:** Load the primary document first. Add supporting documents only when necessary.

---

# Knowledge Discovery

When a task does not fit the routing table:

1. Search Govind-OS for relevant documents.
2. Prefer specific guidance over general guidance.
3. Load the most relevant document.
4. Expand context incrementally only if needed.

Prefer existing guidance over invented guidance.
Prefer specific documents over broad loading.

---

# Success Criteria

GOVIND_CORE succeeds when agents:

- Load only relevant context.
- Discover existing knowledge before creating new guidance.
- Produce evidence-based, validated outputs.
- Keep Govind-OS modular as it grows.
