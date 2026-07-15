# Engineering OS

Entry point for systems engineering, backend development, infrastructure, and technical deep-dives in Govind-OS.

---

# Purpose

Engineering OS answers three questions:

1. **Building backend systems?** → Route by domain below.
2. **Designing architecture?** → `SYSTEM_DESIGN.md` + `DISTRIBUTED_SYSTEMS.md`
3. **Setting up infrastructure?** → `DEVOPS.md` + `CLOUD_NATIVE.md`

---

# Routing

| Task | Load |
|---|---|
| Backend / API / Go server development | `engineering/BACKEND.md` |
| System design / architecture | `engineering/SYSTEM_DESIGN.md` |
| Distributed systems / consensus / queues | `engineering/DISTRIBUTED_SYSTEMS.md` |
| Kubernetes / operators / cluster config | `engineering/KUBERNETES.md` |
| Database design / PostgreSQL / queries | `engineering/POSTGRESQL.md` |
| Cloud native / OCI / container registries | `engineering/CLOUD_NATIVE.md` |
| CI/CD / Docker / pipelines / infrastructure | `engineering/DEVOPS.md` |
| Language-agnostic patterns / cross-language design | `engineering/LANGUAGE_AGNOSTIC_ENGINEERING.md` |
| Multi-domain engineering task | Load the primary document first. Add supporting documents only when necessary. |

---

# Core Engineering Principles

→ See [core/ENGINEERING_PRINCIPLES.md](../core/ENGINEERING_PRINCIPLES.md) for the full principles constitution.

**Reliability before scale.**
Ensure systems work correctly under standard loads before designing for massive scale.

**Simplicity before sophistication.**
Simple architectures are easier to maintain, debug, and scale.

**Measure before optimizing.**
Use profiles, benchmarks, and metrics to identify real bottlenecks.

**Design for failure.**
Assume systems will fail and design graceful degradation mechanisms.

---

# Success Criteria

Engineering OS succeeds when:

- Agents route to the correct engineering document without guessing.
- Engineering tasks load only domain-relevant context.
- Technical decisions reference existing patterns before creating new abstractions.
- System design follows evidence-based constraints, not theoretical ideals.
