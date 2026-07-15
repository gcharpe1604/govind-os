# Discovery Frameworks

Reference document containing the 6 category-specific discovery frameworks used in the [Opportunity Discovery Pipeline](OPPORTUNITY_DISCOVERY.md).

→ Load this document only when you need the specific discovery checklist for a category. The pipeline, scoring formula, and ranking system remain in `core/OPPORTUNITY_DISCOVERY.md`.

---

# Bug Discovery Framework

## Objective

Identify reproducible defects that create measurable user, developer, or maintainer pain.

The best bugs are:

- **Reproducible:** Clear, deterministic steps to reproduce.
- **Understandable:** Simple execution flows and isolated components.
- **Well-Scoped:** Atomic changes required (no massive refactors).
- **High-Impact:** Affecting core functionality or blocking execution.
- **Mergeable:** Clear alignment with existing repository standards.

---

## Discovery Sources

Search:

- Open and closed issues/PRs (check for regression history or closed tickets)
- Failed test runs and CI pipelines
- Error logs, telemetry, and panic outputs
- `// TODO` or `// FIXME` comments in the codebase
- Slack, Discord, or community discussions
- GitHub Discussions or forums

---

## Bug Discovery Checklist

Determine:

1. What is broken? (Expected behavior vs. actual behavior)
2. Who is affected? (End users, developers, maintainers)
3. How often does it occur? (Deterministic, flake, rare edge case)
4. Can it be reproduced? (Write a minimal reproducible example)
5. Is it already known? (Search open issues and PRs)
6. What is the likely root cause? (State file and line ranges)

---

## Bug Validation

Before reporting or acting on a bug:

- **Reproduce Locally:** Replicate the failure on your local machine.
- **Verify Current Behavior:** Capture logs, stack traces, or terminal output demonstrating the issue.
- **Verify Expected Behavior:** Check documentation or specifications to verify the behavior is indeed unintended.
- **Search for Duplicates:** Query open issues, pull requests, and commit history.
- **Gather Evidence:** Preserve the test script, input payload, or logs.

_Avoid reporting speculative bugs. If it cannot be reproduced or verified, it is a hypothesis, not a bug._

---

## Bug Severity Assessment

- **Critical:** Data loss, security vulnerabilities (CVEs), system outages, or complete blocking of key flows.
- **High:** Core functionality broken with no workaround.
- **Medium:** Workflow disruption, but workarounds exist.
- **Low:** Minor friction, cosmetic issues, or spelling errors in non-user-facing logs.

---

## OSS-Specific Considerations

- **Prefer:** Existing maintainer pain points, regression issues, and frequently reported user bugs.
- **Avoid:** Theoretical edge cases with zero real-world occurrence, extremely rare failures requiring massive architectural changes, or unverifiable behavior.

---

# Feature Discovery Framework

## Objective

Identify missing capabilities that directly align with project roadmaps and address high-density user needs.

---

## Discovery Sources

- Project roadmap and milestone boards
- Feature requests in issues/discussions
- Repeated user requests in community chats
- Integration gaps (e.g., missing API clients, CLI commands)
- Comparison with similar industry standards or CLI conventions

---

## Feature Discovery Checklist

1. What is the proposed capability?
2. Who needs it, and what problem does it solve?
3. Does it fit within the project's scope/philosophy?
4. Are there existing workarounds?
5. How much complexity does it introduce?
6. Does it conflict with existing architecture or roadmap plans?

---

## Feature Validation

Before proposing a feature:

- **Verify Scope Fit:** Ensure the feature does not violate the core philosophy or layer boundaries.
- **Confirm Originality:** Search PRs, branches, and forks to ensure it hasn't been implemented or rejected before.
- **Establish User Value:** Identify at least three concrete use cases or issues requesting this capability.

---

# Documentation Discovery Framework

## Objective

Identify documentation gaps, outdated setup guides, or missing references that impede onboarding and usage.

---

## Discovery Sources

- Outdated setup guides (`README.md`, developer guides)
- Missing API or configuration references
- Undocumented features or flags
- Repeated user questions in issues/forums due to lack of clarity
- Missing code examples or tutorials

---

## Documentation Discovery Checklist

1. What is missing or outdated?
2. Is the developer setup guide working end-to-end?
3. Are all command-line arguments and configuration options documented?
4. Are the examples copy-pasteable and functional?
5. Is the grammar, formatting, and file-linking correct?

---

## Documentation Validation

- Run every step of the setup guide locally to confirm correctness.
- Verify that code snippets in tutorials compile and run without errors.
- Confirm links are valid and cross-references are up-to-date.

---

# Testing Discovery Framework

## Objective

Identify gaps in test coverage, flaky tests, and regression-prone areas that reduce repository reliability.

---

## Discovery Sources

- Code coverage reports (identify modules with low coverage)
- Flaky tests in CI pipelines
- Files with high change frequency (churn) but low test coverage
- Regression issues (bugs introduced repeatedly in the same area)
- Edge cases not covered in unit/integration test suites

---

## Testing Discovery Checklist

1. Which core modules or paths lack unit tests?
2. Are error handling paths and validation checks tested?
3. Are integration tests covering boundary values and network failures?
4. Are there mock/stub libraries that can simplify test setups?
5. Can flaky tests be reproduced locally?

---

## Testing Validation

- Run test suites locally with race detectors (`go test -race`).
- Ensure test additions run fast and do not significantly increase CI execution time.
- Verify that new tests fail as expected when the corresponding logic is broken.

---

# Technical Debt Discovery Framework

## Objective

Identify structural complexity, code duplication, deprecated dependencies, or anti-patterns that slow down development velocity.

---

## Discovery Sources

- Linter warnings and code quality tool outputs
- Large, complex functions (high cyclomatic complexity)
- Duplicated utility functions across packages
- Deprecated libraries or modules
- Code segments that violate repository coding standards

---

## Technical Debt Discovery Checklist

1. Does the code contain deprecated API usage or functions?
2. Are there duplicated helper functions that can be abstracted?
3. Are configurations hardcoded instead of parameterized?
4. Are functions performing too many actions (violating Single Responsibility)?
5. Are package boundaries clean or circular?

---

## Technical Debt Validation

- Verify that resolving the technical debt does not modify public API contracts or change existing behavior.
- Ensure the refactor is supported by robust test coverage.
- Confirm the change provides measurable benefit (e.g., reduces lines of code, improves testability, or eliminates linter errors).

---

# Architecture Improvement Framework

## Objective

Identify systemic bottlenecks, tight coupling, or scalability limits that require architectural refinement.

---

## Discovery Sources

- Performance benchmarks and profile data (CPU, memory, database)
- Highly coupled components that prevent modular updates
- Resource bottlenecks (memory leaks, connection leaks)
- Inefficiencies in concurrency, synchronization, or file I/O
- Complex integrations that lack a defined interface boundary

---

## Architecture Discovery Checklist

1. Where are the main runtime bottlenecks or resource leaks?
2. Are modules tightly coupled, requiring synchronized changes across packages?
3. Does the system scale predictably under load?
4. Can concurrency or caching patterns be improved?
5. Is the separation of concerns between components clear?

---

## Architecture Validation

- Gather baseline benchmark performance metrics.
- Propose architectural updates using design patterns (e.g., interface injection, decoupling, event-driven structures).
- Run benchmarks after changes to demonstrate measurable improvements.
- Verify that type/architectural modifications do not break backward compatibility.
