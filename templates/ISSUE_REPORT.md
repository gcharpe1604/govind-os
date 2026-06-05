# Issue Report Template

> [!NOTE]
> **Purpose of an Issue Report:**
> An issue report exists to help maintainers understand, reproduce, prioritize, and resolve a problem. The goal is not simply to report that something is broken; the goal is to provide enough information that another contributor can reproduce and investigate the issue.

---

## Core Philosophy
- **Prefer evidence over assumptions:** Provide logs and traces, not just guesses.
- **Prefer reproducibility over conclusions:** A reliable reproduction path is worth a hundred theories.
- **Prefer clarity over volume:** Keep it concise but descriptive.
- **Prefer facts over speculation:** Describe what happens, not what you think the developer did wrong.
- **Respect maintainer time:** Do the preliminary search and triage before submitting.

---

## Issue Severity
*Help maintainers prioritize this issue.*

- **Severity:** (Critical / High / Medium / Low)
- **Impact:** Who is affected?
- **Frequency:** (Always / Sometimes / Rarely)

---

## Summary
*A brief and clear description of the issue.*

- **Expected Behavior:** 
- **Actual Behavior:** 

---

## Environment
*Record configuration details to rule out environment-specific bugs.*

- **Project Version:** 
- **Operating System:** (e.g., Windows 11, macOS Sequoia, Ubuntu 24.04)
- **Architecture:** (e.g., amd64, arm64)
- **Runtime/Compiler Version:** (e.g., Go 1.22, Node.js 20)
- **Configuration Details:** (e.g., custom environment variables, config files)

---

## Regression Information
*Does this issue represent a regression?*

- [ ] Yes
- [ ] No
- [ ] Unknown

**If Yes:**
- **Last Known Working Version:** 
- **First Known Broken Version:** 

---

## Steps To Reproduce
*The most critical section for resolution.*

1. [First Step]
2. [Second Step]
3. [Third Step]
4. [Fourth Step]

- **Result:** [What triggers the failure]

---

## Expected Behavior
*Describe what should happen under normal conditions.*

---

## Actual Behavior
*Describe what actually happens when the bug is triggered.*

---

## Evidence
*Attach concrete logs, screenshots, and outputs.*

- **Terminal Output:**
  ```bash
  # Paste commands and errors here
  ```
- **Error Messages / Stack Traces:**
  ```text
  # Paste stack trace here
  ```
- **Logs:**
  ```text
  # Paste system/application logs here
  ```
- **Screenshots:** (Optional - drag and drop images here)

---

## Root Cause Analysis *(Optional)*
*For reporters who have investigated the codebase.*

- **Suspected Cause:** 
- **Relevant Files:** 
- **Relevant Code Paths:** 
- **Evidence Supporting This Theory:** 

---

## Impact Analysis
- **Who is affected?** 
- **Severity / Blockers:** 
- **Workarounds:** (Is there a temporary way to bypass this?)
- **Risk:** 

---

## Potential Fixes *(Optional)*
- **Possible Approach:** 
- **Trade-Offs:** 
- **Alternative Approaches:** 

---

## Additional Context
- **Related Issues:** #
- **Related Discussions:** #
- **Relevant Documentation:** 

---

## Checklist
- [ ] Reproduced the issue locally
- [ ] Searched existing open and closed issues for duplicates
- [ ] Included all environment details
- [ ] Included relevant logs/errors
- [ ] Included clear, step-by-step reproduction instructions
- [ ] Removed all sensitive information (passwords, auth tokens, API keys)

---

# Specialized Variants
*Depending on the issue type, copy and use one of these condensed structures:*

## Variant 1: Bug Report
```markdown
### Summary
[Brief description of the bug]

### Environment
- Version: 
- OS: 

### Steps To Reproduce
1. 
2. 

### Expected Behavior
[What should happen]

### Actual Behavior
[What happens]

### Evidence
[Logs, outputs, or screenshots]
```

## Variant 2: Feature Request
```markdown
### Problem
[What problem does this feature solve?]

### Motivation
[Why is this valuable? Who benefits?]

### Proposed Behavior
[Describe the new behavior or CLI command structure]

### Alternatives Considered
[Other ways this problem could be solved]

### Potential Risks
[Downsides, compatibility issues, or overhead]
```

## Variant 3: Documentation Issue
```markdown
### Current Documentation
[Link or description of the current docs]

### Problem
[What is incorrect, missing, outdated, or confusing?]

### Suggested Improvement
[How should the documentation be updated?]
```
