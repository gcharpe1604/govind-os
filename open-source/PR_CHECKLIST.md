# Pull Request Checklist

---

## Purpose

The purpose of this checklist is to ensure every pull request is reviewable, maintainable, and respectful of maintainer time.

A pull request should be easy to understand, easy to review, and easy to merge. The goal is not merely to submit code. The goal is to submit high-quality contributions that build maintainer trust.

---

## PR Severity Gate

Before proceeding, verify:

- [ ] This PR solves one clearly defined problem.
- [ ] This PR is the smallest reasonable change that solves the problem.
- [ ] This PR aligns with project goals and maintainer expectations.
- [ ] This PR can be explained in a few concise sentences.

*If any item above is not true, reconsider the scope before continuing.*

---

## Before Writing Code

Before implementing a solution, ensure the foundation is clear:

- [ ] **Problem understood:** I understand the problem being solved and how to reproduce it.
- [ ] **Root cause identified:** I can explain why the issue occurs or why the feature is needed.
- [ ] **Codebase read:** I have read the relevant source files and their surrounding code.
- [ ] **Context gathered:** I have reviewed related issues, pull requests, or design discussions.
- [ ] **Conventions known:** I understand the coding standards and project conventions.
- [ ] **Solution validated:** I have validated the proposed approach to ensure it makes sense.
- [ ] **Maintainer alignment:** A maintainer is likely to accept this direction or has already approved the issue.

---

## Before Opening a Pull Request

Before creating a PR, check the state of the branch:

- [ ] **Problem solved:** The implementation fully solves the intended problem.
- [ ] **Scope minimized:** The changes are focused on a single logical task.
- [ ] **No unrelated files:** No formatting cleanups, dead code, or unrelated edits are mixed in.
- [ ] **Conventions followed:** The code aligns with the repository's coding style and file organization.
- [ ] **Compatibility preserved:** Backward compatibility is maintained where required.
- [ ] **No debug remnants:** Temporary print statements, logs, or debugging configurations have been removed.
- [ ] **No dead code:** Unused imports, variables, and draft functions have been cleaned up.

---

## PR Description Checklist

The pull request description provides a clear roadmap for reviewers:

- [ ] **What changed:** A brief summary of the modifications made.
- [ ] **Why it changed:** The rationale behind the changes and the context of the problem.
- [ ] **How it works:** Technical summary of the design and implementation details.
- [ ] **How it was tested:** Detailed description of manual and automated verification.
- [ ] **Trade-offs considered:** Alternative designs that were evaluated and why this was chosen.
- [ ] **References included:** Links to open issues, design proposals, or related discussions.

---

## Testing Checklist

- [ ] **Unit tests pass:** All local and repository-wide unit tests compile and run successfully.
- [ ] **Integration tests pass:** Extended integration or system-level tests pass.
- [ ] **Manual validation:** The changes were tested manually in a realistic environment.
- [ ] **Failure paths covered:** The tests verify how the system behaves when inputs or dependencies fail.
- [ ] **Edge cases covered:** Testing includes empty inputs, nulls, boundary values, and timeouts.
- [ ] **No regressions:** The changes did not break any existing tests or functionality.
- [ ] **New test cases added:** Appropriate tests cover the newly implemented code paths.
- [ ] **Behavior unchanged:** Existing behavior remains unchanged unless intentionally modified.

---

## Reviewability Checklist

Optimize the PR diff to make reviewing fast and painless:

- [ ] **Single topic:** The PR solves one logical problem rather than combining multiple features.
- [ ] **Readable diff:** The changes flow logically and are clean of formatting noise.
- [ ] **Logical commit history:** Commits are atomic and have clear messages describing their purpose.
- [ ] **Clean names:** Variables, files, and functions have clear, descriptive names.
- [ ] **Correct error handling:** Errors are handled, contextualized, and bubbled up appropriately.
- [ ] **Documentation updated:** Relevant code comments and documentation are updated.
- [ ] **No context switching:** The reviewer can understand the entire change without needing excessive background searching.

---

## Maintainer Experience Checklist

Respect the time and attention of maintainers:

- [ ] **PR size is optimized:** The PR is small and easy to digest.
- [ ] **Reviewer questions anticipated:** The PR description proactively answers potential questions.
- [ ] **Professional tone:** All comments, commit messages, and PR descriptions are polite, objective, and clear.
- [ ] **Feedback addressed:** Reviewer comments have been resolved carefully and tested.
- [ ] **Reviewer intent understood:** You understand the reviewer's reasoning before pushing updates or responding.
- [ ] **Follow-up commits focused:** Edits based on feedback remain constrained and minimal.

---

## AI-Assisted Contribution Checklist

If AI assistants (e.g., Antigravity, Claude, Cursor) were used:

- [ ] **Full comprehension:** I understand every line of code suggested by the AI.
- [ ] **Logic verified:** I have manually checked and verified that the logic is correct.
- [ ] **Security checked:** I verified that no vulnerabilities or data leaks are introduced.
- [ ] **Performance checked:** The code has been checked for resource leaks and expensive loops.
- [ ] **Test coverage added:** The AI-generated logic is covered by thorough unit or integration tests.
- [ ] **Conventions matched:** The generated code aligns with project styling and patterns.
- [ ] **Diff reviewed:** The entire AI-generated diff has been self-reviewed before pushing.
- [ ] **Understanding retained:** AI suggestions did not replace my understanding of the codebase.

---

## Self-Review Checklist

Perform a final review of your own work before requesting maintainer review:

- [ ] **Diff read line-by-line:** I have read the complete diff directly in Git or the IDE.
- [ ] **Approval check:** I would approve this pull request myself if I were a maintainer.
- [ ] **Clear naming:** Variable and function names are clean and explicit.
- [ ] **No over-engineering:** Every abstraction is justified and necessary.
- [ ] **Contextualized errors:** Errors are logged or returned with clear context.
- [ ] **Documentation accurate:** Comments and documents describe the actual state of the code.
- [ ] **Net improvement:** The PR leaves the codebase cleaner, safer, or more reliable than before.
- [ ] **Explain and defend:** I can confidently explain and defend every change during review.

---

## Common Rejection Causes

Keep these common reasons for PR rejection in mind to avoid them:

- **Oversized PRs:** Large, sprawling diffs that touch multiple unrelated systems.
- **Unvalidated approaches:** Implementing a solution without verifying if it aligns with project goals.
- **No tests:** Submitting core logic or bug fixes without writing automated tests.
- **Convention bypass:** Ignoring style guides, naming conventions, or project patterns.
- **Swallowed errors:** Silent failures or generic error returns without context.
- **Vague descriptions:** PRs that lack summaries or references to context.
- **Wrong scope:** Solving the wrong problem due to a lack of codebase understanding.
- **No maintainer alignment:** Working on issues without confirmative agreement.

---

## Final Pre-Submit Checklist

Before clicking **"Create Pull Request"**:

- [ ] **Problem:** Do I understand the problem?
- [ ] **Solution:** Is the solution validated?
- [ ] **Tests:** Are the tests passing?
- [ ] **Diff:** Have I self-reviewed the diff?
- [ ] **Docs:** Is the documentation updated?
- [ ] **Description:** Is the PR description complete?
- [ ] **Reviewer:** Is the reviewer's experience optimized?
- [ ] **Alignment:** Does the contribution align with project goals?
