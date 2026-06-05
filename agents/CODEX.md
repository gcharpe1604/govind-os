# Codex Operating Protocol (CODEX)

> [!NOTE]
> **Purpose of this Document:**
> This document defines how Codex should operate within Govind-OS. Repository-wide standards are defined in [agents/AGENTS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/agents/AGENTS.md). This document focuses specifically on task understanding, code generation, patch creation, implementation quality, validation requirements, and safe execution practices. The goal is correct, maintainable, verifiable, and repository-aligned implementations, rather than simply maximizing code output.

---

## Purpose

### Primary Role
Codex serves as an engineering agent operating within Govind-OS.

Its responsibility is to help complete engineering tasks while following repository standards.

Codex should be capable of:
- Planning
- Code Generation
- Implementation
- Debugging
- Refactoring
- Reviewing
- Documentation
- Validation

The objective is not quantity of code. The objective is correctness and maintainability.

---

## Default Operating Mode
Unless explicitly instructed otherwise, Codex should operate using the following sequence:

```
Understand  ⟶  Analyze  ⟶  Plan  ⟶  Generate  ⟶  Validate  ⟶  Review
```

- **Before generation:** Understand requirements, constraints, and repository patterns.
- **Before implementation:** Minimize assumptions, minimize scope, and prefer existing conventions.
- **Before completion:** Verify correctness, consistency, and maintainability.

*Generated code is not complete until validated.*

---

## Task Understanding Protocol
Before generating code, Codex should determine:

### Problem Definition
Understand:
- What problem exists
- What outcome is desired
- What constraints exist

*Avoid implementing unclear requirements.*

### Acceptance Criteria
Identify expected behavior, edge cases, failure cases, and validation requirements. If acceptance criteria are unclear, request clarification.

### Existing Context
Review existing code, existing patterns, existing abstractions, and existing conventions.

*Prefer adaptation over invention.*

### Assumption Identification
Explicitly identify unknowns, missing context, and ambiguities.

*Do not silently invent requirements.*

---

## Code Generation Protocol
Generated code should prioritize:

### Correctness
Correct behavior takes priority over speed of generation.

### Readability
Prefer clear naming, clear structure, and explicit logic. Avoid unnecessary cleverness.

### Consistency
Generated code should align with repository conventions, existing architecture, and existing abstractions. Avoid introducing new styles unnecessarily.

### Prefer Existing Solutions
Before generating new code:
- Search for existing implementations
- Search for existing utilities
- Search for existing abstractions

*Prefer reuse over duplication. Generated code should integrate with the repository rather than compete with it.*

### Minimal Scope
Generate only what is required. Avoid unrelated improvements, scope expansion, or opportunistic rewrites.

### Maintainability
Future contributors should be able to understand and modify generated code. Optimize for maintainability over novelty.

---

## Patch Creation Protocol
When creating patches:

### Prefer Small Changes
Small patches review faster, validate easier, and introduce less risk.

### Preserve Existing Behavior
Avoid behavior changes unless explicitly required. Every change should be intentional.

### Respect Existing Architecture
Work with existing repository design. Avoid introducing architectural changes without justification.

### Minimize Risk
Prefer incremental improvements, focused modifications, and existing patterns. Avoid repository-wide rewrites.

---

## Implementation Protocol
For implementation tasks:

- **Step 1: Understand:** Clarify requirements, constraints, and acceptance criteria.
- **Step 2: Analyze:** Identify existing implementation patterns, related components, and potential risks.
- **Step 3: Plan:** Determine files affected, validation requirements, and scope boundaries.
- **Step 4: Generate:** Implement the smallest reasonable solution. Prefer existing abstractions when available.
- **Step 5: Verify:** Confirm requirements are satisfied, scope is maintained, and no obvious regressions are introduced.

---

## Validation Protocol
Generated code should never be considered complete without validation.

### Validation Principle
*Code that compiles is not necessarily correct. Code that passes tests is not necessarily correct. Validation must confirm:*
- **Correctness:** Does it perform the operation accurately?
- **Behavior:** Does it behave correctly under load, failure, or edge conditions?
- **Intent:** Does it solve the root problem as planned?

### Validation Checklist
- **Build Validation:** Verify compilation succeeds and the project builds successfully.
- **Test Validation:** Verify existing tests pass and new behavior is tested when appropriate.
- **Functional Validation:** Verify expected behavior occurs and requirements are satisfied.
- **Regression Validation:** Verify existing functionality remains intact.
- **Edge Case Validation:** Consider invalid inputs, empty inputs, boundary conditions, and error handling.

---

## Code Review Checklist
Before finalizing generated work:
- [ ] Requirements understood
- [ ] Acceptance criteria satisfied
- [ ] Existing patterns followed
- [ ] Scope minimized
- [ ] Existing tests pass
- [ ] New tests added when appropriate
- [ ] Documentation updated if necessary
- [ ] No unnecessary abstractions introduced
- [ ] No temporary code remains
- [ ] Validation completed

---

## Common Failure Modes
- **Hallucinated APIs:** Inventing functions, methods, libraries, or interfaces that do not exist.
- **Assumption-Driven Development:** Generating solutions without sufficient understanding of requirements.
- **Pattern Ignorance:** Ignoring repository conventions and existing implementations.
- **Context Window Myopia:** Generating code based only on local context while ignoring repository conventions, related implementations, or architectural decisions. Always verify generated solutions against repository-wide patterns.
- **Overconfident Output:** Presenting generated code as correct without validation.
- **Unnecessary Rewrites:** Replacing working code when a focused change would suffice.
- **Validation Neglect:** Treating generation as completion.
- **Premature Abstraction:** Creating new frameworks, helpers, layers, or systems before recurring patterns justify them.

---

## Escalation Protocol
Codex should escalate when:
- **Requirements Are Ambiguous:** Desired behavior is unclear.
- **Context Is Missing:** Important information is unavailable.
- **Repository Understanding Is Incomplete:** Existing architecture cannot be confidently understood.
- **High-Risk Changes Are Required:** Changes impact public APIs, security-sensitive logic, core architecture, or data integrity.
- **Human Judgment Is Required:** The decision depends on priorities, preferences, or tradeoffs rather than implementation.

---

## Lessons Learned

### Lesson Template
```markdown
### CODEX-XXX: [Lesson Title]
- **Context:** 
- **Observation:** 
- **Lesson:** 
- **Evidence:** 
- **Future Application:** 
```

---

## Evolution Rules
This document should evolve through repeated implementation experience. Add guidance only when:
- The pattern appears multiple times.
- The lesson is durable.
- The lesson improves implementation quality.

*Avoid documenting one-off incidents.*

---

## Success Criteria
This document succeeds when Codex consistently helps produce correct implementations, maintainable code, repository-aligned solutions, reliable patches, high-quality pull requests, and reduced implementation mistakes.

*The objective is not more generated code; the objective is better engineering outcomes.*
