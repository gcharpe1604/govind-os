# Coding Standards

---

## Purpose

The purpose of coding standards is to produce code that is understandable, maintainable, testable, and reliable.

Code is written once but read many times. Optimization for readability and maintainability generally outweighs optimization for cleverness. Every engineer and AI agent writing code in this repository must align with these guidelines.

---

## Core Philosophy

→ See [core/ENGINEERING_PRINCIPLES.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/ENGINEERING_PRINCIPLES.md) for universal principles.

- **Prefer readability** over cleverness.
- **Prefer explicit behavior** over hidden behavior.
- **Prefer consistency** with the existing codebase over theoretical perfection.
- **Optimize for future maintainers.**

---

## Readability Standards

Good code should communicate intent clearly. Follow these principles to ensure high readability:

- **Write self-explaining code:** Structure your logic so that variables, functions, and files clearly reveal their roles without needing excessive comments.
- **Reduce cognitive load:** Avoid overly dense lines or complex nested flows that force the reader to keep too many details in mind at once.
- **Keep control flow easy to follow:** Write straightforward linear code. Avoid jumping through multiple indirect abstraction layers unless necessary.
- **Avoid deeply nested logic:** Guard clauses should be used to return early and keep the happy path flat (aim for no more than 2-3 levels of indentation).
- **Avoid surprising behavior:** Ensure code behaves predictably. Do not write side effects inside getters or perform non-obvious work behind standard interfaces.
- **Prioritize clarity over brevity:** A slightly longer, explicit name or implementation is better than a short, cryptically clever one.

---

## Simplicity Standards

Before introducing any complexity, ask yourself: *"Is this actually necessary?"*

- **Use the simplest solution** that satisfies all functional and non-functional requirements.
- **Avoid speculative abstractions:** Do not write interfaces, generic types, or extension hooks for features you might need "someday."
- **Prefer extending existing abstractions** before introducing new ones.
- **Avoid premature optimization:** Focus on correct, readable code first. Benchmark and profile before spending time optimizing loops or allocations.
- **Avoid solving hypothetical problems:** Build for the constraints of today. Let the architecture evolve naturally as requirements grow.
- **Reduce moving parts:** Keep the number of states, variables, and active threads to a minimum.

---

## Naming Standards

Names should reveal intent immediately. 

- **Use descriptive names:** Choose names that indicate why the variable/function exists and what it does.
- **Avoid cryptic abbreviations:** (e.g., use `connection` instead of `conn`, `index` instead of `idx`). Short abbreviations (like `i` for loops) are acceptable only in highly localized scopes.
- **Prefer domain terminology:** Match naming with standard terms defined by the project or API.
- **Be consistent:** Use the same term for the same concept across the entire codebase (e.g., do not mix `FetchUser`, `GetUser`, and `RetrieveUser`).
- **Variables explain representations:** Nouns representing what they contain.
- **Functions explain actions:** Verbs explaining what they do.

**Bad:**
- `x`, `tmp`, `val`, `data`, `info`, `process()`

**Good:**
- `userID`, `repositoryPath`, `connectionTimeout`, `validateCredentials()`

---

## Function Design Standards

Functions should be small, cohesive units of execution.

- **Do one logical thing:** A function should perform a single task. If it does multiple unrelated actions, split it up.
- **Have clear inputs and outputs:** Pass only necessary parameters. Return explicit values rather than mutating shared state.
- **Avoid hidden side effects:** Do not modify global configurations or write to external storage unless that is the explicit, named goal of the function.
- **Remain reasonably small:** Aim for functions that fit entirely within a single screen view.
- **Be easy to test independently:** Keep functions modular so they can be isolated in unit tests.

*Ask yourself: "Can I describe what this function does in one simple sentence?" If not, it is doing too much.*

---

## Error Handling Standards

Errors are part of normal program behavior and must be treated as first-class citizens.

- **Handle errors explicitly:** Do not ignore errors. Check them at the point of origin or bubble them up cleanly.
- **Provide actionable error messages:** Write messages that help developers or users understand *what* failed and *why*.
- **Preserve useful context:** Wrap low-level errors with context-rich descriptions (e.g., `"failed to read config file: %w"`) rather than returning generic messages.
- **Avoid swallowing errors:** Do not silently catch exceptions or ignore returned errors unless you explicitly document why it is safe to do so.
- **Fail predictably:** When a critical boundary is breached, fail fast and cleanly rather than running in an undefined, corrupted state.
- **Propagate errors appropriately:** Bubble errors up to the caller that has the authority to log, retry, or report the failure to the user.

---

## Testing Standards

Tests are part of the implementation and must be maintained with the same care as production code.

- **Test behavior, not implementation details:** Verify that the code outputs the correct results for given inputs, not the specific internal function calls it makes.
- **Cover success paths:** Ensure the happy path functions correctly under normal conditions.
- **Cover failure paths:** Test how your code handles invalid parameters, network failures, database errors, and timeouts.
- **Cover edge cases:** Test boundary conditions (empty arrays, zero values, maximum bounds).
- **Keep tests readable:** Structure tests with clear *Setup, Act, Assert* blocks.
- **Ensure tests are deterministic:** Avoid dependencies on real-time execution, external network calls, or random generators that can cause test flakiness.

---

## Documentation Standards

- **Document the "Why" and "How":** Focus documentation on non-obvious design decisions, architectural trade-offs, and reasoning behind workarounds.
- **Document public interfaces:** Write clear docstrings for public packages, functions, structs, and variables to explain how they should be consumed.
- **Do not document the obvious:** Avoid comments that simply translate readable code into English (e.g., `i++ // increment i`).
- **Keep comments up to date:** Outdated documentation is worse than no documentation. Always update comments when you change the underlying code.

---

## Refactoring Standards

- **Improve readability and maintainability:** Only refactor if the changes make the codebase easier to understand, extend, or test.
- **Reduce complexity:** Merge redundant functions, remove dead code, and clean up nested control loops.
- **Preserve behavior:** Ensure refactored code maintains identical external inputs and outputs.
- **Avoid ad-hoc rewrites:** Always have a clear objective and a comprehensive set of passing tests before refactoring.
- **Keep refactoring separate:** Do not mix logic changes/features and structural refactoring in the same commit.

---

## Code Review Readiness

Before submitting your code for review, ensure you have ticked the following boxes:

- [ ] All unit and integration tests pass successfully.
- [ ] The scope of the changes is minimal and highly focused.
- [ ] No unrelated formatting changes, debug statements, or dead code are left behind.
- [ ] Variable, function, and file naming conforms to project standards.
- [ ] Errors are handled correctly and wrapped with context.
- [ ] Relevant documentation and comments have been updated.
- [ ] You have manually self-reviewed the entire diff.

---

## AI-Generated Code Standards

AI-generated code must meet the same quality, security, and design standards as human-written code.

- **Never merge code solely because it compiles:** You must understand how every line works.
- **Verify Correctness:** Step through the logic and ensure it handles inputs and outputs correctly.
- **Verify Security:** Check for potential vulnerabilities, safe string operations, and resource disposal.
- **Verify Performance:** Inspect for memory leaks, redundant loops, and expensive allocations.
- **Verify Test Coverage:** Ensure the code has adequate test cases covering happy and failure paths.
- **Verify Maintainability:** Confirm the code is written simply, cleanly, and without excessive abstractions.
- **Verify Alignment:** Match the naming patterns, folder conventions, and style of the host repository.

---

## Common Anti-Patterns

Avoid these common coding anti-patterns:

- **Clever code:** Code that is dense, tricky, or uses obscure language features to save a few lines.
- **Premature optimization:** Spending time optimizing code that has not been benchmarked.
- **Over-abstraction:** Wrapping simple logic in multiple interfaces, factories, or wrapper objects.
- **Large functions:** Writing long blocks of logic that handle multiple responsibilities.
- **Hidden side effects:** Modifying system state, globals, or configurations implicitly.
- **Magic values:** Embedding hardcoded strings or numbers directly in logic instead of using constants.
- **Dead code:** Leaving unused variables, commented-out logic, or obsolete functions in the codebase.
- **Copy-paste programming:** Duplicating code blocks across files instead of refactoring them into reusable helpers.
- **Unverified AI-generated code:** Accepting model suggestions without executing or reviewing them.

---

## Continuous Improvement

Coding standards are dynamic guidelines, not rigid laws.

- **Learn from mistakes:** When a bug or system incident occurs, evaluate if a standard could have prevented it.
- **Evolve through evidence:** Update standards based on code metrics, real-world failures, or maintainer feedback.
- **Refinement over preference:** Only propose changes to coding standards if they bring clear, objective quality benefits, not simply personal style preferences.
