# Govind-OS: Master File Reference & Workflow Playbook

This document is the complete operational guide for Govind-OS. It provides:
1. **An exhaustive file-by-file directory** explaining the purpose, core protocol, and key pairings for every single document in the repository.
2. **End-to-end workflow recipes** combining these files for open-source contributions, project bootstrapping, and internship hunting.

---

# PART 1: The File-by-File Directory

## 1. AGENTS LAYER (`agents/`)
This layer governs the operational behaviors, constraints, and validation standards for AI coding assistants.

### [agents/AGENTS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/AGENTS.md)
* **Purpose:** Open at the beginning of *every* session to bootstrap the agent's context.
* **Core Protocol:** Enforces the 6-step context bootstrapping loop (README $\rightarrow$ Domain Identification $\rightarrow$ Domain Files $\rightarrow$ Decision Log $\rightarrow$ Lessons Log $\rightarrow$ State Context).
* **Key Pairings:** Pair with any domain file (e.g., `career/GSOC.md`, `open-source/CNCF_PLAYBOOK.md`) to acquire specific context.

### [agents/CLAUDE.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/CLAUDE.md)
* **Purpose:** Open when using Claude for planning, reviews, or architectural tradeoffs.
* **Core Protocol:** Enforces the 5-Council (Multi-Perspective) analysis whenever recommending a decision, code review, or architectural change.
* **Key Pairings:** Pair with `core/DECISION_MAKING.md` and `templates/PROJECT_PROPOSAL.md`.

### [agents/CURSOR.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/CURSOR.md)
* **Purpose:** Open when using Cursor for active IDE-native coding or refactoring.
* **Core Protocol:** Enforces Ast-level navigation, tool selection rules (Inline `Cmd+K` for target changes, Composer `Cmd+I` for multi-file edits, Chat `Cmd+L` for planning).
* **Key Pairings:** Pair with `core/CODING_STANDARDS.md` and `core/WORKFLOWS.md`.

### [agents/CODEX.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/CODEX.md)
* **Purpose:** Open when using Codex for headless terminal runs, script writing, or patch generation.
* **Core Protocol:** Requires linter/compiler checks via terminal and execution of the local test suite prior to finalizing code.
* **Key Pairings:** Pair with `core/DEBUGGING.md` and `templates/PR_DESCRIPTION.md`.

### [agents/ANTIGRAVITY.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/agents/ANTIGRAVITY.md)
* **Purpose:** Open when executing long-horizon task plans, multi-step explorations, or subagent tasks.
* **Core Protocol:** Enforces progress checkpointing, state auditing, and strict task decomposition.
* **Key Pairings:** Pair with `core/OPPORTUNITY_DISCOVERY.md` and `experience/LESSONS.md`.

---

## 2. CAREER LAYER (`career/`)
This layer holds rules, strategy files, and frameworks for career building and application execution.

### [career/PROJECT_SELECTION.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/PROJECT_SELECTION.md)
* **Purpose:** Open when selecting which open-source project or repository to target.
* **Core Protocol:** Enforces checking repository activity, maintainer responsiveness, and alignment with career goals.
* **Key Pairings:** Pair with `core/OPPORTUNITY_DISCOVERY.md`.

### [career/GSOC.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/GSOC.md)
* **Purpose:** Open when applying to or planning Google Summer of Code contributions.
* **Core Protocol:** Outlines project vetting checklists and proposal timeline guidelines.
* **Key Pairings:** Pair with `templates/PROJECT_PROPOSAL.md`.

### [career/LFX.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/LFX.md)
* **Purpose:** Open when applying for Linux Foundation Mentorship cycles.
* **Core Protocol:** Outlines qualification criteria, application timing, and task prioritization standards.
* **Key Pairings:** Pair with `experience/LFX_2026.md`.

### [career/SUMMER_OF_BITCOIN.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/SUMMER_OF_BITCOIN.md)
* **Purpose:** Open when targeting Summer of Bitcoin projects.
* **Core Protocol:** Specifies cryptographic/protocol-level project evaluations and timeline bounds.
* **Key Pairings:** Pair with `templates/PROJECT_PROPOSAL.md`.

### [career/INTERNSHIPS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/INTERNSHIPS.md)
* **Purpose:** Open when searching for industry or corporate software internships.
* **Core Protocol:** Details cold application strategies, referral requests, and preparation tracks.
* **Key Pairings:** Pair with `templates/COVER_LETTER.md` and `career/RESUME_RULES.md`.

### [career/RESUME_RULES.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/RESUME_RULES.md)
* **Purpose:** Open when updating, auditing, or tailoring your CV.
* **Core Protocol:** Enforces action-verb usage, quantitative impact metrics (e.g. "reduced latency by 15%"), and links to mergeable PRs.
* **Key Pairings:** Pair with `experience/LESSONS.md` (to extract resume bullets).

### [career/NETWORKING.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/career/NETWORKING.md)
* **Purpose:** Open when conducting outreach to maintainers, engineers, or recruiters.
* **Core Protocol:** Enforces non-transactional relationship building and target group tracking.
* **Key Pairings:** Pair with `templates/COLD_OUTREACH.md`.

---

## 3. CORE PLAYBOOKS (`core/`)
This layer defines execution paradigms, debugging methodologies, coding standards, and architectural frameworks.

### [core/OPPORTUNITY_DISCOVERY.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/OPPORTUNITY_DISCOVERY.md)
* **Purpose:** Open when auditing a new repository to find contributions or features.
* **Core Protocol:** Enforces the dynamic scoring formula ($\text{Final Score} = (\text{Impact} \times \text{Acceptance} \times \text{Scope}) \times \text{Confidence}$) and Tier 1-4 classification.
* **Key Pairings:** Pair with `templates/ISSUE_REPORT.md` and `open-source/CONTRIBUTION_WORKFLOW.md`.

### [core/DEBUGGING.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/DEBUGGING.md)
* **Purpose:** Open when encountering a runtime crash, flaky test, or regression.
* **Core Protocol:** Mandates local replication before making changes, isolating variables, and proving disconfirming evidence.
* **Key Pairings:** Pair with `agents/CODEX.md` and `experience/LESSONS.md`.

### [core/DECISION_MAKING.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/DECISION_MAKING.md)
* **Purpose:** Open when picking tech stacks, databases, library dependencies, or deployment environments.
* **Core Protocol:** Enforces identifying Type 1/Type 2 decisions, listing alternatives, and defining success metrics.
* **Key Pairings:** Pair with `experience/DECISION_LOG.md`.

### [core/ENGINEERING_PRINCIPLES.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/ENGINEERING_PRINCIPLES.md)
* **Purpose:** Read when planning features to ensure high code quality.
* **Core Protocol:** Focuses on decoupling logic, keeping interfaces minimal, and avoiding premature optimization.
* **Key Pairings:** Pair with `core/CODING_STANDARDS.md`.

### [core/CODING_STANDARDS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/CODING_STANDARDS.md)
* **Purpose:** Open during active coding implementation phases to guide syntax structure.
* **Core Protocol:** Mandates specific Go error-handling conventions, logging policies, and unit-testing rules.
* **Key Pairings:** Pair with `agents/CURSOR.md`.

### [core/WORKFLOWS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/WORKFLOWS.md)
* **Purpose:** Open when structuring local Git branch strategies and commit standards.
* **Core Protocol:** Mandates atomic commits, branch formatting, and pre-push hooks.
* **Key Pairings:** Pair with `templates/PR_DESCRIPTION.md`.

### [core/AI_COLLABORATION.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/AI_COLLABORATION.md)
* **Purpose:** Open when structuring prompt rules or managing context window constraints.
* **Core Protocol:** Details guidelines on token economy, chunking, and checkpointing tasks.
* **Key Pairings:** Pair with `agents/AGENTS.md`.

### [core/WORKFLOW_PLAYBOOK.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/WORKFLOW_PLAYBOOK.md)
* **Purpose:** Open to look up file descriptions, layers relationships, and recipe combinations.
* **Core Protocol:** Reference guide for how all 46 files in Govind-OS combine for engineering, career, and research goals.
* **Key Pairings:** Pair with `README.md`.

---

## 4. ENGINEERING STANDARDS (`engineering/`)
This layer contains technical references, designs, configurations, and stack standards.

### [engineering/SYSTEM_DESIGN.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/SYSTEM_DESIGN.md)
* **Purpose:** Open when modeling high-level distributed web architectures or API flows.
* **Core Protocol:** Details event-driven vs. REST boundaries, API design conventions, and caching strategies.
* **Key Pairings:** Pair with `core/DECISION_MAKING.md`.

### [engineering/LANGUAGE_AGNOSTIC_ENGINEERING.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/LANGUAGE_AGNOSTIC_ENGINEERING.md)
* **Purpose:** Read when designing logic meant to translate across multiple technology boundaries.
* **Core Protocol:** Focuses on clean abstractions, modular encapsulation, and parameter interfaces.
* **Key Pairings:** Pair with `core/ENGINEERING_PRINCIPLES.md`.

### [engineering/BACKEND.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/BACKEND.md)
* **Purpose:** Open when building server applications, APIs, CLI systems, or concurrency loops.
* **Core Protocol:** Details Go channel practices, synchronization safety, and request middleware patterns.
* **Key Pairings:** Pair with `core/CODING_STANDARDS.md`.

### [engineering/DISTRIBUTED_SYSTEMS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/DISTRIBUTED_SYSTEMS.md)
* **Purpose:** Open when working with locks, consistency checks, queues, or distributed state.
* **Core Protocol:** Outlines retry mechanisms, circuit breakers, and network partitioning failures.
* **Key Pairings:** Pair with `engineering/SYSTEM_DESIGN.md`.

### [engineering/KUBERNETES.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/KUBERNETES.md)
* **Purpose:** Open when writing operators, manifest layouts, helm charts, or cluster setups.
* **Core Protocol:** Specifies API machinery structures, controller loops, CRDs, and cluster configurations.
* **Key Pairings:** Pair with `engineering/CLOUD_NATIVE.md`.

### [engineering/CLOUD_NATIVE.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/CLOUD_NATIVE.md)
* **Purpose:** Open when dealing with OCI standards, container registries, or CNCF integrations.
* **Core Protocol:** Outlines specifications for image layouts, registry APIs, and microservice topologies.
* **Key Pairings:** Pair with `engineering/KUBERNETES.md`.

### [engineering/POSTGRESQL.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/POSTGRESQL.md)
* **Purpose:** Open when designing database schemas, query optimizations, or indexing strategies.
* **Core Protocol:** Focuses on transaction levels, indexing parameters, migration safety, and query planning.
* **Key Pairings:** Pair with `core/DECISION_MAKING.md`.

### [engineering/DEVOPS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/engineering/DEVOPS.md)
* **Purpose:** Open when setting up CI/CD pipelines, Docker configurations, or logging stacks.
* **Core Protocol:** Sets guidelines for base image sizing, pipeline caching, and script validations.
* **Key Pairings:** Pair with `agents/CODEX.md`.

---

## 5. EXPERIENCE LAYER (`experience/`)
This layer logs the running outcomes, failures, decisions, and specific program records.

### [experience/DECISION_LOG.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/experience/DECISION_LOG.md)
* **Purpose:** Read before making any major system change; write immediately after finalizing a tech path.
* **Core Protocol:** Logs the context, options considered, tradeoffs, and outcome status for architectural decisions.
* **Key Pairings:** Pair with `core/DECISION_MAKING.md`.

### [experience/LESSONS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/experience/LESSONS.md)
* **Purpose:** Read at the start of every session; update at the end of every workspace task.
* **Core Protocol:** Centralizes durable lessons using the `LESSON-XXX` template (Lesson, Source, Confidence, Context, Evidence).
* **Key Pairings:** Pair with the agent overlays (e.g., `agents/ANTIGRAVITY.md`).

### [experience/HARBOR.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/experience/HARBOR.md)
* **Purpose:** Open when actively exploring, configuring, or contributing to Project Harbor.
* **Core Protocol:** Logs Harbor-specific configurations, OCI layout details, registry endpoints, and active PRs.
* **Key Pairings:** Pair with `open-source/CNCF_PLAYBOOK.md`.

### [experience/LFX_2026.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/experience/LFX_2026.md)
* **Purpose:** Open to log tasks, milestones, and status for LFX 2026 mentorship applications and terms.
* **Core Protocol:** Tracks program milestones, checklist completions, and maintainer feedback.
* **Key Pairings:** Pair with `career/LFX.md`.

### [experience/REJECTIONS.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/experience/REJECTIONS.md)
* **Purpose:** Open to log application rejections or PR closures.
* **Core Protocol:** Extracts constructive feedback, identifies procedural flaws, and converts failures into lessons.
* **Key Pairings:** Pair with `experience/LESSONS.md`.

---

## 6. OPEN SOURCE LAYER (`open-source/`)
This layer defines rules for upstream communities, PR reviews, and maintainer communications.

### [open-source/CNCF_PLAYBOOK.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/open-source/CNCF_PLAYBOOK.md)
* **Purpose:** Open when exploring CNCF organization layouts, repositories, or governance.
* **Core Protocol:** Details CLA signing rules, communication channels, and governance structures.
* **Key Pairings:** Pair with `career/PROJECT_SELECTION.md`.

### [open-source/CONTRIBUTION_WORKFLOW.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/open-source/CONTRIBUTION_WORKFLOW.md)
* **Purpose:** Open when executing the Git steps required to submit code upstream.
* **Core Protocol:** Defines upstream sync steps, fork setups, and commit squashing commands.
* **Key Pairings:** Pair with `core/WORKFLOWS.md`.

### [open-source/MAINTAINER_INTERACTION.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/open-source/MAINTAINER_INTERACTION.md)
* **Purpose:** Open when drafting messages, commenting on issues, or responding to PR reviews.
* **Core Protocol:** Details rules on professional tone, evidence provision, and when to follow up.
* **Key Pairings:** Pair with `templates/COLD_OUTREACH.md`.

### [open-source/REVIEW_GUIDELINES.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/open-source/REVIEW_GUIDELINES.md)
* **Purpose:** Open when reviewing someone else's PR or review comments on your own code.
* **Core Protocol:** Enforces the review checklist (compilation, correctness, maintainability, tests, documentation).
* **Key Pairings:** Pair with `agents/CLAUDE.md`.

### [open-source/PR_CHECKLIST.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/open-source/PR_CHECKLIST.md)
* **Purpose:** Open immediately prior to staging and pushing code to open-source project forks.
* **Core Protocol:** Standardized checks for DCO sign-offs, linter compliance, and backward compatibility.
* **Key Pairings:** Pair with `templates/PR_DESCRIPTION.md`.

### [open-source/LFX_LESSONS_2026.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/open-source/LFX_LESSONS_2026.md)
* **Purpose:** Open to log specific technical or communication lessons learned during LFX cycles.
* **Core Protocol:** Connects OSS engineering decisions with specific LFX mentorship outcomes.
* **Key Pairings:** Pair with `experience/LFX_2026.md`.

---

## 7. TEMPLATES LAYER (`templates/`)
This layer provides pre-structured markdown templates for consistent, high-signal documentation.

### [templates/ISSUE_REPORT.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/templates/ISSUE_REPORT.md)
* **Purpose:** Use when filing a bug or reporting a testing gap on GitHub or GitLab.
* **Core Protocol:** Requires steps to reproduce, actual/expected output, environment details, and logs.
* **Key Pairings:** Pair with `core/OPPORTUNITY_DISCOVERY.md` (Issue Generation Protocol).

### [templates/PROJECT_PROPOSAL.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/templates/PROJECT_PROPOSAL.md)
* **Purpose:** Use when writing proposals for GSoC, LFX, or internal project architectures.
* **Core Protocol:** Structures project scope, milestones, alternatives considered, and validation plan.
* **Key Pairings:** Pair with `career/GSOC.md` or `career/LFX.md`.

### [templates/PR_DESCRIPTION.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/templates/PR_DESCRIPTION.md)
* **Purpose:** Use when submitting a pull request to any codebase.
* **Core Protocol:** Mandates listing related issues, changes summary, and verification logs.
* **Key Pairings:** Pair with `open-source/PR_CHECKLIST.md`.

### [templates/TECHNICAL_WRITEUP.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/templates/TECHNICAL_WRITEUP.md)
* **Purpose:** Use when blogging, writing project documentation, or logging system writeups.
* **Core Protocol:** Details the problem context, architectural overview, benchmark results, and conclusions.
* **Key Pairings:** Pair with `experience/DECISION_LOG.md`.

### [templates/COLD_OUTREACH.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/templates/COLD_OUTREACH.md)
* **Purpose:** Use when contacting maintainers or managers via email, Slack, or LinkedIn.
* **Core Protocol:** Structures the message for brevity, direct relevance, and an actionable next step.
* **Key Pairings:** Pair with `career/NETWORKING.md`.

### [templates/COVER_LETTER.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/templates/COVER_LETTER.md)
* **Purpose:** Use when drafting tailored cover letters for internship applications.
* **Core Protocol:** Customizes paragraphs to align your verified contributions with company goals.
* **Key Pairings:** Pair with `career/INTERNSHIPS.md`.

---

# PART 2: Combined Workflow Recipes

Here is how you combine these files to execute complex developer tasks:

### Workflow Recipe 1: Upstream OSS Bug Fix (e.g. Harbor CLI panic)
```
[agents/AGENTS.md] (bootstrap)
       ↓
[core/OPPORTUNITY_DISCOVERY.md] (identify bug severity and score)
       ↓
[core/DEBUGGING.md] (reproduce locally and form hypotheses)
       ↓
[agents/CURSOR.md] (make surgical IDE edits)
       ↓
[agents/CODEX.md] (run local tests and compile)
       ↓
[open-source/PR_CHECKLIST.md] + [templates/PR_DESCRIPTION.md] (submit reviewable code)
       ↓
[experience/LESSONS.md] (document lesson learned)
```

### Workflow Recipe 2: Writing a Competitive GSoC/LFX Proposal
```
[career/PROJECT_SELECTION.md] (pick high-potential project)
       ↓
[career/GSOC.md] or [career/LFX.md] (verify program dates and rules)
       ↓
[open-source/MAINTAINER_INTERACTION.md] + [templates/COLD_OUTREACH.md] (align with maintainers)
       ↓
[agents/CLAUDE.md] (run 5-Council analysis on proposed design)
       ↓
[core/DECISION_MAKING.md] + [experience/DECISION_LOG.md] (log architectural decisions)
       ↓
[templates/PROJECT_PROPOSAL.md] (compile final proposal document)
```

### Workflow Recipe 3: Bootstrapping a Greenfield Portfolio Project
```
[core/DECISION_MAKING.md] (evaluate database & tech stack)
       ↓
[experience/DECISION_LOG.md] (record choices and options)
       ↓
[engineering/BACKEND.md] + [engineering/DEVOPS.md] (set up standards & CI/CD configs)
       ↓
[agents/ANTIGRAVITY.md] (decompose tasks into milestone checkpoints)
       ↓
[templates/TECHNICAL_WRITEUP.md] (write project launch post showing benchmark outcomes)
```
