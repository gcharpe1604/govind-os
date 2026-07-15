# Maintainer Interaction Handbook

This document defines the communication protocols, collaboration principles, and relationship frameworks for interacting with open-source project maintainers within Govind-OS. It is designed to help engineers build durable professional relationships, contribute effectively, and navigate prestigious developer ecosystems (such as CNCF, LFX, GSoC, and Summer of Bitcoin).

Technical capability is only a baseline. Long-term contribution success is driven by communication quality, trust, reliability, and professional maturity.

---

## Purpose

The purpose of maintainer interaction is to build trust, accelerate learning, and contribute effectively to open-source software projects.

- **Open source is fundamentally a collaborative, human-centric activity.**
- **While technical quality of code is critical, the level of trust, communication clarity, and reliability you establish determines your long-term impact on a project.**
- **The ultimate goal is not simply to get a single pull request merged. The goal is to build a reputation as a contributor that maintainers trust and enjoy working with.**

---

## Core Philosophy

→ See [core/ENGINEERING_PRINCIPLES.md](../core/ENGINEERING_PRINCIPLES.md) for universal principles.

*   **Respect maintainer time:** Treat maintainer attention as a highly constrained resource. Optimize all communications for clarity and ease of review.
*   **Prefer collaboration over argument:** Approach technical disagreements as joint problem-solving exercises.
*   **Accept feedback professionally:** Treat code review comments as opportunities to learn the project's standards, not as personal criticisms.

---

## Understanding Maintainers

To collaborate effectively, you must understand the operational constraints and responsibilities of a maintainer:

*   **Stewardship, Not Support:** Maintainers are the stewards of a codebase, responsible for its long-term reliability, security, and architectural integrity. They are not unpaid customer support staff for your immediate development blockers.
*   **Volunteers and Saturation:** Many maintainers work on open source in their free time or alongside heavy full-time job demands. They handle issue sorting, bug reports, feature requests, dependency upgrades, release management, and security alerts simultaneously.
*   **Review Overhead:** Reviewing, testing, and merging code is often more mentally exhausting than writing the code itself. Every line of code merged is a line the maintainers must support and debug for years.

---

## Trust Building

Trust is the currency of the open-source developer ecosystem. It is hard-earned and easily lost.

### How Trust is Built
*   **Consistent contributions:** Regularly checking in, fixing small bugs, updating stale docs, and reviewing issues.
*   **Accurate communication:** Explaining bugs and solutions honestly, admitting what you do not know, and avoiding hyperbole.
*   **Reliable follow-through:** If you claim an issue or volunteer for a task, finish it. If you cannot finish it, explicitly notify the maintainers immediately.
*   **High-quality PRs:** Providing small, clean, well-tested commits that follow the project's exact style and conventions.
*   **Professional behavior:** Remaining calm, polite, and helpful in all public threads.

### How Trust is Lost
*   **Low-effort contributions:** Copy-pasting unverified code, leaving debug prints in PRs, or ignoring lint rules.
*   **Ignoring review feedback:** Resubmitting code without implementing requested changes or explaining why you bypassed them.
*   **Overpromising and abandoning:** Claiming multiple critical issues or assignment tasks and then disappearing from the repository.
*   **Entitlement:** Demanding reviews or immediate responses on issues.

---

## Before Contacting Maintainers

Before opening a Github issue, asking a question on Slack/Discord, or tagging a maintainer, execute this research checklist:

1.  **Read the documentation:** Search the official docs, wikis, and readme files for your question.
2.  **Search existing issues:** Check open and closed GitHub issues. Most setup bugs or common questions have already been answered in public threads.
3.  **Search merged PRs:** Read commits and pull requests that mention similar modules or code segments.
4.  **Read the Contribution Guidelines (`CONTRIBUTING.md`):** Understand the project's specific branch policies, sign-off procedures (DCO/CLA), testing requirements, and styling guides.
5.  **Audit the codebase:** Trace the execution flow locally. Run the test suite and verify where the logic resides.

*Never ask a maintainer a question that can be answered in less than 10 minutes of independent research.*

---

## Asking Good Questions

When requesting help, structure your message to prove you have performed prior research. This minimizes the friction for a maintainer to respond.

### Bad Questions
*   *"X isn't working, can someone help?"* (Forces the maintainer to ask for logs, code versions, and reproduction steps).
*   *"Where do I start on this issue?"* (Asks the maintainer to write a guide for you before you have looked at the files).

### The Good Question Template
```
I am currently working on implementing [Feature/Fix] in [Module]. 

I expected the system to behave as: [Expected behavior]
However, I observed: [Actual behavior / Error logs]

To diagnose this, I have:
1. Checked [Config/Documentation] and verified Z.
2. Traced the execution flow to [file.go#L123], where function Y is called.
3. Written a local test case replicating the state [link to gist/repro].

Based on [code logic], I suspect the root cause is [Hypothesis], but I am unsure if we should fix it by modifying Y or adjusting the caller logic.

Am I looking in the right direction?
```

*Show your work before requesting help. A maintainer is highly likely to guide someone who has already isolated the issue.*

---

## Reporting Issues

A high-quality issue report is a valuable contribution in itself, saving maintainers hours of triage.

*   **Focus on Facts:** State exactly what occurred, what was expected, and how to reproduce it. Avoid speculation or complaints.
*   **Provide a Minimal Reproducible Example (MRE):** Create the smallest possible script, container setup, or code snippet that reliably triggers the bug.
*   **Include Environment Details:** OS version, software runtime, dependency versions, and any custom configurations.
*   **Format Outputs:** Wrap stack traces, terminal logs, and configuration YAMLs in triple backticks (\`\`\`) to preserve readability.

---

## Discussing Solutions

Before writing complex code, open a thread or design proposal to discuss the solution with the community.

*   **De-couple from Your Implementation:** Do not become attached to a specific line of code or design approach simply because you thought of it first.
*   **Present Alternatives & Trade-offs:** Outline 2-3 possible ways to solve the problem, noting the pros, cons, and complexity of each.
*   **Focus on Long-Term Project Stability:** Evaluate if the fix introduces performance bottlenecks, API drift, or dependency bloating.

---

## Pull Request Communication

Your pull request description should act as a clear, self-contained review guide for the maintainer.

*   **Explain the "Why":** Focus on the business value or technical reason behind the change, not just a description of *what* you changed (the code diff already shows what changed).
*   **State the Testing Strategy:** Explicitly list how you verified the changes (e.g., unit tests added, integration tests run locally, manual curl scripts executed).
*   **Document Assumptions and Out-of-Scope Items:** If you left certain refactors out of scope to keep the PR focused, state that clearly to head off reviewer suggestions.

---

## Responding to Reviews

Code review comments are requests for alignment, not attacks on your intelligence.

*   **Implement Feedback Thoughtfully:** Go through each comment and apply the requested change.
*   **Respond to Every Comment:** If a reviewer asks a question, reply to it. Once you apply a change, reply with a short confirmation (e.g., *"Done. Updated to follow pattern X."*).
*   **Request Clarification Wisely:** If a request is unclear, do not guess. Ask politely for clarification (e.g., *"I understand we want to validate Y here. Do you prefer we do this inside the handler or within the validation middleware?"*).

---

## Handling Disagreements

Technical disagreements are normal in collaborative engineering. When they occur:

*   **Base Arguments on Evidence:** Avoid emotional language (*"This way is better/cooler"*). Use benchmarks, profiles, security advisories, or design precedents from within the codebase.
*   **Compare Trade-offs:** List the trade-offs of both your approach and the maintainer's proposed approach objectively.
*   **De-escalate:** If a discussion becomes tense, step back. Focus entirely on the code and system constraints. If the maintainer makes a final design decision, accept it gracefully and execute it.

---

## Handling Rejections

Operating in open source means some of your issues, design proposals, or pull requests will be rejected or closed without merging.

*   **Do Not Take Rejections Personally:** Projects operate under strict boundaries. A PR may be rejected because the feature is out of scope for the current roadmap, the maintenance overhead is too high, or a simpler solution was found.
*   **Extract the Lessons:** Ask yourself:
    *   Did I fail to gather requirements before writing code?
    *   Was my PR too large or complex?
    *   Did I introduce breaking changes without warning?
*   **Pivot Gracefully:** Close the PR cleanly, thank the maintainer for their review time, and apply the lessons to your next contribution.

---

## Long-Term Relationship Building

To transition from a one-off contributor to a trusted community member:

*   **Show Up Consistently:** Participate in public developer channels (Slack, Discord, mailing lists) regularly.
*   **Help New Contributors:** Answer basic setup questions or review documentation issues for newcomers. This offloads triage work from maintainers.
*   **Participate in Code Reviews:** Review other contributors' PRs. Checking for typos, lint errors, or basic testing coverage helps maintainers scale their review bandwidth.

---

## Mentorship Programs

For competitive programs like LFX (CNCF), Google Summer of Code (GSoC), and Summer of Bitcoin, maintainer relationships are the primary selection filter.

*   **Start Early:** Do not wait for the application window to open. Begin contributing to the target repository 2 to 3 months in advance.
*   **Establish Visibility:** Attend public community video meetings. Listen, take notes, and introduce yourself in chat or Slack threads.
*   **Earn Trust on the Ground:** Solve open backlog issues and write clean PRs before applying. **Selection decisions are frequently made based on your contribution history and maintainer interactions before applications are officially evaluated.**

---

## Following Up Professionally

Maintainers are often saturated and may not respond to your issue or pull request immediately. Following up is a normal part of open-source participation, but it must be executed with professional courtesy:

### Guidelines for Professional Follow-ups
*   **Wait a Reasonable Amount of Time:** Do not bump a PR or issue within 48 hours unless it is a critical, actively breaking security fix. Wait at least 3 to 7 days before politely requesting an update.
*   **Assume Positive Intent:** Remind yourself that maintainers are likely juggling multiple tasks. Avoid passive-aggressive language or accusatory tones.
*   **Keep Messages Short and Concise:** Provide a brief summary of where the PR stands so the reviewer doesn't have to trace the commit history to remember the context.
*   **Provide New Information When Possible:** If you updated code, fixed a test, or gathered new repro details, mention that. Bumping with new progress is highly welcomed.
*   **Avoid Empty Pings:** Do not send generic pings that add noise without value.

### Concrete Examples

*   **Good Follow-Up:**
    > *"Hi, I wanted to follow up on this PR. I have addressed the review comments regarding formatting and added the requested unit tests for edge cases. Please let me know if there is anything else I should update when you have a moment to review."*
*   **Bad Follow-Up:**
    > *"Any updates?"*
    > *"Ping."*
    > *"Why has nobody reviewed this yet?"*

*Professional follow-ups restore visibility to your work in a crowded notification inbox. Repetitive, context-free pings create noise and reduce maintainer willingness to engage.*

---

## Communication Anti-Patterns

Avoid these common open-source communication mistakes:

*   **Demanding Attention (Pinging):** Tagging maintainers directly in GitHub comments or Slack messages hours after submitting a PR. Give reviewers at least 3-7 days to respond.
*   **Direct Messaging (DMs) for Support:** DMing maintainers on Slack/Discord to ask basic setup questions. Keep support requests in public community channels.
*   **Ignoring Thread Context:** Dropping random PR links or off-topic comments into unrelated Slack channels or issue threads.
*   **Arguing Over Style Guidelines:** Challenging the project's formatting or lint conventions. Follow the existing style guidelines exactly, regardless of your personal preferences.

---

## AI-Assisted Communication

Use AI to refine your writing, but preserve authenticity:

*   **AI Strengths:** Use AI to check your messages for tone, improve clarity, summarize long Slack threads, and draft structured PR descriptions based on your git commit log.
*   **AI Limitations:** Never allow AI to generate technical explanations or PR descriptions that you do not fully understand. If a maintainer asks you to explain an AI-drafted PR implementation, you must be able to justify every character.

---

## Reputation Compounding

In open source, reputation is a compounding asset. Your public profile (commits, PR reviews, issue discussions, and developer interactions) acts as a permanent, searchable portfolio.

*   **High Reputation Outcomes:**
    *   Maintainers will prioritize reviewing your PRs because they know they are clean and well-tested.
    *   Opportunities for project maintainership, mentorship programs (LFX/GSoC), and professional job referrals will emerge organically.
    *   You earn write permissions and repository triage rights, gaining deep architectural influence.
*   *Optimize for long-term reputation, not short-term contribution counts. A clean track record of professional collaboration is the most valuable asset in open-source engineering.*

---

## Continuous Improvement

Collaborative communication is an engineering skill that requires tracking and iteration:

*   **Refine Review Comments:** Look at past PR reviews. What requests did maintainers make repeatedly? (e.g., missing tests, wrong commits signatures). Update your pre-PR checklist to automate those fixes.
*   **Study High-Level Maintainers:** Read PR threads on major repositories (like Kubernetes/Kubernetes or containerd/containerd) to observe how senior architects ask questions, handle conflicts, and structure feedback.
*   **Iterate on the Handbook:** As you navigate different CNCF community cycles, refine this handbook to capture new lessons in developer relations.
