# Decision Log

One record per decision. Decisions are immutable once accepted — supersede, never edit.

```
## DEC-nnn — <title>
Status:      Proposed | Accepted | Superseded by DEC-nnn | Rejected
Date:        
Decided by:  
Context:     The forces at play. What made this a decision rather than a default.
Options:     Each with consequences, not just names.
Decision:    
Consequences: Including the ones we dislike.
Revisit if:  The trigger that would reopen this.
```

---

## DEC-001 — Homepage composition model
**Status:** Proposed — blocked on D-6, D-12, D-14

**Context.** The seven audiences split into two incompatible interaction modes. Repeat trade
buyers (OEM, panel builder, contractor, dealer) are specification-driven and search-first:
they want part-number entry, reorder, stock and lead time, pricing terms, bulk enquiry.
Consumer-side visitors (end user, home buyer) and to a degree retailers are browse-first and
trust-first: they want orientation, guidance and credibility. A single fixed body ordered for
one mode is actively obstructive to the other.

**Options.**

1. **Fixed body, dominant-segment ordering with routing rails.**
   Simplest. Fully cacheable, no personalisation infrastructure, lowest risk, cheapest to
   maintain. Cost: the secondary segment is served a homepage optimised against their needs
   and must self-rescue via navigation or search.

2. **Explicit self-selection** ("I'm a contractor" / "I'm shopping for my home").
   Cheap to build, cacheable, transparent to crawlers. Cost: inserts a click before any value
   is delivered, and self-selection interfaces have a poor engagement record generally — this
   must be checked against evidence before adoption, not assumed either way.

3. **State-aware adaptation** (logged-in status, account type, returning behaviour).
   Best fit to the actual audience split. Cost: pulls in Magento full-page-cache
   hole-punching, ESI/Varnish or private-content blocks, cache-key complexity, a heavier
   test matrix, and a question about what the crawler is served versus the visitor.

**Decision.** *Pending.*

**Revisit if:** the B2B/B2C mix shifts materially, or logged-in entry share changes.

---

## DEC-002 — Frontend implementation approach
**Status:** Proposed — blocked on D-12, D-13

Luma vs Hyvä vs custom theme vs PWA Studio determines the performance ceiling, the component
model, and whether Page Builder is a viable authoring surface for this content. Deferred.
