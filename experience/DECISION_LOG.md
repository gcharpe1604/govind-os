# Decision Log

Record only consequential decisions whose outcome should be reviewed. Current repository evidence overrides this history.

## Entry Schema

- **Date / review trigger:**
- **Problem and constraints:**
- **Options and trade-offs:**
- **Decision and reversibility:**
- **Expected measurable outcome:**
- **Actual outcome / lesson:**

## DECISION-001: Implement Harbor CLI garbage collection

- **Date:** 2026-06-22
- **Decision:** Implement a native `gc` command group covering history, log, schedule, stop, trigger, and schedule updates.
- **Options:** Full administrative workflow, or only manual trigger and history.
- **Reasoning:** Prior notes say the Web UI exposed the workflow and the pinned Go client already provided the GC API. Re-verify this against the current repository.
- **Reversibility:** Reversible feature work.
- **Opportunity cost:** Deferred Job Service or Distribution work.
- **Expected outcome:** Users can manage garbage collection from the CLI.
- **Review trigger:** After the relevant Harbor CLI work or if SDK/repository direction changes.
- **Outcome:** Not recorded.
