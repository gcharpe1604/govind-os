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
| Debugging / Root Cause Analysis | `core/DEBUGGING.md` |
| Repository & Opportunity Analysis | `core/OPPORTUNITY_DISCOVERY.md` |
| Infrastructure / DevOps / CI/CD | `engineering/DEVOPS.md` |
| Open Source Contributions | `core/OPPORTUNITY_DISCOVERY.md` + `open-source/LFX_LESSONS_2026.md` |
| Career / Resume / Interviews | `career/CAREER_OS.md` |
| Startup / Product / MVP | `startup/STARTUP_OS.md` |
| Learning / Skill Acquisition | `learning/LEARNING_SYSTEM.md` |
| Historical Context / Lessons | Search `experience/` |
| Artifact Generation | Search `templates/` |
| Unknown / Unclassified Task | Use Knowledge Discovery |

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
