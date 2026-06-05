# DevOps & Infrastructure Playbook

> [!NOTE]
> **Purpose of this Document:**
> This document captures durable DevOps principles, operational lessons, and infrastructure patterns learned through real-world engineering work. It is not intended to be a generic DevOps tutorial. The goal is to accumulate battle-tested knowledge from operating, deploying, monitoring, and maintaining software systems.

---

## What DevOps Means
DevOps is the practice of reducing the distance between software development and software operations. The objective is not tooling; the objective is:
- Faster delivery
- Higher reliability
- Better observability
- Lower operational overhead
- Safer deployments

*Tools change. Principles compound.*

---

## Core Principles

### 1. Automation Over Manual Work
If a task is performed repeatedly, automate it. Manual processes create inconsistency, increase human error, and scale poorly.
- *Examples:* CI/CD pipelines, automated testing, infrastructure provisioning, and release workflows.

### 2. Infrastructure As Code (IaC)
Infrastructure should be version-controlled, reproducible, and reviewable. 
- *Benefits:* Repeatability, auditing, rollbacks, and collaboration.
- *Examples:* Terraform configs, Kubernetes manifests, Helm charts, and GitHub Actions workflows.

### 3. Observability Before Optimization
Do not optimize what you cannot measure. Establish visibility before attempting performance improvements.
- *Key Signals:* Logs, metrics, traces, and alerts.
- *Core Questions:* What happened? Why did it happen? How often does it happen? How severe is it?

### 4. Reproducibility
Systems should be reproducible across developer local environments, CI environments, staging, and production. If an environment cannot be reproduced, it cannot be trusted.

### 5. Incremental Change
Small changes reduce risk. Prefer small deployments, small PRs, small database migrations, and small rollouts. Large changes increase failure probability and complicate debugging.

### 6. Security By Default
Security should be built into systems rather than added later.
- *Key areas:* Least privilege, secret management, dependency scanning, supply chain security, and access controls.

### 7. Reliability Over Heroics
Systems should not depend on exceptional individuals. The goal is to build systems that:
- Are easy to operate
- Are easy to recover
- Are easy to understand

*A reliable process beats a heroic engineer.*

### 8. Failure Is Normal
Failures are inevitable. The goal is not eliminating failure; the goal is to detect quickly, recover quickly, and learn systematically.
- *Post-incident questions:* What happened? Why did it happen? How can recurrence be prevented?

### 9. Runbooks Before Incidents
Document common operational procedures before failures occur.
- *Examples:* Deployment rollback, service restart, database recovery, certificate renewal.

*Documentation written during calm periods is more reliable than documentation written during incidents.*

---

## DevOps Domains
*Areas of study and future experience accumulation:*

- **CI/CD:** GitHub Actions, GitLab CI, Jenkins, Release Automation.
- **Containers:** Docker, OCI Images, Container Registries.
- **Orchestration:** Kubernetes, Helm.
- **Infrastructure:** Terraform, Cloud Platforms, Networking.
- **Observability:** Prometheus, Grafana, OpenTelemetry.
- **Reliability:** Incident Response, Postmortems, SLOs, SLIs, Error Budgets.
- **Security:** Secrets Management, Supply Chain Security, Vulnerability Scanning.

---

## Common Failure Modes
- **Tool Obsession:** Focusing on tools instead of operational outcomes.
- **Manual Deployments:** Processes that only work when a specific person is available.
- **Monitoring Without Alerts:** Collecting metrics without actionable signals.
- **Alert Fatigue:** Too many alerts causing important alerts to be ignored.
- **Configuration Drift:** Environments slowly diverging from one another over time.
- **Premature Complexity:** Introducing Kubernetes, service meshes, or complex infrastructure before they are actually needed.

---

## Lessons Learned

### Lesson Template
```markdown
### DEVOPS-XXX: [Lesson Title]
- **Source:** (Harbor / LFX / Book / Project / Internship / Interview / etc.)
- **Confidence:** (Hypothesis / Likely True / Repeatedly Verified)
- **Context:** 
- **Lesson:** 
- **Future Application:** 
```

### DEVOPS-001: Automate Before Scaling Complexity
- **Source:** Personal Engineering Principle
- **Confidence:** Repeatedly Verified
- **Context:** Engineering systems become harder to operate as complexity grows.
- **Lesson:** Automate repetitive work before scaling the system.
- **Future Application:** Prioritize CI/CD, testing, and infrastructure automation before increasing system complexity.

---

## References
- [engineering/KUBERNETES.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/engineering/KUBERNETES.md)
- [engineering/CLOUD_NATIVE.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/engineering/CLOUD_NATIVE.md)
- [engineering/DISTRIBUTED_SYSTEMS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/engineering/DISTRIBUTED_SYSTEMS.md)
- [experience/LESSONS.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/experience/LESSONS.md)
- [open-source/LFX_LESSONS_2026.md](file:///c:/Users/govin/OneDrive/Desktop/opensrc/govind-os/open-source/LFX_LESSONS_2026.md)

---

## Evolution Rule
This document should grow only through real experience. Repeated experience creates principles; principles create playbooks; playbooks create leverage.
