# Assumptions and Open Questions

## Assumptions

An assumption is a decision made without evidence, recorded so it can be falsified later.
Every assumption carries an owner and an **invalidation trigger** — the observation that
would prove it wrong. An assumption without a trigger is a belief, not an assumption.

```
AS-nn | Statement | Owner | Confidence (H/M/L) | Invalidation trigger | Impact if wrong | Requirements affected
```

| ID | Statement | Owner | Conf. | Invalidation trigger | Impact if wrong | Affects |
|---|---|---|---|---|---|---|
| AS-001 | The homepage is a meaningful entry point for a material share of sessions | TBD | L | D-8 shows homepage entry below a threshold to be agreed | Whole project premise weakens; effort should move to category/search surfaces | All |
| AS-002 | Repeat trade buyers mostly bypass the homepage via deep links, search and reorder | TBD | M | D-6 shows high homepage entry among logged-in B2B | Composition should weight trade tasks far more heavily | DEC-001 |
| AS-003 | Mobile is a majority of consumer-side sessions and a minority of trade sessions | TBD | L | D-8 device split contradicts | Responsive ordering strategy inverts | Composition |
| AS-004 | The AUD-1…AUD-7 segmentation is the correct model for this business | TBD | L | D-2 cannot attribute revenue to a segment, or D-5 reveals a missing/merged segment | Requirements written against segments that do not describe real buying behaviour | All audience requirements |
| AS-005 | RS-001 public figures (~50k products, 600+ sellers, 40–50+ brands) are approximately accurate | TBD | M | Magento catalogue counts diverge materially | Module feasibility assessments miscalibrated | Merchandising, category orientation |
| AS-006 | The stakeholder D-1 objective ranking is a working hypothesis, not a decision | TBD | L | D-1 answered by accountable stakeholder with a different ranking | Metric hierarchy, CTA hierarchy and module priority all built on a mis-stated objective | §2, §5.1, analytics |
| AS-007 | `/upcoming-home` is not a parallel redesign that supersedes this work | TBD | **Untested** | Internal confirmation that a separate homepage rebuild is in flight | Duplicated effort, or an FRS written against a homepage already being replaced | Project premise |
| AS-008 | The HTTP 520 to automated fetchers is bot mitigation or CDN edge policy, not a customer-facing fault | TBD | M | Manual browser access fails, or CrUX shows no field data | A live availability problem is unreported; CWV baseline contaminated | D-10, performance baseline |

## Open questions

An open question is a decision we have deliberately *not* made. It stays visible until closed.

```
OQ-nn | Question | Why it matters | Blocked by | Owner | Target date | Resolution
```

| ID | Question | Why it matters | Blocked by | Resolution |
|---|---|---|---|---|
| OQ-001 | Should the homepage show prices at all, given B2B/B2C price divergence and Indian MRP/GST display norms? | Determines whether product modules are viable above the fold and how they cache | D-14, D-19 | Open |
| OQ-002 | Is a hero carousel justified here, or is it inherited convention? | Carousels carry CLS/LCP cost and typically concentrate engagement in slide one | D-9, D-11 | Open |
| OQ-003 | Should stock and lead time appear on the homepage, given the marketplace's 600+ sellers? | High-value trade signal, but expensive to render accurately and hostile to full-page caching | D-4, D-14 | Open |
| OQ-004 | Does the homepage need to serve any procurement artefact (catalogue, price list, quote request) directly? | Would introduce a non-transactional conversion path alongside add-to-cart | D-1, D-5 | Open |
| OQ-005 | What is the legal accessibility obligation, if any, and what is the commercial one? | Determines whether WCAG 2.2 AA is a target or a hard requirement | D-19 | Open |
| OQ-006 | What is `/upcoming-home`? Is a homepage redesign already in flight elsewhere in the organisation? | If it is, this project may be duplicating or conflicting with work already underway — the premise and scope both change | Internal confirmation only | Open — **ask first, cheapest high-impact check available** |
