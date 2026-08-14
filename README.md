# Eleczo — Homepage Body Rebuild

Working repository for the redesign and rebuild of the **homepage body** of
[eleczo.com](https://www.eleczo.com) — the B2B/B2C electrical products platform of
Mohan Exim India Pvt Ltd, running on Magento.

## Scope

**In scope:** everything between the global header and the global footer on the homepage —
composition, content modules, copy, visual design, frontend implementation, Magento
integration, performance, accessibility, SEO, and analytics instrumentation for that region.

**Out of scope:** global header, primary navigation, mega-menu, footer, and wider site
architecture. Changes required in those areas are logged as dependencies, not delivered here.

## Current stage

**Stage 1 — Functional Requirements Specification (FRS).**
The project is in **Discovery**. No design, copy, or code work may begin.

```
Discovery → Baseline & Success Definition → Research → Analysis
   → Requirements → FRS Draft → Critical Review → Final FRS → APPROVAL GATE
   → Design → Build → QA → Release
```

The **approval gate** is hard. See `docs/03-approval-gate.md`. Agents defined in `agents/`
are blocked from producing design or code artefacts until the gate is signed.

## Repository map

| Path | Purpose |
|---|---|
| `docs/00-project-charter.md` | Scope, stakeholders, ways of working |
| `docs/01-discovery-register.md` | Discovery questions D-1…D-19 and their answers |
| `docs/02-frs-homepage-body.md` | The FRS itself (skeleton until Discovery closes) |
| `docs/03-approval-gate.md` | What must be true before build begins |
| `docs/04-decision-log.md` | Architectural/product decisions, ADR format |
| `docs/05-assumptions-open-questions.md` | Assumptions register and unresolved questions |
| `docs/06-research-log.md` | Evidence gathered, with sources and how it was used |
| `docs/07-glossary.md` | Domain terms — electrical trade and platform |
| `docs/08-discovery-status-report.md` | Discovery status: confirmed vs unknown, assumptions, stakeholder questions, next steps |
| `agents/` | Role definitions for each AI agent and the handoff contract |
| `standards/` | Binding standards: performance, accessibility, SEO, Magento, analytics, DoD |
| `.github/` | PR and issue templates, CI |

## Traceability

Every artefact in this repository traces to a requirement ID. Nothing gets built that
does not carry an ID; no ID exists without a rationale, a priority, and acceptance criteria.

```
D-nn   Discovery question
RQ-nn  Requirement (in FRS)
DEC-nn Decision (decision log)
AS-nn  Assumption
OQ-nn  Open question
RS-nn  Research finding
```

## Status

| Item | Status |
|---|---|
| Discovery | **Open** — 19 questions issued, 0 answered |
| Discovery status report | Issued 2026-08-14 — see `docs/08-discovery-status-report.md` |
| Blocking items | **8, not 6** — D-1, D-2, D-5, D-6, D-8, D-12, D-14, D-18 (D-6 and D-18 are transitively blocking) |
| Baseline data | **Blocked** — awaiting analytics access (ACC-3, D-8) |
| Platform facts | **Blocked** — Magento version/edition unknown (D-12) |
| Evidence level | Nothing yet rests on evidence levels 1–4; all substantive items sit at level 5–8 |
| FRS | Skeleton only |
| Approval | Not sought — no approver named (D-18) |
