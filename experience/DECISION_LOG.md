# Decision Log

## Purpose
The purpose of this log is to record major decisions (architectural, tooling, program applications, and career directions) in real time. This acts as a feedback mechanism to analyze decision accuracy over months and years, eliminating hindsight bias.

---

## Decision Framework
Use the following structured criteria to make major decisions:
1. **Identify the Core Problem:** What is the underlying constraint or driver?
2. **Brainstorm Options:** List at least 2-3 viable alternatives.
3. **Map the Tradeoffs:** Note performance, complexity, speed, and learning value.
4. **Define Reversibility:** Is this a Type 1 (irreversible) or Type 2 (easily reversible) decision?
5. **Set Review Triggers:** Define exactly when and how the success of the decision will be evaluated.

---

## Major Decisions

### Decision Entry Template
- **Date:** YYYY-MM-DD
- **Decision:** 
- **Decision Type:** (Career / Open Source / Learning / Tooling / Project / Financial)
- **Reversibility:** (Type 1 / Type 2)
- **Options Considered:**
  1. Option A: ...
  2. Option B: ...
- **Reasoning:** 
- **Opportunity Cost:** (What am I NOT doing because of this decision?)
- **Expected Outcome:** 
- **Confidence:** (e.g., Low, Medium, High)
- **Review Date:** YYYY-MM-DD

### Outcome Review Template
- **Actual Outcome:** 
- **Was Decision Correct?** (Yes / No / Too Early to Tell)
- **What Was Missed?** 
- **What Was Learned?** 
- **Future Adjustment:** 

### DECISION-001: Implementation of Garbage Collection (GC) in Harbor CLI
- **Date:** 2026-06-22
- **Decision:** Implement a complete, native `gc` subcommand group in Harbor CLI (including history, log, schedule, stop, trigger, and update-schedule).
- **Decision Type:** Open Source / Project
- **Reversibility:** Type 2 (Reversible)
- **Options Considered:**
  1. Option A: Implement GC as a standalone, feature-complete subcommand group (history, log, schedule, stop, trigger, update-schedule).
  2. Option B: Implement only manual trigger and history to minimize CLI surface.
- **Reasoning:** Harbor CLI aims for WebUI feature parity (where GC is a key administrative dashboard element). The `go-client` SDK already provides a robust, complete API client for `gc`. Implementing it fully ensures a complete administrative workflow in the CLI.
- **Opportunity Cost:** Deferring other dashboards like Job Service or Distribution.
- **Expected Outcome:** Users can fully manage Garbage Collection, trigger runs, view logs, and configure cron schedules directly from their terminals.
- **Confidence:** High
- **Review Date:** 2026-07-22

---

## Quarterly Reviews
*[EMPTY — TO BE POPULATED] Consolidated logs summarizing the state of decisions and outcomes each quarter.*

---

## Decision Accuracy Analysis
*[EMPTY — TO BE POPULATED] A high-level view tracking percentage of correct/incorrect decisions and key reasons (e.g., overconfidence, lack of information).*

---

## Lessons
*[EMPTY — TO BE POPULATED] Decisional lessons learned from retro reviews.*
