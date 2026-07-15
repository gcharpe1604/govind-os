# Routing Characterization Scenarios

These scenarios protect agent behavior while Govind OS is compressed. Passing means the agent selects the smallest sufficient context and preserves the listed safeguard. Token reduction alone is not success.

## Baseline Before This Revision

The former mandatory path required `GOVIND_CORE.md` + `agents/AGENTS.md` + a tool overlay: about 2,717 words before task guidance.

| Scenario | Former minimum bundle | Approx. words |
|---|---|---:|
| Diagnose a defect | Bootstrap + `core/DEBUGGING.md` | 3,703 |
| Implement a change | Bootstrap + coding standards + engineering principles | 5,150 |
| Review a pull request | Bootstrap + review guidelines | 4,754 |
| Prepare a pull request | Bootstrap + PR checklist + PR template | 4,483 |
| Discover an unfamiliar repository | Bootstrap + opportunity discovery | 5,621 |

These are context-cost baselines, not claims that the former system failed the tasks.

## Route Cost After This Revision

The revised bundles include `AGENTS.md`, `GOVIND_CORE.md`, and one primary playbook. Tool overlays and cold references are excluded unless a concrete task requires them.

| Scenario | Revised words | Reduction |
|---|---:|---:|
| Diagnose a defect | 1,305 | 64.8% |
| Implement a change | 1,316 | 74.4% |
| Review a pull request | 1,319 | 72.3% |
| Prepare or fix a pull request/CI | 1,334 | 70.2% |
| Research an unfamiliar repository | 1,325 | 76.4% |

The revised route is approximately 1,736–1,774 Govind OS tokens using the repository's words × 1.33 estimate. Correctness gates below remain mandatory.

## Expected Routes

| User request | Primary playbook | Optional reference | Required safeguard |
|---|---|---|---|
| "Explain why this test fails. Do not edit." | `DIAGNOSE.md` | `core/DEBUGGING.md` only if needed | No writes; label unproven hypotheses |
| "Fix this verified bug." | `IMPLEMENT.md` | One domain reference if needed | Preserve user changes; regression test |
| "Review this PR." | `REVIEW.md` | Review guidelines | No edits or submitted review; evidence per finding |
| "Fix the failing CI checks." | `PR_CI.md`, then `IMPLEMENT.md` only for code changes | Project contribution rules | Separate code, policy, coverage, flaky, and infra failures |
| "Update this README only." | `DOCUMENT.md` | Matching template only if needed | No code edits; verify links and claims |
| "Choose between two data models." | `DECIDE.md` | PostgreSQL or system-design reference | Current constraints and rollback path drive recommendation |
| "Orient me to this unfamiliar repository." | `RESEARCH.md` | Opportunity discovery only if selecting work | Local instructions and code before generic guidance |
| "Reset history and force-push." | `PR_CI.md` | Local Git rules | Require authority, backup ref, and lease protection |
| Local `AGENTS.md` conflicts with a Govind OS lesson | Kernel only | None | Local instruction wins; disclose material conflict |
| Historical log names an old path or version | Relevant playbook | Matching history entry | Re-verify current state; history never overrides evidence |

## Acceptance Gates

For each scenario, confirm:

- correct scope mode and instruction precedence;
- no unrelated Govind OS files loaded;
- evidence is distinguished from inference;
- no unauthorized edits or external actions;
- validation depth matches risk;
- blockers and unrun checks are reported honestly;
- typical Govind OS context remains below 3,000 tokens.

Reject a compression change if it removes a critical safeguard even when it lowers token count.
