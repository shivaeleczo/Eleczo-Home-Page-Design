# Discovery Status Report

**Date:** 2026-08-14 · **Stage:** 1 — Discovery · **Gate status:** CLOSED
**Input:** *Eleczo Stage 1 — Discovery Inputs & Decision Register* (stakeholder document, received 2026-08-14)
**This is not the FRS.** Per the governing instruction, the FRS is not produced until the
critical discovery issues are resolved or explicitly recorded as assumptions/open decisions.

---

## Headline finding

The stakeholder input supplied **statuses and working positions — it did not supply answers.**
Every one of the six blocking Discovery items remains open. The document's own instruction is
explicit on this point: *"Do not assume that an unanswered question has a positive, negative,
or default answer."*

Measured against the project's evidence hierarchy:

> **No item in this project currently rests on evidence levels 1–4** (confirmed business data,
> customer evidence, analytics evidence, sales/support evidence). Everything substantive sits at
> **level 5–6** (industry / e-commerce pattern research) or **level 7–8** (expert recommendation,
> assumption).

That is the single fact that governs what can and cannot be written next.

Two structural defects in the current register are recorded in §3.2 and §11. They are recorded
as recommendations to the approver, not applied — the gate permits waiver and reclassification
only in writing by the named approver.

---

## 1. Confirmed Information

Confirmed means **established and not subject to revision by discovery**. Almost everything in
this section is *governance* fact — decided by the project's own charter — rather than *market*
fact. That distinction matters: no fact about Eleczo's customers, revenue, or platform is
confirmed at this date.

### 1.1 Scope and governance (confirmed — project-internal)

| # | Statement | Source | Note |
|---|---|---|---|
| C-1 | Scope is the homepage **body** — the region between global header and global footer | Charter §3 | Edge cases unresolved — see D-17 |
| C-2 | Header, primary nav, mega-menu, footer, category/PDP/cart/checkout/account are **out of scope**; dependencies are logged, not absorbed | Charter §3 | |
| C-3 | Seven audiences (AUD-1…AUD-7) are named in governing scope and each must be explicitly accounted for in the FRS | Charter §2 | Their behaviour and priority are **unvalidated** |
| C-4 | Designing for an averaged composite of the seven is prohibited | Charter §2 | |
| C-5 | Six treatments are **requirements, not later concerns**: Magento feasibility, performance (CWV field data), accessibility (WCAG 2.2 AA target), analytics, SEO, editorial maintainability | Charter §4, `standards/` | Legal basis of the a11y target is open (OQ-005) |
| C-6 | Four registers stay separate: confirmed / assumption / recommendation / open question | Charter §5.3 | |
| C-7 | Two-tier acceptance criteria; sign-off blocks only on launch-verifiable criteria | Charter §5.5 | |
| C-8 | Conventional patterns (carousel, brand strip, testimonials, tile grid, newsletter) are **candidates, not defaults** | Charter §5.2 | |
| C-9 | The approval gate is CLOSED; all eight conditions G-1…G-8 are unmet | `03-approval-gate.md` | |
| C-10 | Blocked until the gate opens: UI design, graphic design, final copy, frontend code, Magento code, any visual-direction commitment | `03-approval-gate.md` | Restated in the stakeholder document's *Important Boundary* |
| C-11 | Silent waiver is unavailable to any agent; waiver requires the named approver, in writing, converted to an AS-nn with an invalidation trigger | `03-approval-gate.md` | |

### 1.2 Reported but not verified (evidence level 5–6)

These come from public sources in RS-001 at **Medium** confidence — marketing and self-reported
figures, no internal verification. They are usable as *context*, never as a basis for a requirement.

| # | Statement | Confidence | What would confirm it |
|---|---|---|---|
| R-1 | Eleczo is the electrical e-commerce platform of Mohan Exim India Pvt Ltd, serving B2B and B2C | Medium | Internal confirmation — trivial |
| R-2 | ~40–50+ brands, ~50,000 products, 600+ certified sellers | Medium | Magento catalogue counts — trivial |
| R-3 | Categories: switchgear, circuit breakers, wires & cables, sockets, contactors, control gear, distribution boards, lighting | Medium | Magento category tree |
| R-4 | Named brands include Havells, Siemens, Schneider Electric, L&T, Socomec | Medium | Internal confirmation |
| R-5 | Listings carry dense technical specification (pole count, kA breaking capacity, trip unit type, current rating) — consistent with specification-driven demand | Medium | Direct site/staging audit |
| R-6 | Platform is Magento | **High (family only)** | Version and edition unknown — D-12 |
| R-7 | An `/upcoming-home` URL exists on the domain, suggesting redesign work already partly in flight | Medium | **See OQ-006 — this needs an answer** |

**R-5 is the most decision-relevant of these.** Dense specification data is a genuine signal that
a material share of demand is specification-driven rather than browse-driven, which bears directly
on DEC-001. But it is an inference from page structure, not from behaviour — it tells us what the
catalogue contains, not how customers use it. It cannot substitute for D-8.

**R-7 is the most urgent.** If a homepage redesign is already in flight elsewhere in the
organisation, this project may be duplicating or conflicting with it. Logged as **OQ-006**.

---

## 2. Unknown Information

All nineteen register items are unanswered. The stakeholder document assigned statuses to six of
them and left the rest untouched.

### 2.1 Blocking items — status per stakeholder input

| ID | Question | Status given | Classification |
|---|---|---|---|
| D-1 | What is the homepage commercially accountable for? Ranked. | Open — stakeholder decision required | **Open stakeholder decision** |
| D-2 | Revenue split: B2B vs B2C, and across AUD-1…AUD-7 | Unknown | **Data required** (internal) |
| D-5 | What audience evidence exists? | Open — stakeholder input required | **Open stakeholder decision** |
| D-8 | Analytics export, 6–12 months | Outstanding — analytics access required | **Data required** (access) |
| D-12 | Magento version and edition | Not verified | **Technical validation required** |
| D-14 | Caching architecture and personalisation infrastructure | Not verified | **Technical validation required** |

### 2.2 Remaining items — no status supplied

| ID | Question | Classification |
|---|---|---|
| D-3 | Intent to shift the B2B/B2C mix? Serve target state or current? | Open stakeholder decision |
| D-4 | Does the 600+ seller marketplace model require merchandising sellers? Contractual placement obligations? | Open stakeholder decision |
| D-6 | Share of repeat B2B buyers arriving logged in; entry via homepage or deep link | **Data required** — see §3.2, transitively blocking |
| D-7 | Purchase trigger per segment | Research / stakeholder input |
| D-9 | Current module inventory + per-module performance | Data required |
| D-10 | Current Core Web Vitals field data | **Research required — independently obtainable, see §7.1** |
| D-11 | Prior A/B tests and results | Data required |
| D-13 | Frontend stack (Luma / Hyvä / custom / PWA Studio); Page Builder in use? | Technical validation required |
| D-15 | Who maintains homepage content day to day, and with what skill? | Open stakeholder decision |
| D-16 | Analytics/tag stack (GA4, GTM, other) | Technical validation required |
| D-17 | Exact boundary of "homepage body" — promo bars, breadcrumbs, sticky elements in or out? | Open stakeholder decision |
| D-18 | Who approves the FRS? Deadlines / release window? | **Open stakeholder decision — see §3.2, transitively blocking** |
| D-19 | Legal/brand/regulatory constraints — MRP and GST display, B2B vs B2C price visibility, brand authorisation claims | Research + legal validation |

### 2.3 Access outstanding — ID collision resolved

The stakeholder document introduced three items numbered D15, D16, D17. **Those numbers are
already occupied** in `01-discovery-register.md` by different questions. Adopting them as-is would
corrupt traceability, which the charter treats as non-negotiable.

They are recorded here as **ACC-n** instead. Repository IDs remain authoritative.

| New ID | Item | Status | Stakeholder doc called this | Repo D-15/16/17 actually are |
|---|---|---|---|---|
| **ACC-1** | Staging environment / access | Outstanding | "D15" | D-15 = content maintainer |
| **ACC-2** | Magento theme / repository access | Outstanding | "D16" | D-16 = analytics/tag stack |
| **ACC-3** | Analytics property read access | Outstanding | (implied by D-8) | D-17 = homepage body boundary |
| **ACC-4** | Live-site automated access returns HTTP 520 | Research constraint | "D17" | — |

**On ACC-4**, the stakeholder instruction is correct and is adopted: a 520 to automated fetchers
must **not** be read as evidence of a customer-facing fault. It is at least as likely to be bot
mitigation or CDN edge policy. Recorded as **AS-008** with a validation route, not as a finding.

---

## 3. Critical Decisions

### 3.1 Must be answered or formally waived before the FRS can be approved

| Gate | Condition | Depends on | State |
|---|---|---|---|
| G-1 | Six blocking Discovery items answered or waived | D-1, D-2, D-5, D-8, D-12, D-14 | Not met — 0 of 6 |
| G-2 | Baseline metrics recorded with source and date | D-8 + ACC-3 | Not met |
| G-3 | DEC-001 composition model decided | D-6, D-12, D-14 | Not met — **pulls D-6 in** |
| G-4 | Every requirement carries ID, register, priority, rationale, dependencies, acceptance criteria | G-1…G-3 | Not met — no requirements exist |
| G-5 | Launch-verifiable criteria deterministic and testable | G-4 | Not met |
| G-6 | Assumptions register complete; **each assumption has an owner** | D-18 | Not met — all owners TBD |
| G-7 | Multi-perspective critical review completed, findings resolved | G-4, G-5 | Not started |
| G-8 | **Named approver has signed** | D-18 | Not met — no approver exists |

**DEC-001 (homepage composition model) is the pivotal decision.** It is not a layout question. It
determines the caching architecture, the SEO surface, and the specification of every module —
which is why the FRS orders it before module-level requirements. Its three options, from
`04-decision-log.md`:

1. **Fixed body, dominant-segment ordering with routing rails** — fully cacheable, cheapest, lowest risk. Cost: the secondary segment gets a homepage optimised against its needs.
2. **Explicit self-selection** — cheap, cacheable, crawler-transparent. Cost: a click before any value; self-selection interfaces have a poor engagement record generally, which must be checked against evidence (RS-003), not assumed either way.
3. **State-aware adaptation** — best fit to the actual audience split. Cost: FPC hole-punching, ESI/Varnish or private-content blocks, cache-key complexity, heavier test matrix, and an unresolved question of what the crawler sees versus the visitor.

**Option 3 cannot be costed, or even confirmed as feasible, until D-12 and D-14 are answered.**
Adobe Commerce ships customer-segment infrastructure; Open Source does not, and would need it
built. This is the clearest example in the project of a decision that is cheap to make with two
facts and expensive to unwind without them.

### 3.2 Two structural defects in the current gate definition

**Recommendations to the approver. Not applied — reclassification is a governance act.**

**Defect 1 — D-6 is transitively blocking but classified non-blocking.**
G-3 requires DEC-001 to be decided. DEC-001 is recorded as blocked on D-6, D-12 and D-14. D-6 is
marked `Blocking: No` in the register. The gate therefore cannot open while D-6 is open, whatever
the register says.
→ *Recommend: reclassify D-6 as blocking, or amend DEC-001's dependencies.*

**Defect 2 — D-18 is transitively blocking but classified non-blocking.**
G-8 requires a named approver to sign. G-6 requires every assumption to carry an owner. Both
require knowing who the approver and owners are, which is D-18 — marked `Blocking: No`. The
charter also records Product Owner and FRS Owner as *TBD (D-18)*. **The gate cannot open without
D-18 under any circumstance**, since no one is empowered to sign it.
→ *Recommend: reclassify D-18 as blocking, and answer it first — it is the cheapest item on the
list and it unblocks G-6 and G-8 outright.*

Corrected count: **eight blocking items, not six** — D-1, D-2, D-5, D-6, D-8, D-12, D-14, D-18.

---

## 4. Important but Non-Blocking Information

These improve the FRS and should not stop progress.

| ID | Item | Why it matters | Why it does not block |
|---|---|---|---|
| D-3 | Intent to shift B2B/B2C mix | Whether to serve current or target state | Refines D-2's interpretation; direction can be set without it |
| D-4 | Seller merchandising, brand placement obligations | Module inventory, legal constraints | Affects module set, not composition model |
| D-7 | Purchase trigger per segment | Module intent, copy strategy | Copy is gate-blocked anyway |
| D-9 | Module inventory + per-module performance | Keep/kill calls, OQ-002 | Valuable but partly superseded by a rebuild |
| D-10 | Core Web Vitals field data | Performance budget calibration | Budget exists in `standards/`; baseline refines targets |
| D-11 | Prior A/B tests | Avoids re-testing settled questions | Absence costs efficiency, not correctness |
| D-13 | Frontend stack, Page Builder | DEC-002, effort model, performance ceiling | DEC-002 is not a gate condition |
| D-15 | Content maintainer and skill level | Maintainability requirements | Shapes authoring model, not composition |
| D-16 | Analytics/tag stack | Tracking plan | Needed at build, not at FRS approval |
| D-17 | Homepage body boundary edge cases | Scope precision | Core scope is clear; edges are marginal |
| ACC-1 | Staging access | Validation and implementation | Correctly identified as not blocking business/user discovery |
| ACC-2 | Theme/repo access | Component reuse, technical constraints | Needed at design/build |

### 4.1 One candidate for promotion

**D-19 (legal/regulatory — MRP and GST display, B2B vs B2C price visibility) should be promoted to
blocking *if* any price display on the homepage is contemplated.** Indian MRP and GST display
obligations are legal constraints, not preferences. OQ-001 already asks whether the homepage
should show prices at all, and OQ-005 asks whether WCAG 2.2 AA is a legal or merely commercial
obligation — both route through D-19. Discovering a compliance constraint after the FRS is signed
is exactly the expensive-rework failure the gate exists to prevent.

---

## 5. Current Assumptions

Every assumption states what it is, why it is currently necessary, the risk if it is wrong, and
how it can be validated. **None of these may be converted into a requirement.**

### 5.1 Existing (from `05-assumptions-open-questions.md`)

**AS-001 — The homepage is a meaningful entry point for a material share of sessions.**
*Necessary because:* it is the premise of the entire project. Without it there is nothing to justify the work.
*Confidence:* **Low.** *Owner:* unassigned — fails G-6.
*Risk if wrong:* the whole project premise collapses; effort should move to category and search surfaces. This is the highest-impact assumption in the register and it currently has the weakest support.
*Validate by:* D-8 homepage entry rate and share of sessions touching the homepage, against a threshold agreed in advance. **Agree the threshold before seeing the data.**

**AS-002 — Repeat trade buyers mostly bypass the homepage via deep links, search and reorder.**
*Necessary because:* it underpins the reasoning in DEC-001 about who the homepage is actually for.
*Confidence:* Medium. *Owner:* unassigned.
*Risk if wrong:* composition should weight trade tasks far more heavily than currently contemplated.
*Validate by:* D-6 — logged-in B2B homepage entry share.

**AS-003 — Mobile is a majority of consumer-side sessions and a minority of trade sessions.**
*Necessary because:* responsive ordering strategy depends on it.
*Confidence:* **Low.** *Owner:* unassigned.
*Risk if wrong:* responsive ordering strategy inverts.
*Validate by:* D-8 device split, segmented by customer group — not in aggregate.

### 5.2 Newly recorded in this report

**AS-004 — The AUD-1…AUD-7 segmentation is the correct model for this business.**
*Necessary because:* every audience-facing requirement will be written against it, and the charter mandates accounting for all seven.
*Confidence:* Low — the list is inherited from governing scope, not derived from data.
*Risk if wrong:* requirements are written against segments that do not describe real buying behaviour. Two segments may collapse into one, or a material segment may be missing entirely.
*Validate by:* D-2 revenue split across the seven, plus D-5 evidence. If revenue cannot be attributed to a segment, that segment is a hypothesis.

**AS-005 — RS-001's public figures (~50k products, 600+ sellers, 40–50+ brands) are approximately accurate.**
*Necessary because:* catalogue scale bears on merchandising feasibility and on whether category orientation is even tractable on one page.
*Confidence:* Medium — self-reported marketing sources.
*Risk if wrong:* module feasibility assessments are miscalibrated.
*Validate by:* Magento catalogue counts. Trivial, and internally available.

**AS-006 — The stakeholder document's D-1 ranking is a hypothesis, not a decision.**
The supplied ranking — 1) revenue/transactions, 2) qualified B2B demand/enquiries, 3) product discovery, 4) trust/brand credibility, 5) SEO acquisition — is explicitly marked *"Working hypothesis only… Do not treat this as confirmed."* That instruction is adopted.
*Necessary because:* it allows analysis to proceed in the meantime.
*Confidence:* Low — evidence level 7 (expert recommendation).
*Risk if wrong:* the metric hierarchy, CTA hierarchy and module priority are all built on a mis-stated objective. This propagates into every requirement.
*Validate by:* D-1, answered by the accountable stakeholder.

**AS-007 — `/upcoming-home` does not represent a parallel or conflicting redesign that supersedes this work.**
*Necessary because:* if it does, this project's scope and premise both change.
*Confidence:* **Unknown — untested.** *Risk if wrong:* duplicated effort, or an FRS written against a homepage that is already being replaced by someone else.
*Validate by:* one internal question. See OQ-006. **Cheapest high-impact check available.**

**AS-008 — The HTTP 520 to automated fetchers is bot mitigation or CDN edge policy, not a customer-facing fault.**
*Necessary because:* the alternative reading would make site stability a finding rather than a research constraint. The stakeholder instruction directs that it not be read as evidence of a customer-facing problem, and that direction is adopted.
*Confidence:* Medium.
*Risk if wrong:* a live availability problem is going unreported, and any CWV field data would be contaminated.
*Validate by:* manual browser access; server/CDN logs; CrUX field data (see §7.1). Cheap.

### 5.3 Assumptions this report deliberately refuses to make

Recorded because their *absence* is a finding:

- That "Add to Cart" is the primary conversion. The stakeholder document lists nine other candidate conversions — enquiry, RFQ, bulk purchase, assisted buying, account actions, contact with sales, professional/B2B enquiry, product/category discovery, product purchase. **Which of these count as success is D-1, and it is unanswered.**
- That a hero carousel, brand strip, testimonial row or newsletter block belongs on the page (charter §5.2; OQ-002).
- That the current homepage's modules should carry forward (D-9).
- That WCAG 2.2 AA is legally required rather than a chosen target (OQ-005).
- That mobile-first ordering is correct for trade segments (AS-003).

---

## 6. Recommended Stakeholder Questions

Ready to send. **Business and customer questions first**, per instruction. Technical questions are
last because they are the easiest to answer and the most likely to crowd out the harder ones.

### 6.1 If only five questions get answered, these five

These unblock the most and cost the least.

1. **Who signs off the FRS, and is there a deadline or release window?** *(D-18 — unblocks G-6 and G-8; cannot open the gate without it)*
2. **If the new homepage succeeds exceptionally well, what business result should Eleczo see — and which single outcome matters most?** *(D-1)*
3. **Roughly what share of revenue is B2B versus B2C today, and which of the seven audiences generate most of it?** *(D-2)*
4. **Which exact Magento edition and version are we on — Open Source or Adobe Commerce?** *(D-12)*
5. **Is there a homepage redesign already underway? An `/upcoming-home` URL exists on the domain.** *(OQ-006 — may change this project's scope entirely)*

### 6.2 Business

6. What are the top commercial objectives of the homepage, ranked? *(D-1)*
7. Is Eleczo primarily trying to increase direct online transactions, qualified enquiries, or both? *(D-1)*
8. Beyond purchase, which actions count as commercial success — enquiry, RFQ, bulk order, assisted buying, contact with sales, account actions? *(D-1)*
9. Which products, categories, brands or product groups are strategically most important? *(D-4)*
10. Is there intent to shift the B2B/B2C mix? Should the homepage serve the target state or today's? *(D-3)*
11. Do any brand-partner contracts oblige specific homepage placement? *(D-4)*
12. Does the 600+ seller marketplace model require merchandising sellers as well as products and brands? *(D-4)*

### 6.3 Customers

13. Which customer groups generate the most revenue today? *(D-2)*
14. Which customer groups does Eleczo most want to grow? *(D-3)*
15. What are the biggest customer problems or frustrations today? *(D-5)*
16. What does the sales/support team believe customers struggle with — and what evidence supports those beliefs? *(D-5 — the second half matters as much as the first)*
17. What typically triggers a purchase for each segment: planned procurement, project award, urgent replacement, or discretionary? *(D-7)*

### 6.4 Evidence

18. What customer research, UX audits, surveys or competitor analyses already exist? *(D-5, D-11)*
19. What sales data can be shared, broken down by customer group? *(D-2)*
20. What support, contact and enquiry data exists? *(D-5)*
21. Have any A/B tests been run on the homepage, and what were the results? *(D-11)*

### 6.5 Technical

22. What caching and CDN architecture is in use? Is Varnish/FPC enabled? *(D-14)*
23. What personalisation or customer-segment infrastructure already exists? *(D-14)*
24. What frontend theme is in use — Luma, Hyvä, custom, PWA Studio? Is Page Builder in use for homepage content? *(D-13)*
25. What analytics and tag stack is in place — GA4, GTM, other? *(D-16)*
26. Are module-level click events currently tracked on the homepage, or only page-level metrics? *(D-8 — see §8.2; this determines whether D-8 is answerable at all)*
27. What catalogue, search and recommendation systems are integrated? *(D-9)*
28. Who maintains homepage content day to day, and with what technical skill? *(D-15)*
29. Can read access to the analytics property be granted? *(ACC-3)*
30. Can staging access and theme/repository access be granted? *(ACC-1, ACC-2)*

---

## 7. Research Required

Answerable **without stakeholder input**. These can proceed immediately and in parallel with §6.

### 7.1 Independently obtainable now

**RS-007 — Core Web Vitals field data for the eleczo.com homepage (D-10).**
Chrome UX Report data is public and is collected from real Chrome users, so it is unaffected by the
HTTP 520 that blocks automated fetching. Obtainable via the CrUX API or PageSpeed Insights.
*Answers:* D-10, and partially validates AS-008 — if CrUX holds normal field data, the site is
plainly reachable by real users and the 520 is bot mitigation.
*Confidence ceiling:* Medium-High. Real-user data, but origin-level and unsegmented.

### 7.2 Already queued in `06-research-log.md`

| ID | Question | Triggered by | Value |
|---|---|---|---|
| RS-002 | How do specification-driven trade buyers actually enter and navigate distributor sites? | DEC-001 | High — directly informs the composition decision |
| RS-003 | Evidence on explicit self-selection interfaces: engagement and abandonment | DEC-001 option 2 | High — the charter requires this be checked, not assumed either way |
| RS-004 | Magento FPC strategies for segment-varied homepage content, and their SEO consequences | DEC-001 option 3 | **Blocked on D-12** — the answer differs by edition |
| RS-005 | Hero carousel evidence: engagement distribution across slides, CWV cost | OQ-002 | Medium — settles an inherited convention |
| RS-006 | Indian MRP/GST price display obligations for mixed B2B/B2C storefronts | OQ-001, D-19 | High — legal constraint, not preference |

### 7.3 Transfer caveat

The research log is explicit that general e-commerce findings **do not transfer for free**: B2B
Indian electrical distribution is not generic DTC retail. Every finding must carry an argued
transfer rationale, or it is decoration. RS-005 in particular is drawn from a literature dominated
by consumer retail and must be treated accordingly.

---

## 8. Data Required

### 8.1 Analytics (D-8, ACC-3)

Read access to the analytics property. Rolling 12 months, plus the same period a year earlier for
seasonality.

| Requirement | Detail |
|---|---|
| Scope | Landing page `/` and all sessions where the homepage was viewed at any point |
| Core metrics | Sessions, entrances, entry rate, engagement rate, bounce, average engagement time, exit rate |
| Scroll depth | Distribution, not just the GA4 default 90% threshold |
| Module CTR | Clicks per homepage module — **see §8.2** |
| Device split | Mobile / desktop / tablet, **segmented by customer group** — the aggregate is not usable (AS-003) |
| Logged-in state | Sessions by authenticated vs anonymous; by Magento customer group if `user_id` is set |
| Navigation | Next-page-after-homepage distribution; search usage from homepage; internal search terms |
| Conversion | Per the D-1 definition — transactions, enquiries, RFQs, bulk orders, account actions. **Cannot be specified until D-1 is answered.** |
| Geography | India vs export, if relevant to segment mix |

### 8.2 A likely obstacle worth surfacing now

**Per-module click-through data probably does not exist.** GA4's default event set does not
capture clicks by homepage module; that requires deliberate instrumentation, typically via GTM.
D-16 asks what tag stack exists but nobody has yet confirmed whether module-level tracking was ever
implemented.

If it was not, then **D-8 is only partially answerable from history**, and per-module CTR could
only be obtained by instrumenting the *current* homepage and waiting for data to accumulate — weeks,
not days.

This is a schedule risk, and it is better discovered now than after the gate is scheduled.
Question 26 in §6.5 exists specifically to surface it. Three outcomes:

- **Tracking exists** → D-8 is fully answerable; export it.
- **Tracking absent, module CTR judged essential** → instrument now, accept the delay, or open the gate on a recorded assumption with an invalidation trigger.
- **Tracking absent, module CTR judged non-essential** → record explicitly that keep/kill calls on existing modules rest on judgement, not data, and log it as an assumption.

### 8.3 Sales and commercial (D-2, D-4)

Available internally from Magento admin and finance — no external dependency.

- Revenue by customer group, 12 months, mapped to AUD-1…AUD-7
- B2B vs B2C split by revenue **and** by order count (they will differ, and the difference is informative)
- Average order value and line count per group — panel builders' multi-line BOM orders should look structurally different from consumer orders
- Repeat purchase rate by group
- Top categories and brands by revenue
- Enquiry, RFQ and bulk-order volumes, if captured anywhere

### 8.4 Customer and support (D-5, D-7)

- Support and enquiry logs — volume and themes
- Any prior research, interviews, surveys, UX audits, competitor analyses
- Sales team's stated beliefs about customer friction, **recorded separately from the evidence that supports them** (evidence hierarchy level 4 versus level 8 — the distinction is the point)

### 8.5 Technical (D-12, D-13, D-14, D-16, ACC-1, ACC-2)

- Magento version string and edition
- Caching architecture: Varnish/FPC configuration, CDN, TTLs, hole-punching or ESI already in use
- Existing customer-segment or personalisation infrastructure
- Frontend theme and whether Page Builder authors homepage content
- Analytics/tag stack and current event schema
- Staging URL with access, and theme/repository read access
- Current homepage module inventory — a rendered export or screenshots will do (D-9)

### 8.6 Catalogue (validates AS-005)

Product count, active seller count, brand count, category tree depth and breadth. Directly from
Magento. Trivial, and it converts R-2/R-3 from level-6 to level-1 evidence.

---

## 9. FRS Impact

Which part of the future FRS each critical unknown governs.

| Unknown | FRS sections affected | Consequence of proceeding without it |
|---|---|---|
| **D-1** commercial accountability | §2 success definition, §5.1 composition, CTA hierarchy, analytics requirements | Every metric, priority and CTA rests on a mis-stated objective. **Highest propagation risk in the project.** |
| **D-2** revenue split | §3 audience model, §5.1 ordering, merchandising | Audience prioritisation could invert. The largest audience is not necessarily the most commercially important — the stakeholder document is explicit on this. |
| **D-5** audience evidence | §3 audience model, research plan depth | Determines whether the FRS rests on evidence or on internal belief — and how much research is still owed |
| **D-6** logged-in entry share | §4 DEC-001, segment adaptation | Directly falsifies or confirms AS-002; the composition decision turns on it |
| **D-8** analytics baseline | §2 baseline and all outcome criteria, module keep/kill | **No outcome criteria can be written at all.** G-2 unmeetable. Success becomes unmeasurable post-launch |
| **D-12** Magento edition | §4 DEC-001, §5.3 cross-cutting, all backend requirements | Option 3 may be infeasible or need building from scratch. Effort estimates unreliable |
| **D-14** caching + personalisation | §4 DEC-001, performance, SEO surface | Segment adaptation may be architecturally impossible or prohibitively expensive |
| **D-18** approver | Gate G-6, G-8; charter §6 | **No one can sign. The gate cannot open** |
| **D-13** frontend stack | §5.3, DEC-002, performance budget | Performance ceiling and component model unknown |
| **D-19** legal/regulatory | §5.2 price display, §5.3 accessibility, OQ-001, OQ-005 | Compliance constraints discovered post-approval force rework |
| **D-9 / D-11** current performance, prior tests | §5.2 module inventory, OQ-002 | Keep/kill decisions become judgement rather than evidence |
| **D-17** body boundary | §1 scope | Scope disputes surface during build, when they are most expensive |
| **OQ-006** `/upcoming-home` | Entire project premise | Possible duplication of, or conflict with, work already in flight |

---

## 10. Recommended Next Step

The smallest set of actions that moves this from discovery into evidence-based FRS development.
Ordered by ratio of unblocking value to cost.

### Step 1 — Name the approver *(one email, unblocks two gate conditions)*

Answer **D-18**. Assign owners to AS-001…AS-008. This satisfies G-6's owner requirement and makes
G-8 achievable. It is the cheapest item on the list and nothing can be signed without it.

### Step 2 — Ask the two technical questions *(one conversation)*

**D-12** and **D-14**, from whoever runs the platform. These are facts someone already knows. They
determine whether DEC-001 option 3 is feasible at all, and they unblock RS-004.

Ask **OQ-006** in the same conversation — whether `/upcoming-home` is a live parallel redesign.
Highest-impact question relative to its cost anywhere in this report.

### Step 3 — One stakeholder session, 60–90 minutes *(covers three blocking items)*

Cover **D-1**, **D-2** and **D-5** together, with someone commercially accountable. Take §6.1 and
§6.2 as the agenda. Ranking the objectives matters more than listing them — an unranked list of
five objectives is not an answer.

### Step 4 — Request data access *(starts a clock, so start it early)*

Grant **ACC-3** (analytics read). Simultaneously answer question 26 — whether module-level click
tracking exists — because if it does not, per §8.2 the schedule changes and you want to know that
now rather than later. Request **ACC-1** and **ACC-2** in the same message; they are not blocking
but they have lead time.

Pull the §8.3 sales data and the §8.6 catalogue counts from Magento admin — internal, quick, and
they convert several level-6 items to level-1.

### Step 5 — Research that needs no one's permission *(can start today)*

Run **RS-007** (CrUX field data — answers D-10, tests AS-008), then **RS-002**, **RS-003**,
**RS-005**, **RS-006**. Hold **RS-004** until D-12 lands.

### Then, and only then

With D-1, D-2, D-5, D-6, D-8, D-12, D-14, D-18 answered or formally waived as AS-nn with
invalidation triggers:

1. Decide **DEC-001** and record it *(satisfies G-3)*
2. Record the baseline with source and date *(G-2)*
3. Draft requirements as RQ-nnn blocks with two-tier acceptance criteria *(G-4, G-5)*
4. Run the eight-perspective critical review *(G-7)* — procurement buyer, first-time consumer, SEO, performance, accessibility, Magento engineer, content maintainer, commercial owner
5. Seek signature *(G-8)*

**Only then does the gate open, and only then does design or code begin.**

---

## 11. Register changes recommended but not applied

Recorded here for the approver. **Not applied** — the gate reserves reclassification and waiver to
the named approver, in writing.

| # | Recommendation | Rationale |
|---|---|---|
| 1 | Reclassify **D-6** as blocking | G-3 requires DEC-001; DEC-001 is blocked on D-6 (§3.2) |
| 2 | Reclassify **D-18** as blocking | G-6 and G-8 both require it; no signature is possible without it (§3.2) |
| 3 | Promote **D-19** to blocking *if* homepage price display is contemplated | Indian MRP/GST display is a legal constraint (§4.1) |
| 4 | Adopt **ACC-1…ACC-4** for access items | The stakeholder document's D15/D16/D17 collide with existing register IDs (§2.3) |
| 5 | Add **OQ-006** — what is `/upcoming-home`? | May duplicate or conflict with this project (§1.2, AS-007) |
| 6 | Add **AS-004…AS-008** to the assumptions register | Recorded in §5.2; each carries an invalidation trigger |
| 7 | Add **RS-007** to the research queue | CrUX field data, independently obtainable (§7.1) |
| 8 | Agree the AS-001 threshold **before** seeing D-8 data | Deciding "material share" after seeing the number invites rationalisation (§5.1) |

---

## Boundary observed

No homepage design produced. No final copy. No HTML, CSS or JavaScript. No Magento code. No visual
direction committed. The working hypothesis has not been treated as a confirmed requirement, and no
assumption has been converted into a requirement.

**Discovery → evidence → analysis → requirements → detailed FRS.**