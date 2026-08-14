# Discovery Register

**Status: OPEN.** 19 issued, 0 answered.
Blocking items must be closed before the FRS can move past skeleton.

Where the answer is genuinely not known, record `UNKNOWN` — this converts the item into a
research task (`06-research-log.md`) or an open question (`05-assumptions-open-questions.md`).
Do not record an estimate as an answer.

## A. Commercial context

| ID | Question | Blocking | Answer | Feeds |
|---|---|---|---|---|
| D-1 | What is the homepage commercially accountable for — revenue, lead/enquiry generation, brand credibility, or SEO acquisition? If several, ranked. | **Yes** | | Success metrics, module priority |
| D-2 | Revenue split today across B2B vs B2C, and across AUD-1…AUD-7 (rough proportions acceptable). | **Yes** | | Composition ordering |
| D-3 | Is there intent to shift that mix? Should the homepage serve the target state rather than the current one? | No | | Composition ordering |
| D-4 | Does the marketplace model (600+ sellers) require merchandising sellers as well as products and brands? Any contractual brand-partner placement obligations? | No | | Module inventory, legal constraints |

## B. Audience evidence

| ID | Question | Blocking | Answer | Feeds |
|---|---|---|---|---|
| D-5 | What evidence exists on these segments — sales knowledge, support/enquiry logs, prior research, or nothing formal? | **Yes** | | Determines research plan depth |
| D-6 | Proportion of repeat B2B buyers arriving logged in; do they enter via homepage or deep link/search? | No | | Segment-adaptation decision |
| D-7 | Purchase trigger per segment — planned procurement, project-driven, urgent replacement, discretionary. | No | | Module intent, copy strategy |

## C. Current-state baseline

| ID | Question | Blocking | Answer | Feeds |
|---|---|---|---|---|
| D-8 | Analytics export, 6–12 months: homepage entry rate, share of sessions touching homepage, bounce/exit, scroll depth, per-module CTR, device split. | **Yes** | | Baseline, all outcome criteria |
| D-9 | Current homepage module inventory + per-module performance, especially carousel/banner slots. | No | | Pattern challenge, keep/kill calls |
| D-10 | Current Core Web Vitals field data for the homepage; pass or fail. | No | | Performance budget |
| D-11 | Prior A/B tests on the homepage and their results. | No | | Avoids re-testing settled questions |

## D. Platform and constraints

| ID | Question | Blocking | Answer | Feeds |
|---|---|---|---|---|
| D-12 | Magento version and edition (Open Source vs Adobe Commerce). | **Yes** | | Segmentation feasibility, all backend reqs |
| D-13 | Frontend stack — Luma, Hyvä, custom theme, PWA Studio. Is Page Builder in use? | No | | Frontend standard, effort model |
| D-14 | Caching architecture (Varnish/FPC config) and any existing personalisation or customer-segment infrastructure. | **Yes** | | Segment-adaptation decision |
| D-15 | Who maintains homepage content day to day, and with what technical skill? | No | | Maintainability requirements |
| D-16 | Analytics/tag stack in place (GA4, GTM, other). | No | | Tracking plan |

## E. Governance

| ID | Question | Blocking | Answer | Feeds |
|---|---|---|---|---|
| D-17 | Exact boundary of "homepage body" — do promo/announcement bars, breadcrumbs, sticky elements sit inside or outside? | No | | Scope boundary |
| D-18 | Who approves the FRS? Fixed deadlines or release window? | No | | Gate, phasing |
| D-19 | Legal/brand/regulatory constraints in India — MRP and GST display, B2B vs B2C price visibility, brand authorisation claims. | No | | Compliance requirements |

## Access still required

Tracked under **ACC-n** IDs. A stakeholder document dated 2026-08-14 proposed numbering these
D15/D16/D17 — those IDs are already occupied above by different questions, so ACC-n is used
instead. Repository IDs remain authoritative.

| ID | Item | Status | Blocking? |
|---|---|---|---|
| ACC-1 | Staging environment / unblocked URL, or rendered export/screenshots of the current homepage | Outstanding | No — but needed before design validation |
| ACC-2 | Repository access to the Magento theme/module code for the homepage | Outstanding | No — needed at design/build |
| ACC-3 | Read access to the analytics property | Outstanding | **Yes — D-8 and gate condition G-2 depend on it** |
| ACC-4 | Live site returns HTTP 520 to automated fetchers, so no first-hand audit was possible | Research constraint | No — recorded as AS-008, not as a finding |

**On ACC-4:** do not read the 520 as evidence of a customer-facing fault. Bot mitigation and CDN
edge policy are at least as likely. Recorded as AS-008 with a validation route.

## Status of this register

**19 issued, 0 answered.** A stakeholder document dated 2026-08-14 supplied *statuses and working
positions* for D-1, D-2, D-5, D-8, D-12 and D-14 — it did not supply answers. Those working
positions are recorded in `08-discovery-status-report.md` §2.1 and must not be read as answers.

Two items are **transitively blocking** despite being marked `Blocking: No` above — reclassification
is recommended to the approver in `08-discovery-status-report.md` §11, not applied here:

- **D-6** — gate condition G-3 requires DEC-001, which is blocked on D-6
- **D-18** — gate conditions G-6 and G-8 both require a named approver; nobody can sign without it

Corrected count: **eight blocking items, not six** — D-1, D-2, D-5, D-6, D-8, D-12, D-14, D-18.
