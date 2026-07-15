# LFX Lessons 2026

## Purpose
This document compiles distilled technical, operational, and communication principles gathered during the LFX Mentorship program in 2026. Unlike chronological journals, this file serves as a durable playbook of reusable lessons to guide future open-source contributions, applications, and engineering projects.

> [!TIP]
> **Core Question:** "If I had to do LFX again from scratch, what would I tell myself?"

---

## LFX Myths
- **Myth 1: You must be an expert in the technology stack before applying.**
  - *Reality:* Mentors value code navigation speed, willingness to read specs, and execution consistency over pre-existing deep framework fluency.
- **Myth 2: A beautiful, multi-page PDF proposal wins slots.**
  - *Reality:* Polish proposals without corresponding merged code in the target repository rarely secure slots. Upstream PR history is the ultimate signal.
- **Myth 3: Mentors have unlimited time to teach you foundations.**
  - *Reality:* Mentors are active maintainers. They guide and unblock you, but they expect you to self-start on basics (e.g., Docker CLI, Go interfaces).

---

## Maintainer Psychology
Understand the forces driving the maintainers reviewing your code:
- **Overwork and Burnout:** Maintainers manage large codebases in their spare or company-allotted time. Any request that requires them to decipher your code increases their work.
- **Maintenance Debt Fear:** Every line of code added is a line they have to maintain. A feature that is poorly tested or overly complex represents a future liability.
- **Trust as a Compound Asset:** Trust starts at zero. Your first PR will receive extensive scrutiny. Applying review changes quickly, politely, and correctly increases their trust, making future reviews faster.

---

## Review Economics
- **Review Friction:** Reviewing a 1,000-line PR is slow and mentally exhausting. Reviewing a 100-line PR is fast and low-friction.
- **Self-Review Dividend:** Running linters, verifying tests pass locally, and commenting on your own code blocks to explain decisions reduces reviewer comments.
- **Scope Discipline:** Never sneak unrelated refactors into a PR. If you notice tech debt while writing a feature, document it and create a separate issue.

---

## Contribution Selection
- **Good-First-Issues:** Use these only to configure your local development environment and verify the contribution lifecycle (CLA signatures, dev setups).
- **Core Feature / Roadmap Alignment:** Focus on active issues or feature requests mentioned in repository roadmaps. Solving a needed feature has 10x the leverage of formatting comments.
- **Testing and Refactoring:** Writing integration tests or Decoupling legacy code is a high-signal way to demonstrate technical depth and build maintainer trust.

---

## Mentor Interaction Patterns
- **Option-Oriented Questions:** Never ask open-ended questions like *"How do I run Harbor locally?"* Ask: *"I am setting up Harbor CLI testing. I have tried A and B. I recommend A because of C. Should I proceed?"*
- **Sync Discipline:** Bring a written agenda to every sync: What was completed, what is currently blocked, and what the proposed options are.
- **Async Communication:** Use public Slack channels (`#harbor-cli`) and GitHub issues. Avoid direct messaging mentors unless requested.

---

## Signals That Actually Matter
- **Merged PRs:** Active upstream code execution.
- **Code Review Quality:** Constructively reviewing other contributors' PRs.
- **Test Coverage:** Writing unit and integration tests for every line of logic.
- **Responsiveness:** Responding to feedback on PRs within 24 hours.

---

## Signals That Don't Matter
- **Unearned Referrals:** Asking strangers or distant connections for mentorship referrals.
- **Social Media Posts:** Announcing you applied without code backups.
- **Commit Counts:** Artificially splitting commits instead of squashing into clean history.

---

## Technical Lessons

### LFX-TECH-001: Decoupling Cobra Command Declarations from Business Execution
- **Context:** Developing subcommands for the Harbor CLI.
- **What Happened:** Writing output rendering and validation directly inside Cobra command `RunE` handlers made unit testing slow and required mocking the entire CLI runner environment.
- **Principle:** Keep CLI command configurations purely declarative. Separate the execution logic into functions that accept standard interface arguments (like `io.Writer` and config structs).
- **Future Action:** Always structure commands to delegate work to mockable backend services, allowing CLI commands to be unit-tested via `bytes.Buffer`.

---

## Open Source Lessons

### LFX-OS-001: Small PRs Minimize Maintainer Review Overhead
- **Context:** Submitting initial feature sets for configuration generation in the CLI.
- **What Happened:** A large, multi-file PR took over two weeks to get reviewed and was eventually blocked by minor styling debates on unrelated lines.
- **Principle:** Small, single-purpose pull requests (under 100-150 lines) dramatically reduce the cognitive load for maintainers and result in faster merge cycles.
- **Future Action:** Split feature additions into a database/logic PR, a testing PR, and an interface PR.

---

## Communication Lessons

### LFX-COM-001: Preempting Scope Creep in PR Descriptions
- **Context:** Resolving replication handler bugs where reviewers asked why related refactoring wasn't included.
- **What Happened:** Reviewers requested additional changes, expanding the PR scope beyond the original issue boundaries.
- **Principle:** Explicitly define "Explicitly Not Included" boundaries in your PR description.
- **Future Action:** Always use the [templates/PR_DESCRIPTION.md](../templates/PR_DESCRIPTION.md) structure to outline boundaries.

---

## Mistakes
*Detail systematic errors made during LFX to build preventative guardrails.*

### Mistake: Hardcoding Path Constants Across Operating Systems
- **Root Cause:** Assuming unix-specific `/tmp` folder behavior in cross-platform CLI tools.
- **Durable Correction:** Always utilize `os.TempDir()` or `os.UserConfigDir()` instead of hardcoding absolute string paths.

---

## Failure Modes
*Common workflow errors that lead to stalled mentorship progress and their corresponding resolutions.*

### Failure Mode: Waiting for mentors to assign work
- **Context:** Starting the coding period expecting a direct, structured task list from mentors.
- **Correction:** Own an area of the codebase. Proactively scan the roadmap, identify open issues, propose technical approaches using templates, and build draft pull requests.

### Failure Mode: Over-engineering first PRs
- **Context:** Submitting initial upstream contributions.
- **Correction:** Optimize for mergeability. Avoid creating new abstractions or importing external dependencies in your first PRs. Focus on minimal, correct, and heavily tested changes that merge with zero maintainer friction.

---

## Patterns
- **The Scaffold Trap:** Spending too much time configuring developers' tools and build environments instead of shipping the first raw, working feature block.
- **The Review Latency Loop:** Waiting silently for a maintainer review. Resolve this by constructively helping review other applicants' PRs or triaging issues in Slack.

---

## What Actually Matters
- **Code Readability:** Maintainers care more about reading clean, idiomatic code that fits existing patterns than complex, over-engineered abstractions.
- **Speed of Feedback Resolution:** Applying review changes quickly and politely.

---

## What Doesn't Matter
- **Perfect Proposals:** Writing 20-page proposals with no accompanying contributions.
- **Quantity of Commits:** Squash commits to present a single, logical change history.

---

## Advice To Future Applicants
1. **Find a Good First Issue Early:** Don't wait for the mentorship program to officially open. Clout in the repository is built on merged code.
2. **Read the Specs:** Spend time reading OCI registry and Docker Distribution specifications before writing database code.
3. **Engage in Slack:** Answer other users' setup questions in `#harbor-cli` to demonstrate community citizenship.

---

## End-of-Program Synthesis
*[EMPTY — TO BE POPULATED] To be populated upon LFX completion, summarizing overall takeaways and key future execution improvements.*
