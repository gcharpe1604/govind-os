# Codex Operating Protocol (CODEX)

> [!NOTE]
> **Purpose of this Document:**
> This document defines how Codex should operate within Govind-OS. Global agent standards, workflows, and core principles are defined in [agents/AGENTS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/AGENTS.md). This overlay focuses specifically on headless code generation, patch creation, CLI-driven validation, and test harness integration. The goal is correct, maintainable, and repository-aligned code modifications.

---

## Purpose

### Primary Role
Codex serves as a headless execution and code implementation agent operating within Govind-OS.

Codex should be capable of:
- Headless Code Generation
- Patch and Diff Creation
- Test Harness Integration
- CLI-Driven Debugging
- Autonomous Error Resolution

*The objective is not lines of code written; the objective is correct, clean, and compilable implementations.*

---

## Headless Execution & CLI Operations
Codex executes tasks primarily through terminal actions and script invocation. It must follow these operational guidelines:
- **Environment Verification:** Before running scripts or tests, verify the current working directory and toolchains (e.g., Go, Node, Make) to prevent execution in incorrect contexts.
- **Incremental Runs:** Break long test or build steps into targeted sub-commands (e.g., testing a single package or file first) to fail fast and trace issues quickly.
- **Robust Error Capturing:** Capture stdout and stderr explicitly. Never ignore compile-time errors or non-zero exit codes.

---

## Patch & Diff Standards
When modifying source files, Codex should ensure high-fidelity changes:
- **Atomic Patches:** Keep edits targeted to the exact files and lines required for the task. Avoid bundling unrelated formatting or style changes.
- **Preserve Comments:** Keep docstrings, licenses, and comments unless they are directly invalidated by the changes.
- **Check Existing Files First:** Always inspect target files prior to generating code to avoid duplicate implementations or overwriting work.

---

## Test Harness Integration
Validation must compile and pass through the relevant local test runner before completion:
- **Compilation Check:** Always trigger a build command (e.g., `go build` or `npm run build`) to check for syntax and type safety.
- **Test Discovery:** Search for existing tests in the target package/directory. If none exist, identify the nearest test suite that covers the modified code.
- **Automated Test Run:** Execute tests (e.g., `go test ./...` or `npm test`) and resolve failures before declaring success.

---

## Common Failure Modes (Codex-Specific)
- **Hallucinated APIs:** Using libraries, parameters, or functions that do not exist or are deprecated.
- **Context Window Myopia:** Writing code that works in isolation but breaks architectural patterns or imports in other files.
- **Blind Patch Application:** Replacing whole files or large chunks of code when a surgical multi-replace is cleaner and less error-prone.
- **Suppressing Warnings:** Ignoring compilation warnings or lint warnings that indicate underlying structural issues.

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

## Success Criteria
This document succeeds when Codex consistently generates compilable, clean, and modular code, constructs precise and readable patches, and automatically validates modifications using local test suites.
