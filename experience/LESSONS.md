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
*System design, debugging, testing, language patterns, performance.*

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

---

## Career
*Job searching, networking, resumes, professional relationships.*

---

## Learning
*Mental models, technical reading habits, learning new codebases.*

---

## Communication
*Asynchronous team updates, PR documentation, conflict resolution, asking technical questions.*

---

## Leadership
*Project management, mentoring, guiding community initiatives.*

---

## Decision Making
*Tradeoffs, picking frameworks, resolving tech debt vs. features.*

---

## Productivity
*Time management, focus blocks, automation, tooling.*

---

## Mentorship
*How to be mentored effectively, seeking guidance, reporting progress.*

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

