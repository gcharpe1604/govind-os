# Lessons Learned

## Purpose
A centralized repository of personal wisdom, rules of thumb, and principles distilled from software engineering, open-source work, and professional development.

---

## Lesson Template
### LESSON-XXX
- **Lesson:** 
- **Source:** (Harbor / LFX / Book / Project / Internship / Interview / etc.)
- **Confidence:** (Hypothesis / Likely True / Repeatedly Verified)
- **Context:** 
- **What Happened:** 
- **What I Learned:** 
- **Future Application:** 

---

## Engineering
*[EMPTY — TO BE POPULATED] System design, debugging, testing, language patterns, performance.*

---

## Open Source
*Upstream contributions, maintainer interaction, pull requests, repository navigation.*

### LESSON-001: Small PRs Merge Faster
- **Lesson:** Small PRs merge faster.
  - **Source:** Harbor
  - **Confidence:** Repeatedly Verified
  - **Context:** Harbor CLI configuration contribution.
  - **What Happened:** A large initial pull request with multiple refactors and additions required multiple review cycles and got delayed.
  - **What I Learned:** Reviewability matters. Maintainers have limited time; smaller chunks reduce cognitive load and lead to rapid approvals.
  - **Future Application:** Keep PRs highly focused, targeting one command or one fix at a time.

### LESSON-003: Auditing SDK Capabilities for High-Signal Feature Parity
- **Lesson:** Audit the underlying SDK capabilities against the CLI's feature checklist to find high-signal missing features.
  - **Source:** Harbor CLI
  - **Confidence:** Repeatedly Verified
  - **Context:** Deciding which unimplemented WebUI feature to build in Harbor CLI.
  - **What Happened:** Reviewing the `README.md` identified several unimplemented feature groups. Running Go tooling (like `go list` and `go doc`) on the `go-client` dependency revealed that the complete client package and API model for Garbage Collection (`client/gc`) was already built and ready.
  - **What I Learned:** Sometimes, the client SDK layer is fully implemented, but the command layer has not caught up. Proposing/building these features has high acceptance probability because they are pre-validated by SDK inclusion and directly address project milestones.
  - **Future Application:** Before designing/implementing custom wrappers, always inspect the SDK packages to see if the client endpoints are already stubbed out or fully defined.

---

## Career
*[EMPTY — TO BE POPULATED] Job searching, networking, resumes, professional relationships.*

---

## Learning
*[EMPTY — TO BE POPULATED] Mental models, technical reading habits, learning new codebases.*

---

## Communication
*[EMPTY — TO BE POPULATED] Asynchronous team updates, PR documentation, conflict resolution, asking technical questions.*

---

## Leadership
*[EMPTY — TO BE POPULATED] Project management, mentoring, guiding community initiatives.*

---

## Decision Making
*[EMPTY — TO BE POPULATED] Tradeoffs, picking frameworks, resolving tech debt vs. features.*

---

## Productivity
*[EMPTY — TO BE POPULATED] Time management, focus blocks, automation, tooling.*

---

## Mentorship
*[EMPTY — TO BE POPULATED] How to be mentored effectively, seeking guidance, reporting progress.*

---

## Systems Thinking
*Feedback loops, architectural trade-offs, systemic bottlenecks in code and workflows.*

### LESSON-002: Dynamic Context Bootstrapping vs. Hardcoded Stack Conventions
- **Lesson:** Keep global AI agent instructions abstract and load domain/stack conventions dynamically via bootstrapping.
  - **Source:** Govind-OS refactoring session
  - **Confidence:** Repeatedly Verified
  - **Context:** Deciding where Go and CNCF conventions belong when structuring configuration files for agents handling career, open source, learning, and projects.
  - **What Happened:** Including Go/CNCF-specific engineering standards in the base AI operating manual (`AGENTS.md`) polluted the guide for non-engineering tasks (e.g. drafting cold emails or writing career proposals).
  - **What I Learned:** AI instructions require a clean separation of concerns. Base layers should define behavior/meta-protocols, while a bootstrap loop dynamically injects specific domain context (like `core/CODING_STANDARDS.md`).
  - **Future Application:** Protect the generic boundary of the base protocol. Resolve language/tool details via dynamic layer lookup rather than hardcoding them in global files.

