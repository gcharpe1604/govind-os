# Proven Lessons

Load a lesson only when its trigger matches. These entries preserve historical provenance; re-check current code, versions, and repository rules before acting.

## LESSON-001: Keep upstream changes focused

- **Trigger:** Planning an upstream pull request.
- **Context:** Harbor CLI contribution history.
- **Failure:** A multi-purpose change created extra review cycles.
- **Cause:** Reviewers had to reason about unrelated behavior together.
- **Rule:** Keep one user-visible purpose per pull request; split unrelated refactors.
- **Evidence:** Migrated from the Harbor/LFX notes during the 2026-07-15 audit; original PR links were not retained.
- **Applicability:** Default, unless an atomic change cannot safely be divided.

## LESSON-002: Inspect existing SDK capability before adding wrappers

- **Trigger:** A CLI or adapter appears to lack a feature exposed elsewhere.
- **Context:** Harbor CLI garbage-collection discovery.
- **Failure:** A custom design could duplicate an existing client package.
- **Cause:** Command-layer parity lagged behind the SDK.
- **Rule:** Inspect dependency versions, packages, models, and real APIs before designing a new wrapper.
- **Evidence:** Prior notes record `go list` and `go doc` finding the Harbor `client/gc` package; re-run against the current dependency.
- **Applicability:** SDK-backed tools; not proof that the existing API fits current requirements.

## LESSON-003: Keep the agent kernel tool- and stack-neutral

- **Trigger:** Adding global instructions for one language, framework, or agent.
- **Context:** Govind OS restructuring.
- **Failure:** Go/CNCF details polluted unrelated task context.
- **Cause:** Domain guidance was placed in the mandatory layer.
- **Rule:** Keep universal behavior in the kernel; obtain stack details from the target repository and current official sources.
- **Evidence:** The 2026-07-15 corpus audit found the same rules repeated across tool and engineering handbooks.
- **Applicability:** Global agent policy; project-local instructions still win.

## LESSON-004: Separate CLI declarations from execution logic

- **Trigger:** A CLI handler is difficult to test without the full command runtime.
- **Context:** Harbor CLI Cobra command notes.
- **Failure:** Rendering and business logic inside `RunE` required broad test setup.
- **Cause:** Framework declaration and execution behavior were coupled.
- **Rule:** Delegate to testable functions or services with explicit inputs and writers when consistent with project architecture.
- **Evidence:** Migrated from `LFX_LESSONS_2026.md`; no source link was retained.
- **Applicability:** Command frameworks with thin-handler conventions; do not refactor unrelated code solely for purity.

## LESSON-005: Use platform path APIs

- **Trigger:** Code creates temporary, cache, or configuration paths.
- **Context:** Cross-platform CLI work.
- **Failure:** A hard-coded Unix temporary path failed portability.
- **Cause:** Environment-specific filesystem assumptions.
- **Rule:** Use language/platform path APIs and test supported operating systems.
- **Evidence:** Migrated from the LFX notes; confirm the target project's supported platforms.
- **Applicability:** Cross-platform software, with project-specific overrides where required.
