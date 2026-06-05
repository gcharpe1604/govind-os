# Engineering Principles

This document is the constitution of Govind-OS. When conflicts arise between tools, frameworks, workflows, or opinions, the principles in this document take precedence.

---

## Purpose

The purpose of software engineering is to create systems that are reliable, maintainable, understandable, and valuable to users.

Code is a means to achieve outcomes, not an end in itself.

Engineering decisions should optimize for long-term maintainability, correctness, and leverage rather than short-term convenience.

---

## Core Philosophy

- **Prefer understanding** over memorization.
- **Prefer first principles** over cargo-cult practices.
- **Prefer systems** over isolated actions.
- **Prefer consistency** over cleverness.
- **Prefer maintainability** over optimization unless evidence suggests otherwise.
- **Prefer long-term leverage** over short-term wins.
- **Prefer shipping useful software** over perfect software.
- **Prefer evidence** over opinion.
- **Prefer measurement** over intuition when making performance decisions.
- **Prefer experiments** over assumptions.
- **Prefer opportunities** that compound skills, reputation, and network.
- **Prefer projects** with long-term leverage over short-term prestige.
- **Prefer execution** over endless planning.
- **Prefer learning quickly** through feedback loops.

---

## Software Engineering Principles

- **Take ownership of outcomes**, not just tasks.
- **Understand existing behavior** before modifying it.
- **Read surrounding code** before implementing changes.
- **Preserve established patterns** unless there is a clear reason to improve them.
- **Follow existing project conventions:** Always match the local style, standards, and patterns.
- **Minimize scope of changes:** Make the smallest change that fully solves the problem.
- **Optimize for readability:** Code is read much more often than it is written.
- **Avoid unnecessary abstractions:** Do not build frameworks or layers until you actually need them.
- **Explicit is better than implicit:** Write code that is clear, direct, and obvious.
- **Reduce complexity:** Eliminate moving parts and simplify control flows whenever possible.
- **Treat tests as part of the implementation:** Good tests document behavior and ensure regressions are caught.
- **Design for future maintainers:** Write code that someone else (or your future self) can easily understand and debug.

---

## Open Source Principles

Based heavily on your Harbor experience:

- **Understand the problem** before proposing a solution.
- **Read existing code** before writing new code.
- **Respect maintainer time:** Prepare clean, well-tested contributions and comprehensive pull request descriptions.
- **Keep pull requests focused:** A PR should do one logical thing and do it well.
- **Accept review feedback professionally:** Critique is aimed at the code, not the author.
- **Optimize for reviewability:** Small, well-structured commits make code easy to review.
- **Build trust through consistency:** Delivering reliable code over time establishes your credibility.
- **Optimize for maintainer trust**, not contribution count.
- **Long-term contribution matters more** than contribution count.

---

## System Design Principles

- **Reliability before scale:** Ensure the system works correctly under standard loads before designing for massive scale.
- **Simplicity before sophistication:** Simple architectures are easier to maintain, debug, and scale.
- **Measure before optimizing:** Use profiles, benchmarks, and metrics to identify real bottlenecks.
- **Design for observability:** Implement logs, metrics, and tracing to understand runtime behavior.
- **Design for failure:** Assume systems will fail and design graceful degradation mechanisms.
- **Eliminate single points of failure** where practical.
- **Favor evolutionary architectures:** Build systems that can adapt and grow as requirements change.

---

## Learning Principles

- **Learn by building:** Practice-led learning compounds faster than theoretical consumption.
- **Learn by contributing:** Engaging with existing codebases forces you to read, adapt, and refine your standards.
- **Learn by teaching:** Explaining concepts to others forces clarity of thought.
- **Learn fundamentals before tools:** Frameworks change, but computer science principles remain.
- **Depth beats superficial breadth:** Master key core domains deeply before spreading thin.
- **Consistency beats intensity:** Daily incremental efforts compound more effectively than occasional marathons.
- **Document lessons while they are fresh:** Capture details when you solve a hard bug or design challenge.

---

## AI-Assisted Development Principles

AI accelerates engineering but does not replace engineering judgment. AI should accelerate thinking, not replace thinking.

**Use AI for:**
- Exploration and brainstorming
- Drafting boilerplate and templates
- Refactoring assistance
- Learning new concepts or APIs
- Pre-review assistance

**Never outsource:**
- Architectural design decisions
- Security and threat model decisions
- Final code reviews
- Production verification and responsibility

**Before accepting AI-generated code, verify:**
1. **Correctness:** Run, test, and step through the logic.
2. **Security implications:** Ensure no new security risks are introduced.
3. **Project convention alignment:** Match naming, style, and design conventions.
4. **Test coverage:** Ensure new code paths are thoroughly covered by tests.
5. **Maintainability:** Ensure code is simple, readable, and free of over-engineering.

*Trust, but verify.*

---

## Decision Framework

When evaluating a technical decision:

1. **Understand the problem:** Define the core issue clearly.
2. **Identify constraints:** Establish bounds like time, budget, technology, and performance.
3. **Consider alternatives:** Explore multiple paths.
4. **Evaluate trade-offs:** Weigh the pros and cons of each alternative.
5. **Prefer the simplest solution** that satisfies requirements.
6. **Validate with evidence:** Use benchmarks, prototypes, or data to back up decisions.
7. **Document reasoning:** Write down the *why* for future reference.

---

## Anti-Patterns

Avoid these common engineering pitfalls:

- **Premature optimization:** Optimizing before you have metrics showing a performance issue.
- **Scope creep:** Adding unplanned features and complexity to a simple task.
- **Unnecessary rewrites:** Re-writing code because you don't understand it yet.
- **Cargo-cult architecture:** Copying architecture patterns from other projects without understanding their contexts.
- **Large, unfocused pull requests:** Submitting giant changesets that are difficult to review.
- **Solving hypothetical problems:** Building features for scenarios that may never occur.
- **Blind trust in AI-generated code:** Accepting code suggestions without verifying correctness and compatibility.

---

## Continuous Improvement

Every project, contribution, rejection, success, and review contains lessons.

- **Capture lessons systematically:** Document errors, post-mortems, and learnings.
- **Improve systems** rather than relying on memory.
- **Optimize for compounding knowledge** over time.
