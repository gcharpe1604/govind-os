# AI Agents Operating Guide (AGENTS)

This document serves as the core instruction set and operating manual for all AI coding assistants (including Antigravity, Claude, Cursor, Codex, and others) when interacting with Govind-OS. It establishes the global standards for behavior, code modification, implementation workflows, validation pipelines, and context acquisition.

---

## Purpose
The purpose of this guide is to enforce a consistent, high-signal, and disciplined approach to codebase modification, analysis, and generation. It aligns AI agents with the repository's core philosophy, ensuring that all edits, documentation updates, and template modifications preserve the integrity and long-term utility of the Govind-OS systems.

---

## Before Starting Any Task
Every agent, immediately upon starting any session or task, must execute this context bootstrapping protocol:
1. **Read README.md:** Understand the overall repository structure and layer organization.
2. **Identify the Relevant Domain:** Determine which layer (`career/`, `open-source/`, `engineering/`, `learning/`, `experience/`, or `core/`) is relevant to the current task.
3. **Read Domain Files:** Load the active guide files for the target domain to understand its specific standards and context.
4. **Check Decision Log:** Review [experience/DECISION_LOG.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/experience/DECISION_LOG.md) for prior decisions made in this area.
5. **Check Lessons Learned:** Review [experience/LESSONS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/experience/LESSONS.md) for any applicable engineering or communication lessons.
6. **State Loaded Context:** Explicitly summarize what context was loaded and what assumptions are being made before proceeding.

---

## Core Principles
1. **Evidence-Based Engineering:** Prioritize concrete verification and documentation of logic over optimistic assumptions.
2. **Strict Structure Adherence:** Never bypass the established templates, naming conventions, or directory hierarchies.
3. **No Unrequested Placeholders:** Never generate `// TODO` comments or write placeholder values unless specifically instructed by the user.
4. **Decouple Logic and Artifacts:** Ensure code designs separate concern boundaries (e.g., separating CLI command declarations from execution logic).
5. **No Blind Commitments:** Always check the status of existing files, paths, and contents before executing changes.

---

## Repository Philosophy
Govind-OS is designed to compile, structure, and compound knowledge.
- **Core Layer:** Rules for executing and writing code.
- **Engineering Layer:** Deep technical paradigms.
- **Templates Layer:** Reusable blueprints for outbound communication and planning.
- **Experience Layer:** Real-time chronicles, decision audits, and lesson lists.

*Agents must protect these layer boundaries. Do not mix chronological journals with clean templates, and do not write ad-hoc scripts outside of scratch paths.*

---

## Code Modification Protocol
When changing code or files:
- **Prefer Minimal Scope:** Make the smallest reasonable change that solves the problem. Avoid unrelated cleanup, unnecessary refactors, or scope expansion.
- **Respect Existing Patterns:** Prefer existing abstractions, conventions, and architectures. Create new patterns only when existing ones are insufficient.
- **Prefer Extension Over Creation:** Before creating new files, new abstractions, new frameworks, or new utilities, determine whether existing structures can be extended.
  ```
  Extend Existing System  ⟶  Create New System
  ```
  *Avoid: New Problem ⟶ New Abstraction. Repository complexity is a cost; new structures must be justified by repeated need.*
- **Preserve Working Behavior:** Do not modify working behavior without justification. Every behavior change should be intentional.
- **Optimize For Maintainability:** Prefer readability, simplicity, and predictability over clever, complex solutions.

---

## Implementation & Risk Protocol

### Risk Classification
- **Low Risk:** Documentation updates, small bug fixes, test additions.
- **Medium Risk:** Internal refactoring, dependency updates, multi-file modifications.
- **High Risk:** Architecture changes, public API changes, security-sensitive modifications, data model changes.

*As implementation risk increases: increase validation depth, increase review depth, and increase caution.*

### Implementation Sequence
1. **Understand:** Clarify requirements, constraints, and acceptance criteria.
2. **Analyze:** Identify existing patterns, related components, and potential risks.
3. **Plan:** Determine files affected, validation requirements, and scope boundaries.
4. **Execute:** Implement the smallest reasonable solution. Prefer incremental improvements.
5. **Verify:** Confirm requirements are satisfied, scope is maintained, and no regressions are introduced.

---

## Validation & Review Protocol
Work is never considered complete until validation has been performed.

### Validation Principle
*Code that compiles is not necessarily correct. Code that passes tests is not necessarily correct. Validation must confirm:*
- **Correctness:** Does it perform the operation accurately?
- **Behavior:** Does it behave correctly under load, failure, or edge conditions?
- **Intent:** Does it solve the root problem as planned?

### Validation Checklist
- **Build Validation:** Verify compilation succeeds and the project builds successfully.
- **Test Validation:** Verify existing tests pass and new functionality is tested.
- **Functional Validation:** Verify expected behavior occurs and requirements are satisfied.
- **Regression Validation:** Verify existing functionality remains intact.
- **Edge Case Validation:** Consider invalid inputs, empty inputs, boundary conditions, and error paths.

### Code Review Checklist
Before finalizing work:
- [ ] Root cause identified
- [ ] Repository patterns followed
- [ ] Scope minimized
- [ ] Behavior intentional
- [ ] Existing tests pass
- [ ] New tests added when appropriate
- [ ] Documentation updated if necessary
- [ ] No unnecessary abstractions introduced
- [ ] No temporary code remains
- [ ] Validation completed

---

## Decision-Making Framework
When proposing changes or resolving issues:
1. **Analyze Reversibility:** Identify if a proposed change is a Type 1 (irreversible/hard to undo) or Type 2 (reversible/low-cost to undo) decision.
2. **Prioritize Opportunity Cost:** Clearly evaluate what options are excluded by choosing a particular solution.
3. **Provide Alternatives:** Propose at least 2 alternative routes with clear trade-offs (Pros & Cons) in project designs or code structures.
4. **Set Up Review Metrics:** Establish success metrics that can be tested (e.g., error rates, coverage percentages, benchmark latencies).

---

## Decision Confidence Levels
Agents must explicitly state their level of confidence when recommending specific solutions, designs, or troubleshooting steps:
- **High Confidence:** Backed by direct documentation links, local command execution outputs, or established repository patterns.
- **Medium Confidence:** Plausible solutions backed by industry standard practices but lacking direct local replication or explicit codebase history.
- **Low Confidence / Hypothesis:** Theoretical solutions or experimental approaches that require local verification.
- **Unknown:** Out-of-scope issues or situations where insufficient context is available.

---

## Repository Evolution Rules
- **Repeated Need ⟶ Abstraction:** If a pattern, template field, or code pattern is required in three or more places, abstract it into a reusable component or shared template.
- **Single Need ⟶ Avoid Abstraction:** If a requirement is unique to a single file, write it inline. Do not over-engineer solutions for single-use cases.

---

## When To Say "No"
Agents must explicitly halt and query the user when:
- Proposed changes violate established patterns in [core/CODING_STANDARDS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/core/CODING_STANDARDS.md) or [core/ENGINEERING_PRINCIPLES.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/core/ENGINEERING_PRINCIPLES.md).
- Changes require importing heavy third-party libraries for simple logic that can be written in plain Go or standard libraries.
- The user requests modifications that bypass testing requirements or merge raw placeholders into key directories.

---

## Common Agent Failure Modes
To remain alert, agents must actively self-audit for:
- **Swallowing Errors:** Catching exceptions or Go errors without wrapping or returning them.
- **Placeholder Generation:** Writing comments like `// TODO: implement later` instead of compiling the logic.
- **Cognitive Drift:** Forgetting files, paths, or settings specified in the user metadata during multi-turn interactions.
- **Abundant Conversational Filler:** Writing long, verbose explanations instead of delivering structured, clickable links and code diffs.
- **Ignoring Existing Code:** Implementing new utility functions when similar ones already exist in `/pkg` or `/core`.

---

## Escalation Rules
When encountering an error or block during execution:
1. **Locate Logs First:** Review execution outputs, linter errors, and local test run outputs.
2. **Explain the Failure:** Detail what was attempted, what was expected, and the exact error output received.
3. **Provide Options:** Present at least 2 pathways for resolution (e.g., modifying package versions, refactoring the interface) with their associated tradeoffs.
4. **Halt for Permission:** Do not make arbitrary modifications to other directories (outside the task scope) to force a passing build without user consent.

---

## Open Source Expectations
When assisting with open-source codebases (like CNCF projects):
- **Maximize Reviewability:** Focus on creating small, atomic modifications. Split large refactors into discrete steps.
- **Defensive API Design:** Keep public interfaces minimal and hide execution details.
- **Strict Compatibility:** Do not break backward compatibility without a deprecation timeline and major version bump.
- **Verbose Self-Review:** Perform a self-review of all code changes before presenting them to the user.

---

## Learning Expectations
- Transform experience into lessons with unique identifiers (e.g., `LESSON-XXX`) under [experience/LESSONS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/experience/LESSONS.md).
- Document the Source (e.g., Harbor, Book, Project) and the Confidence level (Hypothesis, Likely True, Repeatedly Verified).
- Capture lessons immediately rather than relying on retrospectives.

---

## Communication Expectations
- **Concise & Direct:** Focus on technical content, avoiding verbose, conversational filler.
- **Clickable Links:** Always link files and code symbols (classes, functions, types) using Github-style Markdown links with the `file://` scheme (using absolute paths for local file linking).
- **Clear PR Descriptions:** Use the formats described in [templates/PR_DESCRIPTION.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/templates/PR_DESCRIPTION.md).

---

## Anti-Patterns
Agents must actively avoid:
- **Writing Placeholders:** Inserting `// TODO: implement later` instead of writing full logic.
- **Swallowing Errors:** Swallowing exceptions, logs, or return values instead of propagating them correctly.
- **Magic Frameworks:** Proposing bloated libraries or magic frameworks when a standard library or clean Go interface is sufficient.
- **Untracked Decisions:** Modifying architecture or files without documenting the tradeoffs.
- **Transactional Outreach:** Drafting cold outreach emails that ask for favors or referrals before establishing a relationship.

---

## Success Metrics
An agent's performance in Govind-OS is measured by:
- **Lint & Build Pass Rate:** 100% compilation and pass rate on all pipeline tools.
- **Zero Placeholder Merges:** Zero occurrences of temporary files, test bypasses, or empty structs in master.
- **Correct Layer Placement:** All new documents placed exactly in their logical layer and linked from the [README.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/README.md).
- **Outcome Quality Metrics:**
  - **Decision Audits:** A Decision Log entry created in [experience/DECISION_LOG.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/experience/DECISION_LOG.md) for every major architectural change.
  - **Knowledge Compounding:** At least one durable lesson captured in [experience/LESSONS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/experience/LESSONS.md) per program cycle or learning sprint.
  - **Review Efficiency:** Pull requests structured for first- or second-pass approval on reviews.
