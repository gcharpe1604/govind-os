# Opportunity Discovery (OPPORTUNITY_DISCOVERY)

> [!NOTE]
> **Purpose of this Document:**
> This document defines how opportunities should be discovered, evaluated, prioritized, and converted into actionable engineering work. The goal is not generating speculative ideas; the goal is identifying high-value, realistic, mergeable, and actionable opportunities supported by evidence.
>
> Opportunities may include:
>
> - Bugs and regressions
> - Core features and feature enhancements
> - Documentation improvements (guides, READMEs, inline docs)
> - Testing gaps (unit, integration, end-to-end coverage)
> - Developer experience improvements (tooling, CI/CD, script optimization)
> - Technical debt reduction
> - Architectural improvements

---

## Opportunity Sources Matrix

To guide discovery processes, use the following mapping of opportunity types to their corresponding evidence sources:

| Opportunity Type | Key Sources | Example Outputs / Files |
| :--- | :--- | :--- |
| **Bug** | CI/CD pipelines, runtime error logs, user issue reports | Test failures, stack traces, GitHub issues |
| **Feature** | Milestone boards, roadmap definitions, community chat discussions | Open feature requests, user forums |
| **Documentation** | Local setup walkthroughs, repeated user questions | Onboarding failures, missing setup guides |
| **Testing** | Code coverage summaries, regression history files | Low-coverage modules, flaky CI tests |
| **Technical Debt** | Static analysis logs, cyclomatic complexity reports | Linter warnings, repeated utility helper blocks |
| **Architecture** | Concurrency profiles, performance benchmarks | CPU/memory profiles, database bottleneck logs |

---

# Core Philosophy

## Opportunities Must Be Evidence-Based

Avoid:

- Random feature suggestions
- Speculative improvements without context
- Generic optimization recommendations

Prefer:

- Reproducible problems (failed tests, broken flows)
- Observable developer/user friction
- Existing user complaints or issues
- Missing capabilities identified by the roadmap
- Repeated maintenance pain points

---

## Impact Before Novelty

A boring improvement with a measurable impact (e.g., speeding up CI times, fixing a race condition, or clarifying setup instructions) is usually far more valuable than a novel feature.

---

## Understanding Before Suggesting

Do not propose changes before thoroughly understanding:

- The repository's operational structure
- The design patterns and architecture
- The users and target audience
- The maintainers' preferences and priorities
- The primary project goals

---

## Opportunity Cost Matters

Every proposed improvement competes with:

- Maintainer attention and review bandwidth
- Contributor time
- CI/CD resource limits

Prioritize opportunities accordingly, focusing on high-signal changes.

---

# Repository Classification

Before identifying or prioritizing opportunities, classify the target repository. OSS, personal projects, and startup/commercial codebases have different priorities:

## Open Source Repository

_Primary Question:_ What contribution is most likely to create value for users while being accepted by maintainers?

**Priority Stack:**

1. **Existing Issues:** Solving outstanding, triaged, or community-requested bugs.
2. **Roadmap Alignment:** Helping implement features scheduled for upcoming releases.
3. **User Pain Points:** Resolving friction raised in forums, discussions, or issue trackers.
4. **Documentation Gaps:** Improving onboarding, API docs, or code examples.
5. **Testing Gaps:** Increasing coverage on critical or fragile paths.
6. **Developer Experience:** Simplifying local setup, CLI wrappers, or contribution guidelines.
7. **Features:** Adding new, carefully scoped features that align with project goals.

_Avoid proposing complex features that conflict with the repository's long-term direction or create heavy maintenance burdens._

---

## Preferred OSS Contribution Order
When opportunities are otherwise equal, prioritize in this order:
1. **Confirmed Bugs** (reproducible, directly blocks users)
2. **Missing Tests** (protects stability, increases regression safety)
3. **Documentation Improvements** (onboarding fixes, clear setup steps)
4. **Developer Experience Improvements** (CI speedups, local script fixes)
5. **Small Features** (highly requested, low scope, low review cost)
6. **Large Features** (roadmap-aligned, requires design reviews)
7. **Architectural Changes** (structural decoupling, connection pooling fixes)

*This ordering maximizes merge probability, review speed, and immediate community value, aligning closely with how Harbor, Kubernetes, and other CNCF projects operate.*

---

## Personal Project

_Primary Question:_ What improvement creates the greatest learning, portfolio, or product value?

**Priority Stack:**

1. **User Value:** Enhancing the core utility of the application for its users.
2. **Learning Value:** Implementing concepts, languages, or tools that expand technical expertise.
3. **Portfolio Value:** Making code structure clean, idiomatic, and demonstrative of engineering competence.
4. **Reliability:** Fixing bugs, error handling issues, and performance bottlenecks.
5. **Performance:** Optimizing slow paths or queries.
6. **Maintainability:** Refactoring messy blocks and structuring tests.

---

## Startup/Product

_Primary Question:_ What improvement creates the greatest business value?

**Priority Stack:**

1. **User Retention:** Fixing bugs, UI friction, or core failures impacting user retention.
2. **Revenue Impact:** Implementing features or fixes directly linked to business goals or user acquisition.
3. **Reliability:** Improving uptime, data integrity, and system health.
4. **Operational Efficiency:** Reducing cloud costs, simplifying deployments, and reducing manual operations.
5. **Product Expansion:** Introducing new feature sets requested by paying clients or the market.

---

# Maintainer & Stakeholder Analysis

For any collaborative repository (especially GSoC, LFX, Harbor, or other CNCF projects), analyze the project context before suggesting improvements:

## Step 1: Repository History & PR Audits

Review:

- **Recent PRs (Merged & Closed):** Observe how maintainers review code. Look at the comments, requested changes, and tone.
- **Closed/Rejected PRs:** Identify common reasons for rejection (e.g., too large, lacking tests, wrong abstractions, breaking compatibility).
- **Open Issues:** Check which issues are stale, active, or marked as `good first issue` / `help wanted`.
- **Roadmap & Release Notes:** Understand current themes (e.g., stability vs. feature velocity).
- **Maintainer Comments:** Note what kinds of feedback key maintainers consistently give.

## Step 2: Determine Project Preferences

- **Preferred Contribution Size:** Does the project favor tiny, atomic PRs or unified feature branches?
- **Preferred Implementation Style:** What design patterns (e.g., specific testing libraries, Go error wrapping patterns, framework structures) are preferred?
- **Current Priorities:** What is the active release milestone focusing on?

_Acceptance probability must be calculated and factored directly into the opportunity ranking._

---

# Repository Understanding Protocol

Force a systematic "Understand before Suggest" sequence. An agent must establish baseline understanding before drafting any proposal:

```
Run Project Locally  ⟶  Map Core Paths  ⟶  Document Patterns  ⟶  Verify Assumptions  ⟶  Define Constraints
```

1. **Run Project Locally:** Set up the development environment, execute the test suite, and run the binary/service. If local execution fails, resolving the setup documentation or script is the first candidate opportunity.
2. **Map Core Paths:** Identify the main entry points (e.g., `main.go`, CLI definitions, router handlers) and trace key data structures.
3. **Document Patterns:** Map the existing architecture, shared utilities, database interaction layer, and testing conventions.
4. **Verify Assumptions:** Run localized manual checks, search issues for similar ideas, or read PR threads to verify if the suspected problem is actually known or intentional.
5. **Define Constraints:** State explicitly what cannot be changed (e.g., breaking API schemas, upgrading go versions, or importing large third-party libraries) before proposing an adjustment.

---

# Opportunity Discovery Pipeline

All opportunities must pass through the following sequence:

```
Repository Understanding
          ↓
  Evidence Collection
          ↓
Opportunity Discovery
          ↓
Opportunity Validation
          ↓
 Opportunity Ranking
          ↓
Issue / Proposal Generation
          ↓
Implementation Planning
```

- **Repository Understanding:** Build technical and organizational context using the protocol.
- **Evidence Collection:** Locate real-world inputs (reproduction steps, issue logs, user pain points).
- **Opportunity Discovery:** Apply targeted discovery frameworks (Bug, Feature, Doc, etc.).
- **Opportunity Validation:** Verify locally and check duplicate proposals.
- **Opportunity Ranking:** Score against Impact × Acceptance Probability × Scope Fit.
- **Issue / Proposal Generation:** Draft high-signal descriptions.
- **Implementation Planning:** Create atomic, actionable plans.

_Opportunities should never skip validation or ranking. The objective is not finding opportunities; the objective is finding opportunities worth acting on._

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

---

# Acceptance Probability Analysis

In open-source software (OSS), impact does not guarantee acceptance. Proposing a valuable change that is rejected is a waste of contributor and maintainer time. Every opportunity must be evaluated through the lens of acceptance probability before execution.

## The Acceptance Formula

Rank opportunities using the following scoring framework:

```
Score = Impact × Acceptance Probability × Scope Fit
```

### 1. Impact (Scale: 1 to 5)

- **5 (Critical):** Fixes data loss, security vulnerabilities, or major system outages.
- **4 (High):** Adds highly requested roadmap features or fixes core functionality bugs.
- **3 (Medium):** Improves documentation clarity, adds tests, or resolves minor functional bugs.
- **2 (Low):** Refactors code, resolves technical debt, or improves low-use CLI helpers.
- **1 (Negligible):** Cosmetic changes, formatting updates, or minor typo fixes.

### 2. Acceptance Probability (Scale: 0.0 to 1.0)

Evaluate historical maintainer behavior:

- **1.0 (Certain):** Addressing a specific issue assigned to you or explicitly requested by a maintainer.
- **0.8 (Highly Likely):** Fixing a confirmed, reproducible bug or adding tests/documentation requested on open issues.
- **0.5 (Possible):** Introducing minor feature improvements aligned with the roadmap or refactoring complex code supported by tests.
- **0.2 (Unlikely):** Proposing significant architectural refactors, importing massive new libraries, or making breaking API changes without prior alignment.
- **0.0 (No-Go):** Re-implementing a feature that was previously rejected, violating coding guidelines, or submitting large, undocumented patches.

### 3. Scope Fit (Scale: 0.0 to 1.0)

- **1.0 (Atomic):** Under 100 lines of code, well-tested, isolated, and easy to review.
- **0.7 (Focused):** Single-module changes, low regression risk, and self-contained.
- **0.4 (Broad):** Multi-file changes affecting core packages, requiring multiple reviewer approvals.
- **0.1 (Systemic):** Massive repository-wide changes, breaking public APIs, or altering core interfaces.

### 4. Discovery Confidence (Modifier: 0.0 to 1.0)
Discovery confidence discounts speculative ideas and prioritizes evidence-backed opportunities:
- **1.0 (High Confidence):** Reproduced locally, verified with codebase traces/logs, or backed by direct maintainer comments.
- **0.5 (Medium Confidence):** Partial evidence available, but requires further validation, local replication, or clarification.
- **0.1 (Low Confidence):** Theoretical hypothesis only; no reproduction or direct codebase evidence yet exists.

---

## The Prioritized Scoring Formula
Multiply the baseline score by the Discovery Confidence modifier to calculate the final actionable ranking:

```
Final Score = (Impact × Acceptance Probability × Scope Fit) × Discovery Confidence
```

*Aim for opportunities with a high Final Score. A Medium-Impact, Atomic PR with 0.8 Acceptance Probability and High Confidence (1.0) is significantly better than a High-Impact, Systemic proposal with 0.2 Acceptance Probability or a Low Confidence (0.1) speculation.*

_Note: The score is a prioritization aid, not a substitute for engineering judgment. Maintainer feedback, roadmap alignment, and repository context may override numerical rankings._

---

# Opportunity Ranking Framework

After validation, all opportunities should be categorized into one of the four following tiers to prioritize engineering effort:

## Tier 1: Immediate Action (Score ≥ 3.0)
*Characteristics:*
- Reproducible and verified.
- High impact with high acceptance probability.
- Small, atomic scope (easy to implement and review).

*Action:* Fix immediately, write tests, and submit a targeted pull request.
*Examples:* Confirmed bug fixes, missing unit tests on critical paths, broken links/setup documentation, and regression fixes.

---

## Tier 2: Strategic Contributions (1.5 ≤ Score < 3.0)
*Characteristics:*
- Medium-to-high impact.
- Requires structural coordination or API design changes.
- Requires explicit maintainer alignment before writing code.

*Action:* Begin by opening a structured issue or submitting a proposal to verify alignment.
*Examples:* Roadmap feature additions, significant CLI/UI improvements, and developer experience enhancements.

---

## Tier 3: Exploration Opportunities (0.5 ≤ Score < 1.5)
*Characteristics:*
- Low baseline confidence or unverified assumptions.
- General refactoring or performance ideas requiring benchmarking.

*Action:* Do not implement immediately. Create a scratch script, gather profiling data, and evaluate tradeoffs.
*Examples:* Algorithmic optimizations, package structural refactors, and experimental proof-of-concept features.

---

## Tier 4: Avoid (Score < 0.5)
*Characteristics:*
- Conflicting with project roadmap or design philosophy.
- Previously rejected in historical discussions or PRs.
- Low impact combined with high complexity or massive scope.

*Action:* Do not pursue. Reject the idea early to protect maintainer and contributor bandwidth.
*Examples:* Massive stylistic changes, unnecessary third-party library imports, and features competing with core components.

---

# Contribution Readiness Checklist

Before pursuing an opportunity or writing code, ensure the following checklist is completed:

- [ ] **Repository Understood:** Core architecture and operational constraints mapped.
- [ ] **Opportunity Validated:** Locally reproduced (for bugs) or validated against current scope.
- [ ] **Duplicate Search Completed:** Confirmed that no open/closed issues or PRs are already addressing this.
- [ ] **Acceptance Probability Evaluated:** Scored using the Acceptance Formula.
- [ ] **Scope Fit Evaluated:** Scope is minimal, focused, and low-risk.
- [ ] **Maintainer Preferences Reviewed:** Historical PR reviews audited for styling and pattern habits.
- [ ] **Implementation Approach Identified:** Specific files and methods targeted before starting.
- [ ] **Issue/Proposal Created:** Created and aligned with maintainers if the opportunity is Tier 2 (Strategic).

---

# Issue Generation Protocol

When an opportunity is validated and categorized as Tier 1 or Tier 2, convert it into a structured GitHub issue:

1. **Classify Opportunity Type:** Identify if it is a Bug, Feature, Documentation, or Testing issue.
2. **Collect Supporting Evidence:** Capture exact reproduction steps, logs, file paths, line ranges, or failed test outputs.
3. **Determine Severity:** Categorize impact using the severity assessment (Critical, High, Medium, Low).
4. **Determine Affected Users:** Identify who faces this issue and how it impacts their workflow.
5. **Determine Expected Behavior:** Specify how the feature/code should work based on project standards.
6. **Determine Actual Behavior:** Describe the current erroneous behavior, referencing local logs.
7. **Draft Issue:** Structure the findings using [templates/ISSUE_REPORT.md](../templates/ISSUE_REPORT.md).

*Issues must be reproducible, evidence-based, focused on a single topic, and completely free from speculative suggestions.*

---

# Proposal Generation Protocol

For larger, strategic Tier 2 opportunities that involve architectural updates or new features:

```
Opportunity  ⟶  Root Cause  ⟶  Alternatives  ⟶  Tradeoffs  ⟶  Plan  ⟶  PROJECT_PROPOSAL.md
```

1. **State the Opportunity:** Describe the proposed improvement and its target value clearly.
2. **Identify Root Cause:** Explain why the current system design requires change.
3. **Generate Alternatives:** Outline at least 2 alternate design paths.
4. **Evaluate Tradeoffs:** Document pros, cons, and performance implications of each path.
5. **Formulate Implementation Plan:** Provide a step-by-step implementation sequence, including compilation milestones and validation methods.
6. **Draft Proposal:** Document the plan using [templates/PROJECT_PROPOSAL.md](../templates/PROJECT_PROPOSAL.md).

---

# PR Generation Protocol

Once the opportunity is implemented and validated locally:

1. **Compile Implemented Changes:** Summarize which files, packages, or commands were modified and why.
2. **Present Evidence:** Gather terminal test outputs, linter passes, and race detection logs.
3. **Detail Validation:** Document that build validation, test validation, and functional verification are completed.
4. **Draft Description:** Package the contribution using [templates/PR_DESCRIPTION.md](../templates/PR_DESCRIPTION.md).

*PR descriptions must maximize reviewability—keeping the scope minimal, atomic, and self-contained.*

---

# Opportunity Discovery Anti-Patterns

To maintain high standards, actively avoid the following discovery anti-patterns:
- **Speculative Features:** Suggesting capabilities before verifying if any actual user, roadmap item, or issue has requested them.
- **Roadmap Blindness:** Failing to review the project's milestones, leading to proposals that conflict with the maintainers' goals.
- **Maintainer Friction:** Ignoring historical closed PRs and maintainer comments, leading to re-submitting rejected styles or patterns.
- **Theoretical Optimization:** Tuning code that is not a performance bottleneck, introducing structural complexity for negligible runtime benefits.
- **Novelty Addiction:** Prioritizing high-complexity, shiny new frameworks or tools over boring, high-leverage maintenance fixes.
- **Unjustified Refactoring:** Proposing sweeping refactors or rewrites simply because of a personal, subjective stylistic preference.
- **AI Hallucination as Evidence:** Treating unverified AI-generated ideas or library imports as codebase facts without running local validation.

---

# Common Failure Modes

- **Swallowing Repository History:** Recommending a feature or fix that was already discussed, rejected, or resolved in a closed PR/issue.
- **Missing Local Replication:** Suggesting bug fixes without reproducing the failure on a local development machine first.
- **Scope Inflation:** Allowing a simple bug fix or documentation update to expand into a massive architectural refactoring.
- **Assumed Acceptance:** Developing and submitting a complex feature without first creating an issue and aligning with the maintainers.

---

# Lessons Learned

### Lesson Template
```markdown
### OPPORTUNITY-XXX: [Lesson Title]
- **Context:** 
- **Observation:** 
- **Lesson:** 
- **Evidence:** 
- **Future Application:** 
```

---

# Evolution Rules

This document should evolve based on real opportunity discovery cycles. Update these frameworks only when:
- A new contribution type arises that is not covered by existing frameworks.
- A recurring maintainer feedback pattern or rejection reason suggests a new validation rule.
- A specific anti-pattern or failure mode is repeatedly encountered.

---

# Success Criteria

This document succeeds when it enables:
- Consistent identification of high-value, realistic, and mergeable contributions.
- 100% avoidance of speculative or low-signal PR proposals.
- Fast, automated generation of high-quality GitHub issues and design proposals.
- An increase in the approval and merge rate of upstream contributions.
