# Language-Agnostic Engineering

This document establishes universal engineering principles and execution frameworks that apply across programming languages, frameworks, and technology stacks. Languages and frameworks change, but engineering fundamentals compound. The goal is to develop durable engineering judgment that remains valuable regardless of the tools being used.

---

## Purpose

The purpose of this document is to establish universal engineering principles and execution frameworks that apply across programming languages, frameworks, and technology stacks.

The goal is to develop durable engineering judgment that remains valuable regardless of the tools being used.

---

## Core Philosophy

- **Prefer understanding** before implementation.
- **Prefer simplicity** before sophistication.
- **Prefer evidence** before assumptions.
- **Prefer maintainability** before optimization.
- **Prefer systems thinking** over isolated fixes.
- **Prefer root-cause analysis** over symptom treatment.
- **Prefer long-term leverage** over short-term convenience.

---

## Problem Solving Framework

Before writing a single line of code, follow this structured process:

1. **Define the problem:** Articulate exactly what needs to be solved.
2. **Verify the problem exists:** Confirm the issue is reproducible and real.
3. **Identify constraints:** Establish bounds like time, memory, CPU, and dependencies.
4. **Understand current behavior:** Trace the code paths currently responsible for this area.
5. **Identify root causes:** Dig deep using methodologies like the "5 Whys" rather than guessing.
6. **Evaluate alternatives:** Brainstorm at least 2-3 different ways to solve the problem.
7. **Choose the simplest effective solution:** Select the approach with the lowest cognitive overhead.
8. **Verify the outcome:** Test and benchmark to confirm the fix actually works.

*Never optimize a solution before fully understanding the problem.*

---

## Systems Thinking

Systems should be evaluated as interconnected components rather than isolated modules.

Before making changes:
- **Understand upstream dependencies:** Identify which services, databases, or modules feed into the component you are modifying.
- **Understand downstream consumers:** Identify which modules or external systems rely on this component's outputs or state.
- **Identify feedback loops:** Detect situations where outputs feed back into inputs, creating cycles or cascades.
- **Identify bottlenecks:** Determine where resource contention (CPU, I/O, locks) limits overall system throughput.
- **Identify failure propagation paths:** Understand how a failure in this component cascades to other services.

*Local optimizations can create global regressions. Optimize for system outcomes, not individual component metrics.*

---

## System Understanding

Before modifying any existing system:

- **Read surrounding code:** Understand how your changes affect adjacent files or modules.
- **Understand data flow:** Trace where input data enters, how it transforms, and where it is saved.
- **Understand control flow:** Map the order of execution, loops, goroutines/threads, and exits.
- **Identify dependencies:** Know what external packages, databases, or APIs are touched.
- **Understand failure modes:** Determine how the system behaves when dependencies fail or inputs are invalid.
- **Identify ownership boundaries:** Understand which module owns which state or resource.

*Do not modify systems you do not understand.*

---

## Function & Module Design

### Functions should:
- **Have a single responsibility:** Perform one logical operation.
- **Be easy to test:** Keep parameters and returns simple and mock-free where possible.
- **Be easy to reason about:** Keep control flows flat and clean.
- **Have explicit inputs and outputs:** Do not implicitly depend on or mutate global state.

### Modules should:
- **Own a clear responsibility:** Encapsulate a distinct business domain or subsystem.
- **Minimize coupling:** Reduce direct dependencies between separate modules.
- **Maximize cohesion:** Ensure all elements inside the module naturally belong together.
- **Expose minimal interfaces:** Keep public API surfaces small and hide internal details.

---

## API Design

Good APIs should:
- **Be predictable:** Align with standard design patterns (e.g., standard REST status codes, CRUD operations).
- **Be consistent:** Use uniform naming, arguments, and error structures.
- **Be difficult to misuse:** Validate parameters and prevent clients from putting the system in an invalid state.
- **Hide unnecessary complexity:** Do not expose the internal database schema or thread structures to clients.
- **Expose meaningful abstractions:** Design interfaces around the business domain, not database tables.

*Design APIs for users, not implementers.*

---

## Error Handling

Errors are part of normal system behavior and must be managed systematically:

- **Detect failures early:** Validate inputs and parameters at the system boundary.
- **Preserve useful context:** Wrap errors with descriptive messages as they propagate upwards.
- **Fail predictably:** When a critical constraint is breached, fail fast and cleanly to prevent data corruption.
- **Surface actionable information:** Ensure error logs and user-facing messages clearly explain *what* failed and *why*.
- **Avoid hiding errors:** Do not swallow errors or catch exceptions silently without logging or addressing them.

*Error handling is a critical part of system design.*

---

## Testing Strategy

### Focus on testing:
- **Success paths:** Ensure the happy path works correctly under normal loads.
- **Failure paths:** Validate that the system degrades gracefully when databases, networks, or inputs fail.
- **Edge cases:** Check boundaries (null pointers, empty lists, maximum integers).
- **Integration boundaries:** Verify interfaces between major modules or external services.
- **Regression risks:** Add regression tests whenever a bug is fixed.

### Avoid:
- **Testing implementation details:** Assert on inputs/outputs, not on private functions or local structures.
- **Brittle tests:** Tests that fail over minor refactors that do not change behavior.
- **Unnecessary mocks:** Use real implementations or lightweight memory fixtures over complex mock objects where possible.

---

## Debugging Methodology

When diagnosing an issue, follow a systematic process:

1. **Reproduce the issue:** Establish a reliable local replication script or test case.
2. **Gather evidence:** Collect logs, stack traces, core dumps, and network packages.
3. **Form hypotheses:** Formulate explanations of what might be failing based on evidence.
4. **Test hypotheses:** Check variables, config flags, or run isolated experiments.
5. **Isolate root cause:** Isolate the exact line or transaction that is incorrect.
6. **Verify the fix:** Run tests and benchmarks to confirm the bug is resolved.
7. **Prevent recurrence:** Write a regression test specifically targeting the root cause.

*Never debug by random experimentation.*

---

## Logging & Observability

Systems must explain themselves in production.

- **Logs:** Write structured records (e.g., JSON) with unified levels (`INFO`, `WARN`, `ERROR`).
- **Metrics:** Collect performance metrics (latency, error rates, throughput, saturation) to observe system health.
- **Traces:** Implement distributed tracing (e.g., OpenTelemetry) to track requests across microservices.
- **Health checks:** Provide liveness and readiness endpoints for orchestrators (e.g., Kubernetes).

*Observability significantly reduces debugging cost.*

---

## Configuration Management

Configuration should be:
- **Explicit:** Explicitly defined and separated from source code.
- **Validated:** Checked at application startup to fail fast on invalid parameters.
- **Versioned:** Managed and tracked in version control (excluding secrets).
- **Environment-aware:** Handled dynamically through environment variables or configuration files.

*Avoid hardcoding operational values in source code.*

---

## Dependency Management

Before adding external dependencies, evaluate:
- **Necessity:** Check if a simple standard library implementation can solve the problem.
- **Maintenance quality:** Verify that the project is actively maintained and has quick bug fixes.
- **Security implications:** Review known vulnerabilities and licensing terms.
- **Ecosystem adoption:** Choose well-used packages over niche, unproven scripts.

*Prefer fewer dependencies.*

---

## Performance Engineering

Performance work should be evidence-driven:

- **Measure before optimizing:** Use profiling, CPU/memory benchmarks, and production metrics to guide work.
- **Use profiling:** Find out exactly where resource usage (CPU cycles, memory allocation) spikes.
- **Use benchmarks:** Run micro-benchmarks to evaluate changes.

**Avoid:**
- **Premature optimization:** Optimizing code paths that do not contribute to measured bottlenecks.
- **Guess-based optimization:** Rewriting code based on assumptions rather than profiler data.

---

## Concurrency & Parallelism

Concurrency introduces non-deterministic execution paths and complexity.

### Before adding concurrency:
- **Verify necessity:** Confirm that a synchronous approach cannot meet the performance constraints.
- **Understand synchronization:** Use appropriate locks, channels, or atomic flags.
- **Understand failure modes:** Handle panics, context cancellations, and timeouts cleanly.
- **Understand cancellation behavior:** Ensure child goroutines/threads terminate when the parent context completes.

*Correctness precedes parallelism.*

---

## Security Mindset

Assume that:
- **Inputs are invalid:** Validate and sanitize every parameter at the public boundary.
- **Networks are unreliable:** Design timeouts, retries, and fallback options.
- **Users make mistakes:** Implement safeguards to prevent destructive actions.
- **Systems fail:** Isolate modules so that a failure in one does not crash the entire application.

*Design defensively.*

---

## Refactoring Framework

Refactoring should:
- **Improve clarity:** Make the code easier for future maintainers to read.
- **Improve maintainability:** Structure logic so that future changes require modifying fewer lines.
- **Reduce complexity:** Eliminate redundant code, loops, and excessive variables.
- **Preserve behavior:** Ensure tests remain passing and external interfaces remain unchanged.

*Avoid refactoring without a defined goal and passing test suite.*

---

## Code Review Mindset

Code reviews are a quality assurance check, not a platform for personal styling preferences.

Review for:
- **Correctness:** Does it solve the problem?
- **Maintainability:** Is it clean, readable, and simple?
- **Security:** Are inputs sanitized and resources closed?
- **Testing:** Are there tests for happy paths, failure paths, and edge cases?
- **Simplicity:** Is the solution free of over-engineering?

---

## Open Source Engineering

Engineering inside open-source projects introduces additional constraints:
- **Existing project conventions:** Align with style guides, naming, directory structures, and patterns.
- **Maintainer expectations:** Ensure your contribution is clean, well-tested, and documented.
- **Backward compatibility:** Prevent breaking APIs, contracts, or formats unless community consensus has approved a major version bump.
- **Community consensus:** Engage in discussions on issues or mailing lists before implementing complex proposals.
- **Long-term maintainability:** Write logic that standard community members can debug, without requiring niche knowledge.

### Guidelines:
- Read existing code before proposing changes.
- Follow project patterns before introducing new ones.
- Optimize for reviewability (keep diffs small and commit history clean).
- Keep changes highly focused.
- Document design reasoning clearly in issues/PRs.
- Respect maintainer time in all public channels.

*A technically correct solution may still be rejected if it conflicts with project conventions or community goals.*

---

## Architecture Decision Making

Architecture is trade-off management. When making decisions:

1. **Understand requirements:** Focus on what needs to be solved.
2. **Understand constraints:** Budget, technology stack limits, and timelines.
3. **Consider alternatives:** Explore different design approaches (e.g., monolith vs service, database choices).
4. **Evaluate trade-offs:** Weigh complexity, performance, cost, and reliability.
5. **Document reasoning:** Write Architecture Decision Records (ADRs) to record *why* choices were made.

*Architecture decisions are difficult to reverse. Prefer reversible decisions when uncertainty is high. Reserve irreversible decisions for situations where evidence is strong.*

---

## AI-Assisted Engineering

AI accelerates engineering but does not replace engineering judgment.

**Use AI for:**
- Exploration and concept research.
- Learning unfamiliar systems or algorithms.
- Drafting structural boilerplate and templates.
- Refactoring assistance.

**Never outsource:**
- Critical structural or architectural decisions.
- Security boundary or encryption decisions.
- Final accountability for the code's correctness and production behavior.

---

## Common Engineering Anti-Patterns

Avoid these common engineering pitfalls:
- **Premature optimization:** Spending time optimizing code before profiling.
- **Cargo-cult architecture:** Blindly adopting complex patterns from large tech companies without their scale or context.
- **Over-engineering:** Building complex abstraction layers for simple problems.
- **Hidden complexity:** Storing business rules inside obscure stored procedures, environment side-effects, or runtime hooks.
- **Unnecessary abstraction:** Creating interfaces for objects that only have a single implementation.
- **Debugging by guessing:** Changing lines randomly hoping it fixes a bug instead of reproducing and isolating it.
- **Blind trust in AI:** Accepting and merging AI output without reviewing, testing, or understanding it.

---

## Continuous Improvement

Every bug, system incident, review, rejection, and success contains lessons:

- **Capture lessons:** Document post-mortems and review feedback systematically.
- **Improve systems:** Modify code checks, standards, and architectures rather than relying on human memory.
- **Compound knowledge:** Ensure lessons from one project improve all future work.
