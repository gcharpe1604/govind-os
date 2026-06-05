# Pull Request Description Template

> [!NOTE]
> **Purpose of a Pull Request Description:**
> A pull request description exists to reduce reviewer effort. Reviewers should understand what changed, why it changed, how it was tested, and what risks exist. The goal is to make the review process fast, accurate, and efficient, rather than describing every single line of code.

---

## Quick Summary
*One or two concise paragraphs describing the change.*

### Example
> This PR replaces abrupt process termination inside replication selection workflows with structured error propagation. Errors are now returned through command layers, allowing callers to handle failures consistently and improving overall testability.

---

## Problem
- **What issue exists?** 
- **Who is affected?** 
- **Current Behavior:** 
- **Desired Behavior:** 

---

## Root Cause
*Why does the problem occur?*

- **Relevant Files:** 
- **Relevant Execution Path:** 
- **Technical Explanation:** 

---

## Solution
- **Overview:** 
- **Design Decisions:** 
- **Trade-offs:** 
- **Expected Outcome:** 

---

## Scope
*Clearly define boundaries to prevent scope creep.*

### Included
- 

### Explicitly Not Included
- 

---

## Alternatives Considered *(Optional)*
*Show engineering alternatives you rejected.*

### Alternative 1: [Alternative Name]
- **Pros:** 
- **Cons:** 

---

## Changes Made
*Brief file-by-file summary of changes.*

### File A: `path/to/file_a.go`
- [Change 1]
- [Change 2]

### File B: `path/to/file_b.go`
- [Change 1]

---

## Testing

### Unit Tests
- [ ] Added new unit tests
- [ ] Updated existing unit tests
- [ ] Checked that all existing tests pass

### Integration Testing
*Describe integration testing results:*

### Manual Verification
1. [Step 1]
2. [Step 2]
3. [Step 3]

- **Result:** [Log output/behavior here]

---

## Risks & Compatibility
- **Backward Compatibility:** (e.g., Breaking, Non-Breaking)
- **Potential Risks:** 
- **Mitigations:** 

---

## Screenshots / Logs *(Optional)*
*Highly recommended for UI changes, CLI outputs, or log formatting changes.*

| Before | After |
| :--- | :--- |
| *[Insert screenshot/log here]* | *[Insert screenshot/log here]* |

---

## Related Issues
- **Fixes:** #
- **Related To:** #
- **Discussion:** #

---

## Reviewer Notes
- **Areas that deserve extra attention:** 
- **Known Limitations:** 
- **Questions for Reviewers:** 

---

## Checklist
- [ ] Problem understood
- [ ] Root cause validated
- [ ] Scope minimized (focused changes only)
- [ ] Tests added/updated
- [ ] Existing tests pass
- [ ] Documentation updated (if applicable)
- [ ] Self-review completed (no debugging/temporary lines)
- [ ] No unrelated changes included

---

# Variants

## Small PR Variant
*For tiny fixes, documentation updates, or minor dependencies. Copy and use only this segment:*

```markdown
### Summary
[One-sentence description of the fix]

### Changes
- **File path/to/file.go:** [Short change description]

### Testing
- [ ] Existing tests pass
- [ ] Manual verification done: [Describe step and success]
```

---

## Large PR Variant
*For major feature integrations, LFX, GSoC, SoB, or architectural refactors. Use the full template above.*
