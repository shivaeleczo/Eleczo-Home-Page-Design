# FRS — Eleczo Homepage Body

**Status: SKELETON.** Structure agreed; content blocked on Discovery.
**Version:** 0.1 (pre-draft) · **Owner:** *TBD (D-18)*

> Nothing in this document may be marked *Confirmed* while a blocking Discovery item it
> depends on remains open. Requirements written ahead of evidence are assumptions wearing
> a requirement's clothing.

---

## 1. Purpose and scope
*See `00-project-charter.md`. Restated here at draft stage.*

## 2. Success definition and baseline
**Blocked on D-1, D-2, D-8.**

| Metric | Baseline | Target | Segment | Measurement source |
|---|---|---|---|---|
| *TBD* | | | | |

## 3. Audience model
**Blocked on D-2, D-5, D-6, D-7.** Per-segment: entry context, task, decision inputs,
failure modes, and what the homepage body must do for them.

## 4. The composition decision
**Blocked on D-6, D-12, D-14. Logged as DEC-001 in `04-decision-log.md`.**

Is the homepage body a fixed composition, a self-selection interface, or state-adaptive?
This is settled *before* module-level requirements, because it changes the caching
architecture, the SEO surface, and every module's specification.

## 5. Requirements

Each requirement uses the block below. No exceptions, no shorthand entries.

```
### RQ-nnn — <short name>
Register:      Confirmed | Assumption | Recommendation | Open question
Priority:      Must | Should | Could | Won't (this release)
Audiences:     AUD-n, …
Rationale:     Why this exists. Evidence reference (RS-nn / D-nn) or explicit absence of evidence.
Dependencies:  RQ-nnn, DEC-nnn, external systems, out-of-scope areas
Acceptance criteria
  Launch-verifiable:  deterministic, testable on release day
  Outcome:            metric, baseline, target, measurement window (may be empty)
Non-functional:  performance / a11y / SEO / analytics / maintainability implications
Risks:          what breaks if this is wrong
```

### 5.1 Composition and ordering
*Empty pending §4.*

### 5.2 Content modules
*Empty pending Discovery. Each candidate module — including conventional ones — must be
justified against this site's own data or logged as an open question. Candidates carried
forward for evaluation, not for inclusion:*

- Hero / promotional region
- Search and part-number entry
- Category orientation
- Brand access
- Segment routing (trade vs consumer)
- Reorder / account-state module
- Stock, lead-time and fulfilment signalling
- Bulk enquiry / quotation path
- Trust and credibility signals
- Guidance and educational content
- SEO content region

### 5.3 Cross-cutting requirements
*Performance, accessibility, SEO, analytics, maintainability, Magento feasibility.
Sourced from `standards/` and restated here as numbered requirements with acceptance criteria.*

## 6. Traceability matrix
| RQ | Register | Priority | Audiences | Evidence | Depends on | Verifies via |
|---|---|---|---|---|---|---|

## 7. Assumptions, open questions, out of scope
*Cross-reference `05-assumptions-open-questions.md`. Not duplicated here.*

## 8. Critical review
**Required before Final.** Multi-perspective self-critique — see `standards/definition-of-done.md`.
Reviewer perspectives: procurement buyer, first-time consumer, SEO, performance,
accessibility, Magento engineer, content maintainer, commercial owner.
