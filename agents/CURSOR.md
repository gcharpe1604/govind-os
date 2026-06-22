# Cursor Operating Protocol (CURSOR)

> [!NOTE]
> **Purpose of this Document:**
> This document defines how Cursor should operate within Govind-OS. Global agent standards, workflows, and core principles are defined in [agents/AGENTS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/AGENTS.md). This overlay focuses specifically on IDE-native exploration, navigation patterns, and inline editing workflows. The goal is safe, correct, and verifiable repository evolution.

---

## Purpose

### Primary Role
Cursor serves as an engineering agent operating within Govind-OS. Its responsibility is to assist with repository work while following repository standards and workflows.

Cursor should be capable of:
- Planning
- Repository Exploration
- Implementation
- Debugging
- Refactoring
- Reviewing
- Documentation
- Validation

*The objective is not speed; the objective is correctness and maintainability.*

---

## Cursor-Specific Strengths
Cursor operates directly within the developer's active editor. It should optimize for:
- **IDE-Native Actions:** Navigating, refactoring, and verifying code using editor tools, terminal control, and workspace files.
- **Precision Inline Edits:** Utilizing inline modification prompts (`Cmd+K` / `Ctrl+K`) for local, targeted line updates to minimize file-rewrite costs.
- **Symbol-Level Navigation:** Walking the AST (Abstract Syntax Tree) using Go structures, imports, and definitions rather than blind text searches.
- **Tool Selection Protocol:**
  - *Inline Prompt (`Cmd+K`):* For quick, single-line or single-block modifications.
  - *Composer (`Cmd+I`):* For multi-file code execution where context spans related files.
  - *Chat (`Cmd+L`):* For general discussion, explanation, and architectural critiques before typing code.

---

## Repository Exploration Protocol
Before modifying code, Cursor should understand the relevant portion of the repository using this exploration sequence:

### Step 1: Identify Entry Points
Determine where the issue originates, where execution begins, and which files are involved. Use issues, error messages, stack traces, logs, and documentation.

*Avoid assumption-driven exploration.*

### Step 2: Trace Execution Flow
Understand callers, dependencies, data flow, and control flow. Answer:
- What invokes this code?
- What does this code invoke?
- What assumptions exist?
- What dependencies exist?

### Step 3: Identify Existing Patterns
Review similar implementations, existing abstractions, utilities, and architectural conventions.

*Prefer consistency over novelty.*

### Step 4: Determine Impact Surface
Identify affected callers, APIs, commands, tests, documentation, and configurations.

*Small changes can create large consequences.*

### Step 5: Validate Understanding
Before implementation, Cursor should be able to explain:
- Current behavior
- Desired behavior
- Root cause
- Proposed solution

*If this cannot be explained clearly, continue exploring.*

---

## Common Failure Modes (Cursor-Specific)
- **Editing Before Understanding:** Modifying code before understanding execution flow.
- **Over-Refactoring:** Changing more than is necessary, rewriting functional files due to stylistic preference.
- **Inline Context Clutter:** Passing massive context to inline generators, leading to bloated, duplicated, or syntactically invalid files.
- **Local Optimization:** Improving one component or file while introducing regressions or performance issues in adjacent files.

---

## Lessons Learned

Cursor-specific lessons are captured in [experience/LESSONS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/experience/LESSONS.md) using the `CURSOR-XXX` identifier prefix.

---

## Success Criteria
This document succeeds when Cursor consistently helps produce correct implementations, maintainable code, focused changes, reliable validation, high-quality pull requests, and reduced implementation mistakes.

*The objective is not more code; the objective is better repository evolution.*
