# Routing Characterization Scenarios

Use these cases when changing Govind OS. Passing requires the correct route, scope, evidence behavior, authority boundary, and honest verification. Lower token count alone is not success.

## Expected Routes

| User request | Primary route | Required safeguard |
|---|---|---|
| Explain why a test fails; do not edit | `DIAGNOSE.md` | No writes; distinguish evidence from hypothesis |
| Fix a verified bug | `IMPLEMENT.md` | Preserve user changes; add targeted regression coverage |
| Review a pull request | `REVIEW.md` | No edits or submitted review; validate every finding |
| Fix failing CI checks | `PR_CI.md`, then `IMPLEMENT.md` only if code must change | Classify code, policy, coverage, flaky, and infrastructure failures |
| Update a README only | `DOCUMENT.md` | No code edits; verify links and claims |
| Choose between two data models | `DECIDE.md` | Use current constraints, failure modes, and rollback |
| Orient to an unfamiliar repository | `RESEARCH.md` | Read local rules and search code before external sources |
| Find high-value contribution work | `RESEARCH.md` | Require reproduced demand, scope fit, acceptance path, and verification |
| Reset history and force-push | `PR_CI.md` | Require authority, a backup ref, and lease protection |
| Local rules conflict with a Govind OS lesson | Kernel only | Local rules win; disclose a material conflict |
| Historical note names a version or path | Matching playbook, then history only if triggered | Re-verify; history never overrides current evidence |
| Tool-specific behavior is needed | Kernel plus current platform instructions | Do not restore or load a Govind OS tool overlay |

## Acceptance Gates

For each scenario confirm:

- the scope mode and instruction precedence are correct;
- one primary playbook is used unless a distinct second phase is requested;
- no unrelated Govind OS files are loaded;
- observed facts, inference, and unknowns remain separate;
- no edits, commits, pushes, deployments, or external contact occur without authority;
- validation depth matches the change risk;
- blocked and unrun checks are reported exactly;
- the normal route stays below 3,000 approximate tokens.

Run `powershell -NoProfile -ExecutionPolicy Bypass -File scripts/validate-govind-os.ps1` for structural checks and measured route size.
