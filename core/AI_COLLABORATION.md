# AI Collaboration Guidelines

This document outlines the philosophy, principles, and practical workflows for collaborating effectively with AI coding assistants (e.g., Antigravity, Claude, Cursor, Copilot) within this repository.

---

## 1. The Collaboration Philosophy

AI coding assistants are force multipliers. The core philosophy of this repository is **Human-Steered, AI-Executed** development:
- **Humans** are responsible for high-level architecture, design decisions, security threat modeling, and overall code correctness.
- **AI** is responsible for boilerplate generation, refactoring chunks, writing unit tests, syntax lookup, and rapid implementation based on clear guidelines.

Always treat AI-generated code as a draft that requires rigorous review, testing, and validation before merging.

---

## 2. Core Collaboration Principles

### A. The Trust-But-Verify Model
Never merge code directly from an AI without understanding exactly how it works. 
- Run tests and linters on all AI-suggested changes.
- Look out for hallucinations, subtle logic bugs, and edge cases that the AI might have missed.

### B. Precise Context Isolation
AI performs best when given focused, isolated contexts.
- Avoid passing massive, unrelated files to the prompt context.
- Keep components small and modular to make it easier for AI to understand and modify them without side effects.

### C. Iterative Refinement
Instead of asking the AI to write a massive feature in one prompt, build it incrementally:
1. Propose and agree on the design and interface.
2. Implement the core logic.
3. Add tests and handle edge cases.
4. Refactor and optimize.

---

## 3. Best Practices for Prompts & Context

To get the highest quality output from AI assistants:
- **Define Roles & Context:** Clearly specify the role (e.g., *"Act as a Go systems programmer specializing in concurrency"*).
- **Supply Constraints:** Explicitly mention constraints (e.g., *"Do not use external dependencies"* or *"Follow the patterns in [GO.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/engineering/GO.md)"*).
- **Write Good Problem Descriptions:** Use markdown, clear lists, and input/output examples when describing a task.
- **Refer to Local Knowledge:** Use workspace paths and file links to point the AI to existing implementations that it should use as a reference.

---

## 4. Agent Guidelines

For autonomous agents (like Antigravity) running tasks in this workspace:
1. **Explore First:** Read existing files in [core/](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/core) and [engineering/](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/engineering) to align with code style and system architecture before writing new code.
2. **Minimize Footprint:** Edit only the lines necessary. Retain unrelated comments, imports, and documentation.
3. **Keep Files Updated:** Ensure [structure.txt](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/structure.txt) is updated if new files are created or deleted.
