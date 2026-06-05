# Contribution Workflow

---

## Purpose

The purpose of open-source contribution is not merely to merge code. The objectives are:

- **Create value** for the project.
- **Build maintainer trust** as a reliable contributor.
- **Improve engineering skills** through codebase interaction and review feedback.
- **Learn real-world software development** practices at scale.
- **Develop long-term reputation** within technical communities.

Merged pull requests are a byproduct of these goals, not the primary goal itself.

---

## Core Philosophy

- **Optimize for maintainer trust**, not contribution count.
- **Optimize for learning**, not activity.
- **Prefer long-term participation** over short-term bursts.
- **Prefer understanding** before implementation.
- **Prefer small, focused changes** over monolithic updates.
- **Respect maintainer time** in every interaction.
- **Leave the codebase better** than you found it.

---

## Stage 1: Project Selection

Before contributing to a repository, verify its health and alignment:

1. **Verify project activity:** Look at commit frequency, recent release dates, and general project momentum.
2. **Verify maintainer responsiveness:** Review open PRs and issues to check if maintainers engage in a timely, constructive manner.
3. **Verify technical alignment:** Ensure the stack matches your language proficiency or target growth areas (e.g., Go, Kubernetes, PostgreSQL).
4. **Verify personal interest:** Select software that you actually use or find fascinating to build.
5. **Verify learning potential:** Choose repositories with codebases that challenge your capabilities and expose you to quality patterns.

Prioritize projects that have active maintainers, solve real problems, match your long-term career goals, and maintain welcoming contributor processes.

---

## Stage 2: Codebase Familiarization

Before writing a single line of code:

- **Read documentation:** Study the README, architecture guides, and `CONTRIBUTING.md`.
- **Build locally:** Compile the project and verify your local setup is fully functional.
- **Run the tests:** Make sure you can execute unit and integration test suites locally and that they pass.
- **Understand structure:** Walk through the repository directories to locate core logic, tests, and configuration entries.
- **Inspect PRs and issues:** Read recent closed/merged PRs and issue conversations to understand how changes are reviewed and discussed.
- **Learn project conventions:** Note the style, naming patterns, logging conventions, and testing layouts used in the codebase.
- **Observe before contributing:**
  - Observe maintainer behavior.
  - Observe review patterns.
  - Observe what kinds of contributions get accepted.
  - Observe what maintainers repeatedly request.
  *One of the fastest ways to become effective is to study accepted PRs before opening your own.*

---

## Stage 3: Issue Selection

Select the right issue to work on.

**Prefer:**
- Well-scoped, concrete issues with clear requirements.
- Bug fixes or regression resolutions.
- Reliability and performance improvements.
- Test suite enhancements and coverage increases.
- Documentation fixes or improvements.
- Developer experience (DX) and tooling improvements.

**Avoid:**
- Massive refactors that impact multiple systems.
- Heavy architectural rewrites.
- Controversial feature proposals without maintainer buy-in.
- Poorly defined or open-ended issues.

**Exit Criteria (Only select an issue if):**
- [ ] You understand the problem.
- [ ] You can reproduce or verify it.
- [ ] You can identify the affected area.
- [ ] You have time to follow through.
*This prevents abandoned pull requests.*

---

## Stage 4: Solution Validation

Before implementing a fix or feature:

- **Understand the root cause:** Trace execution flow and isolate the exact system behavior.
- **Investigate existing solutions:** Check if a similar problem was solved elsewhere in the project or historically.
- **Search historical discussions:** Look through issues, pull requests, and mailing lists for context.
- **Validate assumptions:** Check if your proposed solution violates existing architectural design or constraints.
- **Ask maintainers:** When uncertainty is high, discuss your planned approach on the issue to get early feedback.

*Do not spend days implementing an approach that maintainers would reject immediately.*

---

## Stage 5: Implementation

When writing code:

- **Follow project conventions:** Align with existing formatting, naming, and style patterns.
- **Minimize scope:** Avoid adding unrelated improvements or refactors inside the same branch.
- **Keep commits focused:** Write clear, atomic commits that explain the *what* and *why*.
- **Add tests:** Ensure new code paths and bug fixes are accompanied by tests.
- **Preserve backward compatibility:** Ensure API boundaries and public structures remain unbroken unless explicitly allowed.
- **Prioritize maintainability:** Focus on clean, simple, and self-documenting code.

---

## Stage 6: Self Review

Before opening a pull request:

- **Run all local tests:** Verify that your changes do not break existing functionality.
- **Read the entire diff:** Review every changed line to verify cleanliness and completeness.
- **Remove unrelated changes:** Strip out accidental formatting edits, debug logs, or commented-out code.
- **Verify edge cases:** Double-check error handling, resource leaks, and potential null pointers.
- **Verify documentation:** Ensure code comments and external markdown guides are updated to match your changes.
- **Ask yourself:** *"If I were the maintainer of this project, would I approve this pull request?"*

---

## Stage 7: Pull Request Creation

A good pull request description acts as a map for the reviewer. Explain clearly:
- **What changed:** A concise summary of the code changes.
- **Why it changed:** The problem being solved and the rationale for the implementation.
- **How it was implemented:** Technical details of the design and changes.
- **How it was tested:** A list of test suites run and manual validation steps executed.
- **Trade-offs considered:** What alternative solutions were evaluated and why this was chosen.

Reviewers should not need to reverse-engineer your intent.

---

## Stage 8: Review Iteration

Review feedback is an act of collaboration, not an attack.

- **Read comments carefully:** Ensure you understand the reviewer's point of view before responding.
- **Understand the reasoning:** Ask clarifying questions if a suggestion is unclear.
- **Update incrementally:** Implement changes in clean, descriptive commits on top of your PR branch.
- **Avoid defensiveness:** Focus objective reasoning on the code quality, not personal pride.
- **Thank reviewers:** Value their review time—it is a finite community resource.

*The goal is better code, not winning arguments.*

---

## Stage 9: Trust Building

Maintainer trust is the highest currency in open-source. Build it through:

- **Consistency:** Submitting high-quality work repeatedly.
- **Reliability:** Following through on issues you've claimed or PR comments you've promised to address.
- **Professional communication:** Staying polite, helpful, and objective in all issue/PR discussions.
- **High-quality reviews:** Helping review others' PRs once you understand the codebase.
- **Thoughtful contributions:** Focusing on core problems instead of quick metrics.
- **Following through on commitments:** If you open a PR, see it through to merge or closure.

*Trust compounds over time.*

---

## Stage 10: Long-Term Participation

The true value of open-source is unlocked over time.

- **Stay involved:** Keep tracking the repository's discussions and evolution.
- **Review discussions:** Share your perspective on design discussions and issues.
- **Help other contributors:** Answer questions in community channels (e.g., Slack, GitHub Discussions).
- **Attend community meetings:** Join developer or working group calls to stay aligned.
- **Improve documentation:** Continually fix gaps in user guides and contributor playbooks.
- **Continue learning:** Deepen your knowledge of the project's codebase and underlying dependencies.

*Long-term participation creates opportunities (e.g., maintainership, referrals, jobs) that one-off contributions cannot.*

---

## Common Failure Modes

- **Contributing without understanding:** Submitting code to a codebase you haven't built, run, or studied.
- **Choosing oversized issues:** Claiming complex tasks that go far beyond your current technical level, leading to stalled work.
- **Creating giant, unfocused PRs:** Sending huge, multi-topic diffs that are impossible to review.
- **Ignoring maintainer feedback:** Arguing against or refusing to address review suggestions.
- **Prioritizing quantity over quality:** Focusing on PR metrics rather than code excellence.
- **Disappearing after submission:** Leaving a PR unaddressed when tests fail or review comments arrive.
- **Treating open source as a transaction:** Looking only for resume padding without valuing the project or community.

---

## Anti-Patterns

Avoid these practices:
- **Resume-driven development:** Forcing unnecessary technologies or contributions only to show them on a resume.
- **Contribution farming:** Making shallow, low-effort changes (e.g., minor typo edits in comments) across dozens of repositories to inflate stats.
- **PR count chasing:** Chasing numbers rather than code quality and complexity.
- **Drive-by contributions:** Opening a PR to resolve a quick task and vanishing without addressing reviewer feedback or CI failures.
- **Maintainer time waste:** Forcing maintainers to write detailed comments on simple bugs, formatting errors, or syntax warnings that you should have caught.
- **Unvalidated assumptions:** Implementing massive solutions without confirming if they fit the project goals.
- **Large speculative refactors:** Proposing refactors of modules you are not intimately familiar with.

---

## Continuous Improvement

After every contribution, review, or project iteration:
- **Record lessons learned:** Document what worked, what failed, and what you discovered about the system.
- **Record reviewer feedback:** Note key advice or patterns suggested by maintainers.
- **Record mistakes:** Reflect on CI failures, logic bugs, or design oversights.
- **Improve contribution processes:** Adjust your personal checklist and tools to prevent repeating errors.

*Every contribution should improve future contributions.*
