# Definition of Done

## Per requirement
- Has ID, register, priority, audiences, rationale, dependencies
- Launch-verifiable acceptance criteria are deterministic and testable
- Outcome criteria (where present) have metric, baseline, target and measurement window
- Verified by `qa-accessibility` with evidence
- Traceability matrix updated

## Per stage
- Outputs exist and are cross-referenced
- Every unknown surfaced is recorded as `OQ-nn`, `AS-nn`, or a research task — never dropped
- Handoff envelope complete, including the gap fields
- Orchestrator has recorded the stage transition

## Critical review — mandatory before Final FRS

Not a proofread. Each perspective below examines the FRS and records findings. A review that
produces no findings has not been performed.

| Perspective | The question it asks |
|---|---|
| Procurement buyer (OEM/panel builder) | Can I get to a part number, a price and a quantity fast? What wastes my time? |
| First-time consumer / home buyer | Do I understand what this site sells and whether it is for me? |
| Dealer / retailer | Does this serve resale buying, or only end-use buying? |
| SEO | What ranks, what is invisible, what claim is a liability? |
| Performance | What does this cost at p75 on a mid-range Android in India? |
| Accessibility | Which states were never designed, and who does that exclude? |
| Magento engineer | What here defeats the cache, breaks on upgrade, or cannot be maintained? |
| Content maintainer | Can I update this on a Tuesday without a developer? |
| Commercial owner | Which of these requirements would I cut, and would I miss it? |
| Adversarial reader | Which requirement is unfalsifiable, which rationale is circular, which "confirmed" item is actually an assumption? |

The last row is the one that finds real problems. Run it last, run it honestly, and record
what it finds even when the finding is inconvenient.

## Per release
- All Must criteria pass
- Accessibility audit complete including manual testing
- Performance verified in lab and, where available, field
- Analytics events verified firing with correct payloads
- Rollback path documented
- Deviations from spec recorded with reasons
