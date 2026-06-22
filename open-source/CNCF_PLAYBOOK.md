# CNCF Playbook

---

## Purpose

The purpose of this playbook is to maximize learning, contribution quality, maintainer trust, and long-term opportunities within CNCF (Cloud Native Computing Foundation) ecosystems.

CNCF participation is not merely about merged pull requests. The objective is to become a trusted contributor capable of making meaningful technical contributions to cloud-native infrastructure projects.

---

## Core Philosophy

→ See [core/ENGINEERING_PRINCIPLES.md](file:///c:/Users/govin/OneDrive/Documents/opensrc/govind-os/core/ENGINEERING_PRINCIPLES.md) for universal principles.

- **CNCF projects are communities, not repositories.** Code is one component; trust, communication, and consistency matter equally.
- **Prefer long-term participation** over short-term activity bursts.
- **Respect community norms** and established contributor workflows.

---

## Understanding CNCF Ecosystems

Many contributors misunderstand CNCF projects. CNCF projects are communities, not repositories.

To succeed in this ecosystem, remember that code is only one component. Real success requires:
- **Technical contribution:** Submitting solid, tested, and reviewable code changes.
- **Communication:** Participating politely in Slack, mailing lists, and issue discussions.
- **Consistency:** Showing up regularly rather than making a single contribution and vanishing.
- **Reliability:** Completing tasks you claim and incorporating feedback diligently.
- **Community participation:** Attending public community meetings and reviewing others' PRs.

---

## Reading Strategy

Before contributing significantly, set aside time to read:
- **Accepted PRs:** Understand what kind of code gets approved and the feedback maintainers leave.
- **Recently closed issues:** Observe how issues are debugged, diagnosed, and resolved.
- **Design proposals and RFCs:** Learn how new features are architected and debated.
- **Contributor documentation:** Internal processes, CI setup guides, and coding guidelines.
- **Release notes:** Understand what changes are considered user-facing or breaking.

*Reading code is important. Reading project decisions is often more important. In complex CNCF codebases (like Harbor), understanding why a decision was made is often harder than understanding the code itself.*

---

## Project Selection Strategy

Choose projects where your effort will yield the highest technical and career leverage:

**Prioritize projects that:**
- Have active maintainers who review PRs and triage issues constructively.
- Have healthy, predictable review cycles (not PRs sitting unaddressed for months).
- Have beginner-accessible contribution paths and clear developer setups.
- Match long-term engineering goals (e.g., Go, Kubernetes, PostgreSQL).
- Expose you to production-grade distributed systems and real operational bottlenecks.

**Avoid projects where:**
- Reviews are completely inactive or comments are hostile.
- Open issues are abandoned without triage.
- Contribution processes and local building steps are undocumented or broken.

---

## Maintainer Trust Framework

Trust is the highest-value currency in open-source.

### Trust is built through:
1. **Consistent participation:** Showing interest and regular presence over months.
2. **High-quality contributions:** Tested, well-explained code aligned with project styling.
3. **Professional communication:** Clear, respectful, and structured comments in Slack and issues.
4. **Following through on commitments:** Seeing PRs through to completion and addressing review requests.
5. **Responding well to feedback:** Listening objectively and implementing requested updates without defensiveness.
6. **Respecting maintainer time:** Doing your homework (reading docs/code) before asking simple questions.

*Trust is lost faster than it is earned.*

---

## Contributor Progression Model

CNCF projects follow a clear, natural pathway of progression. Do not try to skip stages:

### Stage 1: Observer
- **Focus:** Listen, learn, and read.
- **Action:** Read code repositories, follow issue trackers, review open PRs, and attend public community meetings.

### Stage 2: Contributor
- **Focus:** Tackle low-complexity, well-defined issues.
- **Action:** Fix minor bugs, improve unit test coverage, correct typos, and update documentation.

### Stage 3: Trusted Contributor
- **Focus:** Take ownership of larger issues and assist others.
- **Action:** Implement core feature requests, review community PRs, and participate actively in design discussions.

### Stage 4: Community Member
- **Focus:** Drive project success and guide newer contributors.
- **Action:** Help mentor contributors, triage issues, review code systematically, and co-run community initiatives.

### Stage 5: Maintainer Candidate
- **Focus:** Deep ownership, reliability, and technical leadership.
- **Action:** Direct architectural decisions, guide release cycles, and take ultimate responsibility for modules.

---

## Communication Guidelines

Quality of communication directly affects contribution success:

- **Be concise:** Get straight to the point. Respect busy maintainers' cognitive bandwidth.
- **Be respectful:** Stay polite and positive in all public channels.
- **Ask clear questions:** Explain what you tried, what failed, and provide links to relevant logs or code lines.
- **Share context:** Provide background on the issue, environment, and assumptions.
- **Avoid demanding responses:** Do not ping maintainers repeatedly or expect immediate replies.
- **Assume good intent:** Realise that written text can sound blunt, but feedback is usually intended to improve the code.

---

## Review Culture

Review feedback is collaboration, not an evaluation of your personal worth.

- **Understand before responding:** Analyze the reviewer's comment fully. If unclear, ask a targeted question.
- **Focus on the code:** Keep your ego out of it. If a reviewer suggests a better approach, verify and adopt it.
- **Ask clarifying questions:** If you disagree, explain your reasoning objectively using data or code examples.
- **Implement updates carefully:** Verify that new commits satisfy the request and do not introduce regressions.
- **Thank the reviewer:** Appreciate the time they took to review your PR.

---

## Meeting Participation

Attending community calls (like the Harbor community meeting) is a fast track to visibility and alignment.

### Before meetings:
- **Read the agenda:** Check the agenda doc and add items you want to discuss (e.g., issues you need feedback on).
- **Review relevant issues:** Familiarize yourself with the topics scheduled for discussion.
- **Prepare questions:** Keep questions clear, focused, and brief.

### During meetings:
- **Listen carefully:** Focus on the main topics and project priorities.
- **Take notes:** Track active decisions, action items, and design consensus.
- **Avoid dominating:** Speak only when relevant, and respect others' speaking time.

### After meetings:
- **Follow up:** Complete any action items or commitments you took on.
- **Document lessons:** Update relevant project notes or issues to reflect meeting outcomes.

---

## LFX Mentorship Strategy

LFX Mentorship is a premium pathway to build career leverage in the CNCF ecosystem.

### Before applying:
- **Contribute early:** Do not wait for the application window. Start making contributions to the target project 1-2 months in advance.
- **Build maintainer familiarity:** Show up on Slack, ask smart questions, and submit high-quality PRs so mentors recognize your name.
- **Understand architecture:** Study the codebase layout, core packages, and run configuration details.
- **Demonstrate reliability:** Address issue assignments and review comments quickly.

### During application:
- **Provide concrete evidence:** Highlight your existing PRs, issues opened, and contributions to the project.
- **Reference contributions:** Explain exactly what you have already implemented or solved.
- **Demonstrate understanding:** Present a clear, technically detailed proposal of how you plan to tackle the mentorship project.

### During mentorship:
- **Communicate consistently:** Give regular status updates on Slack or during sync calls.
- **Deliver incrementally:** Submit small, focused PRs throughout the mentorship rather than one giant branch at the end.
- **Seek feedback early:** Do not hesitate to discuss roadblocks or design changes with your mentors.

### After mentorship:
- **Remain involved:** Do not vanish once the program ends. Keep contributing to the codebase.
- **Continue contributing:** Help triage issues, review incoming PRs, and guide new contributors.
- **Maintain relationships:** Stay in touch with your mentors and core community members.

---

## Common Failure Modes

- **Contribution count chasing:** Inflating stats with useless drive-by PRs rather than focus on quality logic.
- **Applying before contributing:** Applying for LFX/GSoC without any pre-existing code contributions to the project.
- **Ignoring review feedback:** Failing to implement requested changes or arguing with maintainers.
- **Disappearing after submission:** Leaving a PR unaddressed when tests fail or reviews require modifications.
- **Overcommitting:** Claiming multiple complex issues and failing to complete any of them.
- **Treating CNCF as a transaction:** Using the ecosystem solely for resume padding without caring about project health.
- **Prioritizing visibility over value:** Focusing on public speaking or community channels without backing it up with solid engineering contributions.

---

## High-Leverage Behaviors

- **Attend community meetings regularly** to stay aligned with the project roadmap.
- **Review accepted PRs** written by experienced developers to learn design patterns.
- **Read open design discussions** and RFCs to understand architectural trade-offs.
- **Help other contributors** on Slack or issue trackers with setup, reproduction, or guides.
- **Improve documentation** by correcting gaps, setup bugs, or outdated tutorials.
- **Build long-term relationships** with core maintainers and contributors.
- **Contribute consistently** to establish your reliability in the community.

---

## Personal Lessons

*This section captures key learnings from your open-source journey. It serves as the long-term institutional memory for Govind-OS, compounding experience across Harbor, LFX, and future contributions:*

- **Harbor CLI & Satellite Development:** When working on CLI tools, prioritize clean error handling and structured error propagation. Abrupt exits or panics degrade the developer experience.
- **LFX Applications:** Pre-contribution is the single highest differentiator. The applicants who stand out are those who have already landed high-quality code in the repository before the application review starts.
- **Slack & Async Communication:** When asking questions in public Slack channels, post in threads and format issues clearly. Provide the exact steps to reproduce, code snippets, and relevant log outputs.
- **Review Cycles:** Treat maintainers as busy partners. When making changes, comment on the PR explaining exactly which commit addresses which review comment.

---

## Continuous Improvement

After every contribution, PR review, community meeting, or mentorship cycle:
- **Capture lessons learned:** Record what technical, process, or communication approach succeeded or failed.
- **Analyze feedback:** Note design suggestions or comments made by maintainers.
- **Refine contribution processes:** Continually improve your workflow checklist to avoid repeating formatting, logic, or testing errors.

*Community and process knowledge compounds just like technical knowledge.*
