# Debugging Playbook

> [!NOTE]
> **Purpose of this Document:**
> This document captures durable debugging principles, workflows, lessons, and investigation techniques learned through real engineering work. It is not intended to be a collection of language-specific debugging tricks. The goal is to develop systematic debugging skills that transfer across repositories, languages, frameworks, and systems.

---

## What Debugging Means
Debugging is the process of reducing uncertainty until the root cause of a problem is identified and verified. The objective is not fixing symptoms; the objective is understanding why the system behaves differently from expectations.

---

## Debugging Mindset
The purpose of debugging is not proving yourself correct; the purpose is discovering the truth.
During investigation:
- Be willing to abandon theories.
- Prefer evidence over intuition.
- Seek disconfirming evidence.
- Update beliefs as new information appears.

*A wrong hypothesis that is discarded quickly is progress. A wrong hypothesis that is defended despite evidence is a liability.*

---

## Core Principles

### 1. Reproduce First
If a problem cannot be reproduced, it cannot be reliably understood. Before changing code, reproduce the issue, document reproduction steps, and verify consistency.

```
Reproduce  ⟶  Understand  ⟶  Fix
```

*Avoid guessing, making changes, and hoping.*

### 2. Evidence Over Assumptions
Prioritize logs, stack traces, test failures, metrics, profiling data, and reproduction steps. Avoid assumption-driven debugging. The system is usually telling you what is wrong; learn to listen.

### 3. Symptoms Are Not Root Causes
Observed failures (such as panics, timeouts, failed tests, and missing output) are downstream effects. Do not treat symptoms as root causes; identify the underlying trigger.

### 4. One Change At A Time
When investigating, change exactly one variable, observe the result, and record your findings. Multiple simultaneous changes reduce confidence in your conclusions.

### 5. Understand Before Fixing
A fix without understanding is a gamble. Before implementing a solution, be able to explain why the issue occurs, why the proposed fix works, and why alternative explanations are incorrect.

### 6. Verify The Fix
A bug is not fixed simply because the error message disappeared. A bug is fixed when the root cause is addressed, the reproduction steps no longer trigger the failure, regressions have been checked, and validation has been completed.

---

## Debugging Hierarchy
Investigate in the following order:

```
Configuration  ⟶  Inputs  ⟶  Environment  ⟶  Dependencies  ⟶  Business Logic  ⟶  Architecture
```

Many bugs are caused by incorrect configuration, missing environment variables, dependency mismatches, or invalid inputs before they are caused by flawed architecture. Check simple explanations first. This saves enormous amounts of time in real projects.

---

## Debugging Workflow

### Step 1: Define The Problem
Clarify:
- What happened?
- What was expected?
- What actually occurred?
- When did the issue begin?

### Step 2: Reproduce
Determine:
- Can it be reproduced consistently?
- Under what conditions?
- What inputs trigger it?

*Create the smallest reproducible case possible.*

### Step 3: Gather Evidence
Collect logs, errors, stack traces, metrics, and relevant outputs. Do not begin writing code or changing files yet.

### Step 4: Generate Hypotheses
Create multiple explanations. Avoid falling in love with the first theory. Ask:
- What could explain this behavior?
- What assumptions am I making?
- What evidence contradicts my theory?

### Step 5: Test Hypotheses
Design experiments where each test reduces uncertainty.

```
Hypothesis  ⟶  Experiment  ⟶  Result  ⟶  Updated Understanding
```

### Step 6: Identify Root Cause
A root cause should explain all observed behavior, match available evidence, and survive validation.

### Step 7: Implement Fix
Prefer minimal, targeted, and well-understood fixes. Avoid broad, sweeping rewrites.

### Step 8: Validate
Verify the original issue is resolved, no regressions are introduced, all tests pass, and behavior matches expectations.

---

## Common Debugging Failure Modes
- **Fixing Before Understanding:** Implementing solutions before identifying the root cause.
- **Confirmation Bias:** Searching only for evidence that supports the first theory. Actively seek contradictory evidence.
- **Shotgun Debugging:** Making many changes simultaneously. This destroys useful feedback loops.
- **Log Blindness:** Ignoring logs, traces, or error messages when the system is providing valuable clues.
- **Reproduction Neglect:** Attempting fixes without a reliable reproduction setup.
- **Premature Refactoring:** Rewriting code blocks instead of understanding the underlying issue.
- **Treating Symptoms:** Removing visible failures while leaving root causes untouched.

---

## Investigation Techniques

### Binary Search Debugging
Reduce the search space rapidly by isolating system segments:

```
System  ⟶  Subsystem  ⟶  Component  ⟶  Function  ⟶  Root Cause
```

### Input Isolation
Determine which inputs matter and which do not. Remove variables whenever possible.

### State Inspection
Inspect variables, configurations, runtime state, and environment parameters. Unexpected state is often the source of bugs.

### Historical Analysis
Ask when the issue started, what changed, and what was working previously. Recent commits or dependencies are common starting points.

### Existing Knowledge Search
Before deep investigation, search existing issues (open and closed), pull request discussions, documentation, and commit history. Avoid rediscovering known problems.

---

## Open Source Debugging
When debugging unfamiliar repositories:
- **Understand Architecture First:** Avoid jumping directly into files. Understand entry points, execution flows, and major components first.
- **Read Existing Tests:** Tests often explain intended behavior better than documentation.
- **Follow Existing Patterns:** A significant amount of debugging comes from understanding how the repository expects systems to work.

---

## Lessons Learned

### Lesson Template
```markdown
### DEBUG-XXX: [Lesson Title]
- **Source:** (Harbor / LFX / Book / Project / Internship / Interview / etc.)
- **Confidence:** (Hypothesis / Likely True / Repeatedly Verified)
- **Context:** 
- **Symptom:** 
- **Root Cause:** 
- **Investigation Process:** 
- **Fix:** 
- **Lesson:** 
- **Future Application:** 
```

---

## References
- [core/ENGINEERING_PRINCIPLES.md](ENGINEERING_PRINCIPLES.md)
- [engineering/DEVOPS.md](../engineering/DEVOPS.md)
- [experience/LESSONS.md](../experience/LESSONS.md)
- [open-source/LFX_LESSONS_2026.md](../open-source/LFX_LESSONS_2026.md)

---

## Evolution Rule
This document should grow through real debugging experience. Document root causes, investigation strategies, repeated patterns, and durable lessons. Avoid documenting one-off fixes. The goal is not to remember individual bugs, but to improve debugging ability.
