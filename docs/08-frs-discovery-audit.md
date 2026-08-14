# ELECZO FRS DISCOVERY AUDIT

**Document:** `docs/08-frs-discovery-audit.md`
**Version:** 1.0
**Date:** 14 August 2026
**Stage:** Discovery — audit of what is known, what is missing, and what can be resolved without stakeholder input
**Status of build work:** NOT AUTHORISED. Approval gate (`docs/03-approval-gate.md`) remains CLOSED.

> **Purpose of this document.** Before asking Eleczo for anything, establish precisely what is already known, what can be resolved by research or analysis, and what genuinely cannot. The stakeholder question list at the end is deliberately short — everything removable has been removed by doing the work instead of delegating it.

**Audit result in one line:** of the 19 open Discovery questions, **6 are now fully or partially resolved by research**, **4 require technical/environment access**, and **6 require a business decision that no amount of research can substitute for**. Three remain genuinely open but non-blocking.

---

## 1. CONFIRMED INFORMATION

Confirmed here means: supported by an identifiable source, recorded with its confidence level. It does **not** mean verified by Eleczo. Nothing in this section may be promoted to a requirement without stakeholder confirmation.

### 1.1 Corporate and commercial identity

| # | Fact | Source | Confidence |
|---|---|---|---|
| C-01 | Eleczo is the e-commerce platform of **Mohan Exim India Pvt Ltd** | Company sites, consistent across properties | **High** |
| C-02 | Mohan Exim states **57 years** in the electrical industry (elsewhere "50+ years") | mohanexim.com | High |
| C-03 | Registered/operating addresses: **No. 132, 2nd Stage, Industrial Suburb, Yeshwanthpur, Bengaluru 560022**; admin office **No. 31, 1st Floor, 1st Main Road, Chamrajpet, Bengaluru 560018** | mohanexim.com | High |
| C-04 | Public contact: **+91 9090903837**, `sales@eleczo.com`, `sales@mohanexim.com` | mohanexim.com | High |
| C-05 | Serves **both B2B and B2C** — stated explicitly and repeatedly in Eleczo's own copy | eleczo.com | **High** |
| C-06 | Operates a **marketplace/multi-seller model** — "bridge the gap between buyers and sellers", "600+ certified sellers", and a stated seller-onboarding proposition ("we help sellers grow their business online") | eleczo.com, YouTube channel copy | **High** — the model is confirmed; the seller count is not |

### 1.2 Segments Eleczo itself names

This is the single most useful confirmed finding of the audit. **Mohan Exim's own site already segments its audience**, and the segmentation closely matches the AUD-1…AUD-7 model in the charter — meaning the audience model is not an AI invention, it is Eleczo's own stated positioning.

| Segment named by Eleczo | Charter equivalent |
|---|---|
| Projects | AUD-3 (contractor / project) |
| OEMs — "electrical components we supply to the OEMs" | AUD-1 |
| Dealers — "supporting dealers with our wide array of products" | AUD-4 |
| Electrical contractors — "partnered with us for smoother project execution" | AUD-3 |
| Public sector — "procurement solutions for the public sector… fewer procurement interactions" | AUD-4 (public sector) |
| End user — a dedicated `/end-user` URL exists on eleczo.com | AUD-6 |

**Confidence: High that these are Eleczo's stated target segments. Zero evidence on their relative commercial weight.** Naming a segment in marketing copy is not evidence of revenue contribution. D-2 remains open.

### 1.3 Product taxonomy

Top-level categories, as stated by Eleczo/Mohan Exim:

| Category |
|---|
| Circuit Breakers |
| Low Voltage Switchgears |
| Control Gear & Signalling Devices |
| Industrial Automation |
| Wires & Cables |
| Switches & Sockets |
| LED Lights |

Also referenced in company copy: plugs & sockets, auxiliary contactors, switchgears, distribution boards, lighting solutions.

**Confidence: Medium-High** on the category set. **Low** on it being the complete or current taxonomy — this is marketing copy, not a catalogue export.

### 1.4 Scale claims — and a material inconsistency

| Claim | Value A | Value B | Source of conflict |
|---|---|---|---|
| Brands | "50+ brands" | "40+ top brands" | eleczo.com vs mohanexim.com |
| Products | "50k+ products" | "40K+ Products" | eleczo.com vs Instagram bio |
| Sellers | "600+ certified sellers" | — | eleczo.com |
| Company age | "57 years" | "over 50+ years" | mohanexim.com vs eleczo.com |

> ⚠️ **RISK-01 — Inconsistent public scale claims.** Eleczo publishes different figures for brands, products and company age across its own properties. This matters for three reasons: (a) any homepage copy reusing these figures inherits the inconsistency; (b) the strapline **"India's Largest Online Electrical Store"** is an unsubstantiated superlative; (c) India's consumer-protection regime treats unsubstantiated advertising claims as actionable. **The homepage must not repeat any of these claims until the business confirms a single substantiable set of figures.** Logged as a stakeholder question (Q-6) and a content constraint.

### 1.5 Positioning language currently in use

Eleczo's existing copy is generic e-commerce marketing — "one-stop solution", "world-class products", "100% customer satisfaction", "shop better, faster and easier". Notably, it contains **almost no trade-specific vocabulary**: no reference to breaking capacity, pole configuration, current rating, panel BOMs, or procurement workflow.

**Analytical finding (AF-01):** the current positioning language is written for AUD-6/AUD-7 (consumer) while the product catalogue and segment list are weighted toward AUD-1…AUD-5 (trade). This mismatch is itself evidence for the composition problem DEC-001 exists to solve, and it is a finding available *without* analytics.

### 1.6 Technical facts established

| # | Fact | Method | Confidence |
|---|---|---|---|
| C-07 | `eleczo.com` returns **HTTP 520** to automated fetchers, consistently, across multiple paths (`/`, `/upcoming-home`) and multiple dates (13 and 14 August 2026) | Direct fetch attempts | **High** |
| C-08 | 520 is a **Cloudflare-specific** status — a CDN/WAF layer sits in front of the origin | Status-code semantics | High |
| C-09 | Search engines **do** have current indexed content from the homepage and sub-pages | Search results return live body copy | High |
| C-10 | An `/upcoming-home` path exists and is indexed — redesign work is already partly in flight | Search index | Medium-High |
| C-11 | Segment landing pages exist (`/end-user`, `/mohan-exim`) | Search index | Medium |

**Inference (AF-02):** since crawlers retrieve content but generic fetchers get 520, the site is very likely applying bot mitigation that allowlists known search engines. **This is not confirmed to affect real users** — but it does mean no automated audit, Lighthouse run, or crawl-based SEO analysis can be performed from outside. It also means any AI crawler not on the allowlist cannot read the site, which has direct consequences for AI-search visibility.

### 1.7 Project governance already established

| # | Fact |
|---|---|
| C-12 | FRS exists at **v0.1 skeleton**; structure agreed, content empty |
| C-13 | Discovery register issued: **19 questions, 0 answered, 6 blocking** (D-1, D-2, D-5, D-8, D-12, D-14) |
| C-14 | Approval gate **CLOSED**; 8 conditions, none met |
| C-15 | Scope boundary: **homepage body only** — header, mega-menu, footer and site-wide IA explicitly excluded |
| C-16 | DEC-001 (composition model) and DEC-002 (frontend approach) both **Proposed, undecided** |
| C-17 | Assumptions AS-001…AS-003 and open questions OQ-001…OQ-005 recorded, all open |
| C-18 | Agent roster, standards and gate mechanics are complete and usable |

> ⚠️ **Scope conflict noted (RISK-02).** The charter scopes this project to the **homepage body**, excluding header, navigation and mega-menu. The later master prompt requests specifications for Header & Navigation, Global Search and Mega Menu. **These are incompatible.** Global search in particular is likely the single highest-value element for trade users (see §3.2) and it sits *outside* the current scope boundary. This needs an explicit ruling — Q-7.

---

## 2. MISSING INFORMATION

Everything genuinely absent that affects the FRS. Sorted by what it blocks, not by topic.

### 2.1 Commercial direction — no substitute exists

| ID | Missing | Blocks |
|---|---|---|
| M-01 | What the homepage is commercially accountable for, ranked (D-1) | Success metrics; every module priority; the entire acceptance-criteria layer |
| M-02 | Revenue split B2B vs B2C, and across segments (D-2) | Composition ordering; DEC-001 |
| M-03 | Whether to serve the current mix or a target mix (D-3) | Composition ordering |
| M-04 | Contractual brand-partner placement obligations (D-4) | Whether brand merchandising is a business obligation or a UX choice |
| M-05 | Whether sellers must be merchandised alongside products/brands (D-4) | Module inventory; product card design |

### 2.2 Audience evidence

| ID | Missing | Blocks |
|---|---|---|
| M-06 | What evidence exists per segment — sales knowledge, support logs, prior research, or nothing (D-5) | Determines whether personas are researched or assumed |
| M-07 | Share of repeat B2B buyers arriving logged in; homepage vs deep-link entry (D-6) | DEC-001; whether reorder modules are justified at all |
| M-08 | Purchase trigger per segment (D-7) | Module intent; copy strategy |

### 2.3 Baseline — the largest single gap

| ID | Missing | Blocks |
|---|---|---|
| M-09 | Analytics export, 6–12 months (D-8) | **Every outcome acceptance criterion in the FRS.** Without it, only launch-verifiable criteria can be written |
| M-10 | Current homepage module inventory and per-module performance (D-9) | Keep/kill decisions; pattern challenge |
| M-11 | Current Core Web Vitals field data (D-10) | Performance budget is currently PROVISIONAL, not baselined |
| M-12 | Prior A/B test history (D-11) | Risk of re-testing settled questions |

### 2.4 Brand and design inputs — absent entirely

| ID | Missing | Blocks |
|---|---|---|
| M-13 | **Approved colour codes** | All UI work. The master prompt repeatedly refers to "FRS-approved colour codes"; no colour values exist anywhere in this project |
| M-14 | Typography — families, licences, weights | Design system; performance budget (webfont cost) |
| M-15 | Logo system, clear-space rules, usage constraints | Header/hero, though header is currently out of scope |
| M-16 | Brand guidelines document, if one exists | Whether a design system is being *derived* or *applied* |
| M-17 | Photography/imagery direction and asset library | Graphic design agent has no brief |
| M-18 | Manufacturer logo usage authorisation | Whether "shop by brand" can legally display brand marks |

### 2.5 Content and data dependencies

| ID | Missing | Blocks |
|---|---|---|
| M-19 | Whether an **application → product-type mapping dataset** exists | Application-based and industry-based shopping. **This is the most commonly underestimated dependency in the whole programme** — it is domain data, not UI |
| M-20 | Whether buying guides / editorial content exist or must be authored | Guidance modules; SEO content region |
| M-21 | Who maintains homepage content day-to-day, and at what skill level (D-15) | Authoring surface design; whether Page Builder is appropriate |
| M-22 | Whether an RFQ/quote workflow exists operationally (owner, SLA, routing) | RFQ module. A form without a workflow behind it is worse than no form |

### 2.6 Governance

| ID | Missing | Blocks |
|---|---|---|
| M-23 | Who approves the FRS; deadlines/release window (D-18) | Gate condition G-8 cannot be met |
| M-24 | Exact boundary of "homepage body" (D-17) — and resolution of RISK-02 | Scope |

---

## 3. RESEARCHABLE ITEMS — RESOLVED IN THIS AUDIT

These were on the research queue as RS-002…RS-006. Four are now resolved to a usable standard, one partially, one remains queued. **None of these should be asked of Eleczo.**

### 3.1 RS-006 — Indian MRP and price-display obligations · **RESOLVED**

*Resolves the legal half of OQ-001 and most of D-19's pricing element.*

**Finding.** The **Legal Metrology Act 2009** and **Legal Metrology (Packaged Commodities) Rules 2011** govern this. An e-commerce entity must ensure the mandatory declarations are displayed on the digital network used for e-commerce transactions, with the exception of the month and year of manufacture or packaging. Those mandatory declarations include manufacturer details, commodity name, net quantity, maximum retail price, and consumer complaint contacts.

**The decisive finding for Eleczo.** The Packaged Commodities Rules do not apply to packages containing more than 25 kilograms or 25 litres, nor to packaged commodities meant for industrial consumers or institutional consumers.

This is significant and directly resolves a design question the project had flagged as blocked:

1. There is a **statutory basis in the rules themselves** for treating industrial/institutional (B2B) supply differently from consumer supply on price declaration. The B2B/B2C price-display divergence Eleczo needs is not a workaround — it maps onto an existing exemption category.
2. **Consumer-facing listings must show MRP.** For AUD-6/AUD-7 this is not optional and not a design preference.
3. The >25kg/25L exemption is materially relevant to this catalogue — cable drums, large switchgear and panel assemblies plausibly fall outside the Rules on that basis alone.
4. Unit sale price is not compulsory to display on e-commerce websites under Rule 6(10).

**Consequences for the FRS.** OQ-001 ("should the homepage show prices at all?") narrows from an open question to a design decision with a known legal frame: consumer-visible product modules carry an MRP obligation; industrial/institutional supply may legitimately differ. The remaining open part is **GST presentation** (inclusive for B2C vs ex-GST with GSTIN capture for B2B input credit) — that is a tax/commercial policy choice, not a research question. Q-4.

> **Limitation stated honestly:** I am not a lawyer and this is not legal advice. The exemption's application to Eleczo's specific catalogue and marketplace structure needs confirmation from Indian counsel before it is relied on. What research *has* done is convert "we don't know if we can" into "here is the specific provision to get signed off" — a much cheaper question to ask.

**Confidence: Medium-High** on the rules as stated; **Low** on their application to specific Eleczo SKUs without counsel.

### 3.2 RS-002 — How specification-driven trade buyers navigate distributor sites · **RESOLVED (medium confidence)**

*Feeds the intent model, DEC-001, and the search-vs-hero above-fold contest.*

**Findings, convergent across independent industry sources:**

- Site search carries outsized importance in B2B because buyers frequently search by exact identifiers — a UPC, a part number, or a SKU — rather than the descriptive terms a consumer would use.
- Treating part-number search as an edge case is a named failure mode; for many B2B buyers it is the primary path. Zero-result data in B2B typically points to real catalogue or synonym gaps, and the faster known items resurface, the more buyers spend.
- Electrical, plumbing and HVAC suppliers specifically serve contractors who reorder the same items on tight schedules; a single transposed character in an exact code returns nothing on a basic search engine.
- Part-number queries carry lower search volume but dramatically higher purchase intent, and buyers searching part numbers are simultaneously comparing across multiple distributors — making live inventory status, volume pricing tiers and lead times decisive.
- Many B2B buyers do not know the exact name of the accessory or spare part they need, and instead know the product it attaches to — so compatibility search is a distinct requirement.

**What this establishes for the FRS:**

| # | Implication | Affects |
|---|---|---|
| 3.2.1 | Part-number/SKU entry is a **primary discovery path** for AUD-1/2/3/4/5, not a secondary convenience | Intent model INT-1; above-fold allocation |
| 3.2.2 | **Compatibility-driven search** ("what fits this?") is a genuinely distinct intent, not a variant of category browsing | INT-8; related-product data requirements |
| 3.2.3 | Fault tolerance in identifier matching (transposition, spacing, manufacturer format variance) is a **functional requirement**, not a search-tuning nicety | Search requirements |
| 3.2.4 | Trade buyers comparing across distributors makes **stock and lead time** decisive at the decision moment — strengthening OQ-003 | OQ-003; stock module |
| 3.2.5 | Zero-result logging is an operational requirement with commercial value, not just diagnostics | Analytics plan |

> **Transfer argument, stated as the charter requires.** These sources describe industrial/MRO and electrical distribution specifically — the same buyer type and catalogue structure as Eleczo — not generic DTC retail. The transfer is therefore direct rather than inferred. **However**, the majority are search-vendor publications with a commercial interest in emphasising search. The *direction* of the finding is well-supported; any *magnitude* claim is not. Confidence: **Medium.** This does not replace D-8; it means D-8 should be interrogated for exactly these behaviours.

> **Scope collision:** this finding points at global search as likely the highest-leverage element for the majority of Eleczo's named segments — and global search is currently **out of scope** per the charter. See RISK-02 and Q-7.

### 3.3 RS-005 — Hero carousel evidence · **RESOLVED**

*Resolves OQ-002 to the level of a firm recommendation.*

**Findings:**

- University of Notre Dame data shows only 1% of visitors clicked a carousel slide at all, and of those, 84% of clicks landed on the first slide.
- A Search Engine Land case study of three B2B websites found homepage carousel click-through rates of 0.65%, 0.22% and 0.16% — on one site, 32 clicks from roughly 5,000 visits.
- The mechanism has a name: banner blindness, documented since 1998, where users consistently ignore the most visually prominent elements when those elements resemble advertisements — the more a design element stands out, the more reliably users skip it.
- Meanwhile Baymard Institute finds 52% of top US e-commerce sites still run a desktop homepage carousel — the convention persists despite the evidence, partly because carousels let multiple pieces of content occupy prime real estate, which conveniently defuses internal disagreements about whose content deserves priority placement.

**Assessment.** The last point is the honest one and worth stating plainly: **the hero carousel is usually an organisational solution, not a user solution.** It exists because it avoids an argument about priority. The B2B-specific CTR figures (0.16%–0.65%) are the most relevant data here, and they are dismal.

**Recommendation (R-1, §8).** Not a confirmed requirement — Eleczo's own D-9/D-11 data outranks external evidence if it contradicts.

### 3.4 RS-007 — Magento edition feature availability · **RESOLVED (new)**

*Determines feasibility of DEC-001 Option C, and of the entire B2B/RFQ module set.*

**Findings:**

- Both editions share the same core; the split is a feature layer Adobe Commerce adds on top — a native B2B module, AI search and personalisation via Sensei, full content staging, advanced customer segmentation, and an Adobe support contract.
- Adobe Commerce's native customer segmentation defines audiences on purchase history, cart contents, location, lifetime value and customer attributes, and connects to Dynamic Blocks so merchandisers can serve different banners and content modules to different segments without developer work.
- The Adobe Commerce B2B suite covers company accounts, a quoting engine for online price negotiation, purchase orders with approval workflows, and quick order / requisition lists. Magento Open Source lacks these natively; adding them requires custom development or extensions.
- Current stable release line is **2.4.8-p4** (March 2026), with 2.4.9 also referenced as released.

**Unresolved sub-point, reported rather than papered over.** Sources **conflict** on Page Builder availability in Open Source. One states Page Builder has been available in both editions since Magento 2.4.3, having previously been Adobe Commerce exclusive; another states Open Source has no native equivalent, though third-party builders fill the gap; a third states Open Source has a basic version while content staging and scheduling remain Commerce-exclusive. **This cannot be settled from outside — it must be verified against the actual installation** (see §5). I am flagging the disagreement rather than picking the convenient answer.

**Consequences — this is the highest-leverage technical finding in the audit:**

| If Eleczo runs… | Then… |
|---|---|
| **Adobe Commerce** | DEC-001 Option C (state-adaptive) is natively feasible via Customer Segments + Dynamic Blocks. RFQ and bulk-purchase modules have native workflows to bind to. |
| **Magento Open Source** | Option C requires custom development or third-party extensions. RFQ/quote, company accounts and requisition lists **do not exist natively** and must be built or bought. The B2B module set moves from "configure" to "project". |

**This single unknown (D-12) changes the scope and cost of the B2B half of the platform.** It is the highest-priority item in §5.

### 3.5 RS-003 — Evidence on explicit audience self-selection interfaces · **QUEUED, NOT RESOLVED**

Researchable — not a stakeholder question. Not yet done. It matters because DEC-001 Option B rests on it, and self-selection interfaces have a mixed empirical record that should be established rather than assumed in either direction. **I will resolve this in the Research stage rather than ask Eleczo about it.**

### 3.6 RS-004 — Magento FPC strategies for segment-varied content, and SEO consequences · **PARTIALLY RESOLVED**

The architectural principle is established and already recorded in `standards/magento-standards.md`: a single `cacheable="false"` block disables full-page cache for the entire page; customer-specific data belongs in private content/sections or ESI. What remains unresolved is **Eleczo-specific** — their actual Varnish/FPC configuration and whether any personalisation infrastructure already exists. That is D-14, and it is an access question (§5), not a research question.

### 3.7 Additional analysis completed without stakeholder input

| ID | Finding |
|---|---|
| AF-01 | Eleczo's current positioning copy is written for consumers while its catalogue and stated segments skew trade — the composition mismatch is visible in the public copy alone |
| AF-02 | Bot mitigation permits search crawlers but blocks generic fetchers; no external automated audit is possible, and non-allowlisted AI crawlers likely cannot read the site |
| AF-03 | Public scale claims are mutually inconsistent across Eleczo's own properties (RISK-01) |
| AF-04 | The strapline "India's Largest Online Electrical Store" is an unsubstantiated superlative carrying consumer-protection exposure |
| AF-05 | `/upcoming-home` exists and is indexed — a parallel redesign may already exist that this project has not been shown (Q-8) |
| AF-06 | The charter's audience model is corroborated by Eleczo's own public segmentation — it is not an AI-invented persona set |

---

## 4. STAKEHOLDER QUESTIONS

Only questions where no research, inspection or analysis can produce the answer. Each is a **business decision or a private fact**, never something I could look up.

---

### Q-1 — What is the homepage commercially accountable for, in ranked order?

**Why it matters.** Four candidate objectives — direct revenue, lead/enquiry generation, brand credibility, SEO acquisition — are **mutually constraining, not additive**. They compete for the same above-fold space and pull the design in opposite directions. A homepage optimised for four co-equal objectives is optimised for none, and its acceptance criteria become unfalsifiable.

**FRS decision affected.** Success definition (§2 of FRS); module priority; every acceptance criterion; DEC-001.

**Answer required.** A ranked list, primary objective named first. Not "all of them."

---

### Q-2 — What is the revenue split, B2B vs B2C and across the named segments?

**Why it matters.** Eleczo's own copy names OEMs, dealers, contractors, public sector and end users — but naming a segment in marketing is not evidence of revenue. The homepage cannot rank seven audiences equally; something must be ordered first, and that ordering should follow money and strategy, not politeness.

**FRS decision affected.** DEC-001 composition model; section ordering; whether the consumer-facing copy tone identified in AF-01 is a mistake or a deliberate acquisition play.

**Answer required.** Rough proportions are sufficient. Percentages, or even "roughly two-thirds B2B by value, but B2C is growing fastest." Plus: current mix or target mix (D-3)?

---

### Q-3 — What evidence exists about these segments, and may I have it?

**Why it matters.** This determines whether personas are *researched* or *assumed*. Sales-team knowledge, support and enquiry logs, past customer research, or nothing formal — any answer is workable, but the answer changes the research plan and the confidence level attached to every downstream requirement.

**FRS decision affected.** Audience model (§3 of FRS); persona validity; whether AS-001…AS-003 can be retired or must stand.

**Answer required.** A list of what exists, with access. "Nothing formal" is a perfectly acceptable answer — it just converts this to a research task.

---

### Q-4 — What is the pricing display policy: B2B vs B2C, MRP, and GST?

**Why it matters.** Research (§3.1) has established the legal frame: MRP declaration is mandatory for consumer-facing e-commerce listings, while industrial/institutional supply and packages above 25kg/25L sit outside the Packaged Commodities Rules. What research **cannot** decide is Eleczo's commercial policy within that frame — whether trade pricing is public, gated behind login, quote-only, or tiered; and whether prices display GST-inclusive, ex-GST, or vary by customer type.

**FRS decision affected.** OQ-001; whether product modules are viable above the fold at all; caching architecture (price varying by customer group is a cache-key problem); product card design.

**Answer required.** A policy statement per customer type. And confirmation of whether Indian counsel has already ruled on the industrial-consumer exemption.

---

### Q-5 — Do the brand guidelines exist, and what are the approved colour codes?

**Why it matters.** The master development prompt refers repeatedly to "FRS-approved colour codes" and "Eleczo brand guidelines" as though they are established. **They do not exist anywhere in this project.** No colour value, type family, or logo rule has ever been supplied. Every UI section of every specification is blocked on this, and it is not researchable — I will not sample colours from the current site and present them as approved brand values.

**FRS decision affected.** Design system (all of it); contrast compliance calculations; performance budget (webfont weight); graphic design brief.

**Answer required.** The brand guidelines document, or: primary/secondary/accent hex values, type families and licences, logo files with usage rules. If none exist, say so — the answer then becomes "derive and propose a system for approval", which is a different and larger piece of work.

---

### Q-6 — Which scale claims are substantiable, and who signs off marketing claims?

**Why it matters.** RISK-01: brands are stated as both "40+" and "50+"; products as both "40K+" and "50k+"; company age as both "57 years" and "50+ years". "India's Largest Online Electrical Store" is an unsubstantiated superlative. Homepage copy that repeats these inherits the exposure, and India's consumer-protection regime treats unsubstantiated advertising claims as actionable.

**FRS decision affected.** Content strategy; trust module; every numeric claim in copy; legal review requirement.

**Answer required.** One confirmed set of figures with a basis, and the name of whoever approves claims.

---

### Q-7 — Is global search inside or outside this project's scope?

**Why it matters.** The charter excludes header, navigation and mega-menu — global search sits there. But research (§3.2) indicates part-number and SKU entry is likely the **primary discovery path** for most of Eleczo's named segments. If search stays out of scope, this project optimises a homepage body around a search box it cannot touch, for users whose first action is to use it. That may still be the right call for delivery reasons — but it must be a decision, not an oversight.

**FRS decision affected.** Scope boundary (D-17); above-fold allocation; whether INT-1/INT-2 are servable at all within this project.

**Answer required.** In scope / out of scope / partially (e.g. homepage-body search entry point in scope, global header search out).

---

### Q-8 — What is `/upcoming-home`, and does prior design work exist?

**Why it matters.** An indexed `/upcoming-home` page exists on the domain. If a redesign has already been designed or partly built, this project risks duplicating or contradicting it — and any existing work is valuable input, not a competitor.

**FRS decision affected.** Discovery inputs; whether this is a greenfield rebuild or a continuation; RISK-02 scope resolution.

**Answer required.** What it is, its status, and access to any existing design work, wireframes or agency deliverables.

---

### Q-9 — Does application/industry mapping data exist, and does an RFQ workflow exist operationally?

**Why it matters.** These are the two dependencies most likely to be discovered too late. "Shop by application" and "shop by industry" require an **application → product-type mapping dataset** authored by someone with electrical domain expertise — it is domain data, not UI, and no amount of frontend work substitutes for it. Similarly, a "Request a Quote" module without an owner, a routing rule and a response SLA behind it is worse than no module: it collects intent and drops it.

**FRS decision affected.** Whether SEC-05, SEC-06 and SEC-14 are buildable at all this release, or must be marked BLOCKED.

**Answer required.** Does the mapping data exist (yes/no/partially, and who owns it)? Does quote handling exist as an operational process today, with an owner and a response time?

---

### Q-10 — Who approves the FRS, and what is the release window?

**Why it matters.** Gate condition G-8 requires a named approver. Without one, the FRS cannot be finalised regardless of content quality, and there is no one empowered to make the trade-off calls in Q-1, Q-2 and Q-4.

**FRS decision affected.** Approval gate; phasing; prioritisation authority.

**Answer required.** A name, and any fixed deadline.

---

## 5. TECHNICAL ACCESS REQUIREMENTS

Facts that exist but are only obtainable from inside the environment. These are **not** questions requiring a business decision — someone with access can produce most of them in under an hour.

### 5.1 Priority order

| Priority | Item | Why this order |
|---|---|---|
| **1** | Magento edition + version | Changes scope and cost of the entire B2B half of the platform (§3.4) |
| **2** | Caching / personalisation architecture | Decides DEC-001 feasibility |
| **3** | Analytics access | Unblocks every outcome criterion |
| **4** | Repository access | Determines whether this is greenfield or brownfield |
| 5+ | Everything else | Refines rather than unblocks |

### 5.2 Platform

| # | Required | How to obtain | Unblocks |
|---|---|---|---|
| T-01 | **Magento edition** — Open Source, Adobe Commerce, Adobe Commerce Cloud, or Mage-OS | `bin/magento --version`, or Admin → footer, or `composer.json` (`magento/product-community-edition` vs `product-enterprise-edition`) | D-12 · DEC-001 · all B2B modules |
| T-02 | **Exact version** including patch level (2.4.7 / 2.4.8-p4 / 2.4.9) | Same | API validity; deprecation surface; security posture |
| T-03 | **PHP version, search engine** (OpenSearch/Elasticsearch + version), **database, cache backend** | `bin/magento info:dependencies`, `env.php` | Feasibility; performance ceiling |
| T-04 | **Deploy mode** (developer/default/production) | `bin/magento deploy:mode:show` | Whether current performance measurements are meaningful |

### 5.3 Theme and frontend

| # | Required | How to obtain | Unblocks |
|---|---|---|---|
| T-05 | **Theme in use** — Luma child, custom, Hyvä, PWA Studio | Admin → Content → Design → Configuration; `app/design/frontend/` | DEC-002; component model; effort estimate |
| T-06 | **Whether Page Builder is installed and in use** | Admin → Content → Pages → edit; `bin/magento module:status \| grep -i pagebuilder` | Resolves the source conflict noted in §3.4; determines the authoring surface |
| T-07 | Installed third-party extensions and customisations | `bin/magento module:status`; `composer.lock` | Upgrade risk; conflict surface; what already exists |
| T-08 | Existing frontend build tooling | Repo inspection | Whether the design system plugs into an existing pipeline |

### 5.4 Caching, CDN and personalisation

| # | Required | How to obtain | Unblocks |
|---|---|---|---|
| T-09 | **Full-page cache backend** — built-in vs Varnish; Varnish VCL if present | `env.php` `http_cache_hosts`; Admin → Stores → Configuration → Advanced → System | **D-14 · DEC-001** |
| T-10 | **CDN/WAF configuration** — confirmed Cloudflare (C-08); cache rules, bot-mitigation rules | CDN dashboard | Explains the 520 (C-07); determines whether real users or only agents are affected; AI-crawler visibility |
| T-11 | Any **existing personalisation or customer-segment infrastructure** | Admin; module list | DEC-001 Option C feasibility |
| T-12 | **Customer groups currently configured** | Admin → Customers → Customer Groups | Whether B2B/B2C price divergence (Q-4) is already modelled |
| T-13 | Any blocks currently set `cacheable="false"` on the homepage | Layout XML inspection | Likely the largest single performance finding, if present |

### 5.5 Data and integrations

| # | Required | How to obtain | Unblocks |
|---|---|---|---|
| T-14 | **Catalogue export** — real category tree, attribute set, brand list, SKU count | Admin export / DB query | Confirms §1.3/§1.4; reveals whether taxonomy supports application-based discovery (M-19) |
| T-15 | **Product attribute schema** — which technical specs are structured attributes vs free text | Admin → Stores → Attributes | Whether specification-driven discovery (INT-2) is possible at all |
| T-16 | **Seller/marketplace module** — which extension, what seller data is exposed | Module list | Whether sellers can be merchandised (M-05) |
| T-17 | Inventory/stock source of truth and its latency | Architecture review | OQ-003; stock module feasibility |
| T-18 | **ERP / PIM / payment / logistics / tax integrations** | Architecture review | Data contracts; failure behaviour |
| T-19 | Existing API surface (REST/GraphQL), and whether GraphQL is enabled | `bin/magento module:status`; endpoint probe | Frontend data strategy |

### 5.6 Analytics and measurement

| # | Required | How to obtain | Unblocks |
|---|---|---|---|
| T-20 | **GA4 (or equivalent) read access**, 6–12 months | Property access | **D-8 — every outcome criterion** |
| T-21 | **Google Search Console access** | Property access | SEO baseline; query data revealing actual part-number search behaviour (§3.2) |
| T-22 | **CrUX / field CWV data** for the homepage | GSC / PageSpeed / RUM | D-10; converts the PROVISIONAL performance budget into a baselined one |
| T-23 | **Internal site-search logs**, including zero-result queries | Search module / analytics | Directly tests the §3.2 finding against Eleczo's own users. **Highest-value single dataset in this list** |
| T-24 | Tag/analytics stack in place (GTM, GA4, others) | Site inspection / access | Tracking plan |
| T-25 | Prior A/B test records | Stakeholder / tooling | D-11 |

### 5.7 Repository, environments and access

| # | Required | Unblocks |
|---|---|---|
| T-26 | **GitHub repository access** — existing Magento theme/module code | Whether this is greenfield or brownfield; the master prompt instructs agents to adapt to an existing repo rather than replace it, which cannot be done unseen |
| T-27 | Branching model and deployment pipeline currently in use | Git workflow section; CI feasibility |
| T-28 | **Staging environment URL and credentials** | Any real testing; the live site returns 520 to automated tools (C-07) |
| T-29 | Rendered homepage export or screenshots, desktop and mobile | Current-state audit (D-9) — the only remaining route to it while 520 persists |
| T-30 | Local/dev environment setup instructions | Whether agents can run and verify anything |

---

## 6. TRUE BLOCKERS

Strictly limited to what genuinely prevents production of a **reliable** FRS. Useful-but-absent is not blocking, and has been excluded deliberately.

| # | Blocker | What it blocks | Why it is genuinely blocking |
|---|---|---|---|
| **B-1** | **Commercial accountability of the homepage, ranked** (Q-1 / D-1) | Success definition; module priority; all acceptance criteria | Without a ranked objective, there is no basis on which to prefer any composition over any other. Every subsequent decision becomes arbitrary, and the FRS becomes a list of opinions with no adjudication rule. No research substitutes for a business decision about what the page is *for*. |
| **B-2** | **Magento edition and version** (T-01/T-02 / D-12) | B2B modules; RFQ; DEC-001 Option C; every backend requirement | §3.4 establishes that customer segmentation, company accounts, quoting and requisition lists are Adobe Commerce features absent from Open Source. Writing requirements without knowing the edition means writing requirements that may be unbuildable — or specifying custom development that is unnecessary. Either error is expensive. |
| **B-3** | **Analytics baseline** (T-20 / D-8) | Every outcome acceptance criterion | The charter mandates two-tier acceptance criteria. Launch-verifiable criteria can be written without baselines; **outcome criteria cannot**. Without D-8 the FRS can be completed only in a degraded form that cannot prove whether the rebuild worked. |
| **B-4** | **Approved colour codes and brand system** (Q-5) | All UI, design system, contrast compliance | Not blocking the *FRS* — blocking everything after it. Recorded here because the master prompt assumes these exist and they demonstrably do not. Discovering this at design stage rather than now would waste a full cycle. |
| **B-5** | **Caching and personalisation architecture** (T-09/T-11 / D-14) | DEC-001 | DEC-001 cannot be decided without knowing whether state-adaptive content is architecturally available. Deciding it wrongly means either a homepage that defeats full-page cache, or a segmentation model that cannot be built. |

### Explicitly NOT blocking

Recorded so that this list stays honest and short:

| Item | Why not blocking |
|---|---|
| Revenue split (D-2) | Painful, but the FRS can proceed with a stated assumption (AS-004) carrying an invalidation trigger |
| Segment evidence (D-5) | Determines research depth and confidence labelling, not whether requirements can be written |
| Prior A/B tests (D-11) | Risk of duplicated effort, not a blocker |
| Frontend theme (D-13) | Blocks DEC-002 and effort estimation, not requirement writing |
| Content maintainer skill (D-15) | Blocks the authoring-surface decision, not the requirements themselves |
| Application mapping data (M-19) | Blocks *those modules*, which can be marked BLOCKED without stopping the FRS |
| Live site 520 (C-07) | Obstructs automated audit; a screenshot export (T-29) routes around it |

---

## 7. ASSUMPTIONS

Temporary working positions. **Each is labelled, owned, and carries an invalidation trigger — the observation that would prove it wrong.** None of these is a requirement, and none may be cited as one.

| ID | Assumption | Conf. | Invalidation trigger | Impact if wrong | Affects |
|---|---|---|---|---|---|
| AS-001 | The homepage is a meaningful entry point for a material share of sessions | **Low** | D-8 shows homepage entry below an agreed threshold | Project premise weakens; effort should shift to category/search surfaces | All |
| AS-002 | Repeat trade buyers largely bypass the homepage via deep links, search and reorder | Medium | D-6 shows high homepage entry among logged-in B2B | Composition must weight trade tasks far more heavily | DEC-001 |
| AS-003 | Mobile is a majority of consumer-side sessions and a minority of trade sessions | **Low** | D-8 device split contradicts | Responsive ordering strategy inverts | Composition |
| **AS-004** | B2B contributes the majority of revenue by value; B2C is the larger share by session count | **Low** | D-2 | Section ordering and tone both invert | DEC-001, ordering |
| **AS-005** | Eleczo runs **Magento Open Source**, not Adobe Commerce | **Low** | T-01 | If Adobe Commerce: segmentation, quoting and company accounts are native and the B2B scope shrinks substantially. Assuming Open Source is the *conservative* error — it over-scopes rather than under-delivers | B-2, all B2B |
| **AS-006** | No application–product-type mapping dataset currently exists | Medium | Q-9 | If it exists, application/industry shopping moves from BLOCKED to buildable | SEC-05, SEC-06 |
| **AS-007** | No formal brand guideline document exists; brand values must be derived and approved | Medium | Q-5 | If one exists, the design system is *applied* rather than *derived* — a materially smaller task | Design system |
| **AS-008** | The 520 response affects automated agents only, not real users | Medium | Any user-reported access failure, or CDN log evidence | If real users are affected, this is an incident that outranks the entire redesign | Audit method |
| **AS-009** | Trade buyers on this catalogue search by manufacturer part number as a primary path | Medium | T-23 site-search logs contradict | Above-fold allocation changes; search investment case weakens | Intent model |
| **AS-010** | The category set in §1.3 approximates the real taxonomy | Medium | T-14 catalogue export | IA built on a wrong taxonomy | IA |

> **Convention:** every assumption above is `AS-` prefixed and appears in `docs/05-assumptions-open-questions.md`. Any agent citing one **must** carry the `AS-` prefix through into its output. An assumption that loses its label on a handoff becomes a false premise, and that is how unvalidated beliefs end up in production.

---

## 8. RECOMMENDATIONS

Professional recommendations where Eleczo has not decided. **Recorded separately from requirements, as the charter requires.** Each is rejectable; none is confirmed; none may be implemented before the gate opens.

### R-1 — Do not build an auto-rotating hero carousel

**Basis:** §3.3. B2B homepage carousel CTRs of 0.16%–0.65%; ~1% overall interaction with 84% concentrated on slide one; banner blindness documented since 1998.
**Instead:** a single static hero with one message and one primary action, plus the content from slides 2-n relocated into the information architecture where it can actually be found.
**Honest caveat:** carousels persist on 52% of top e-commerce sites because they defuse internal disagreements about placement priority. If Eleczo has that disagreement, expect this recommendation to meet resistance — and note that the resistance is organisational, not evidential.
**Overridden by:** Eleczo's own D-9/D-11 data, which outranks external evidence.

### R-2 — Treat part-number and specification entry as a first-class homepage path

**Basis:** §3.2, and Eleczo's own catalogue depth.
**Recommendation:** the homepage body should provide a direct, prominent entry for known-item and known-spec intent (INT-1, INT-2), tolerant of format variance, with zero-result logging from day one.
**Dependency:** contingent on Q-7 (search scope). If global search stays out of scope, this becomes a homepage-body entry point that hands off to the existing search.

### R-3 — Decide DEC-001 as Option A or B until the edition is confirmed

**Basis:** §3.4, §5.4. Option C (state-adaptive) is native only on Adobe Commerce; on Open Source it means custom development plus full-page-cache complexity.
**Recommendation:** default to **Option A (fixed composition, ordered for the dominant segment, with clear routing rails for the secondary)** unless T-01 confirms Adobe Commerce *and* T-11 confirms segmentation infrastructure already exists. Option A is fully cacheable, SEO-stable, and cheapest to reverse.
**Reversal cost:** low. A fixed composition can be made adaptive later; an adaptive architecture is expensive to simplify.

### R-4 — Establish price display policy before designing any product module

**Basis:** §3.1. MRP declaration is mandatory for consumer-facing listings; industrial/institutional supply sits outside the Packaged Commodities Rules; price varying by customer group is a cache-key problem, not a display problem.
**Recommendation:** settle Q-4 before product cards are designed, because the answer determines whether product modules can be cached at all — which determines whether they can appear above the fold.

### R-5 — Remove unsubstantiated superlatives and reconcile scale claims before writing any copy

**Basis:** §1.4, AF-03, AF-04.
**Recommendation:** retire "India's Largest Online Electrical Store" unless substantiable; publish one reconciled set of figures. For a trade audience, specific and verifiable claims ("57 years", "600+ sellers", a named brand list) build more confidence than superlatives, which trade buyers discount automatically.

### R-6 — Investigate the 520 response as a standalone item, ahead of the redesign

**Basis:** C-07, C-08, AF-02.
**Recommendation:** confirm whether the 520 reaches real users. If it does, it is an incident that outranks this entire project. If it does not, confirm the bot-mitigation allowlist — because non-allowlisted AI crawlers cannot read the site, which increasingly matters for discovery.

### R-7 — Treat the application-mapping dataset as a content project with its own owner

**Basis:** M-19, AS-006.
**Recommendation:** if Eleczo wants application-based and industry-based shopping, commission the mapping data as a distinct workstream with a named domain-expert owner and a delivery date. It cannot be produced by design or engineering agents, and discovering that at build time strands two of the most differentiating modules.

### R-8 — Resolve the scope conflict before the FRS is drafted, not during

**Basis:** RISK-02, Q-7.
**Recommendation:** whichever way Q-7 is answered, record it in `04-decision-log.md` as DEC-003 with its rationale. An unrecorded scope change is how a homepage-body project quietly becomes a full-site project without anyone approving the budget.

---

## 9. FRS COMPLETION PLAN

How I will proceed, what each stage needs, and what it produces. **No stage is skipped. No design or code work occurs at any point in this plan** — the plan ends at the approval gate, which is where build work begins.

### Stage 1 — Discovery (current)

| | |
|---|---|
| **Status** | In progress — this audit is its output |
| **Inputs** | Project history, FRS v0.1, discovery register, public research |
| **Work** | Answer D-1…D-19; resolve everything resolvable without stakeholders (done); reduce the stakeholder ask to its irreducible minimum (done — 10 questions) |
| **Output** | This audit; updated `01-discovery-register.md` |
| **Exit criteria** | Q-1…Q-10 answered or formally waived; §5 access granted or refused with reasons |
| **Blocked by** | Stakeholder response |

### Stage 2 — Research

| | |
|---|---|
| **Inputs** | Discovery answers; analytics access; site-search logs; catalogue export |
| **Work** | Complete RS-003 (self-selection interfaces) and RS-004 (Eleczo's actual caching architecture). Test §3.2's part-number finding against **Eleczo's own site-search logs** — external evidence is a hypothesis until checked against this catalogue's users. Establish current-state module inventory from T-29 export. Search demand analysis per segment. |
| **Output** | `06-research-log.md` populated with RS-002…RS-010, each with a stated transfer argument and confidence |
| **Exit criteria** | Every finding carries a source, a confidence level and a transfer argument; no finding recorded that no decision depends on |

### Stage 3 — Analysis

| | |
|---|---|
| **Inputs** | Discovery answers + research findings |
| **Work** | Build the evidence-based audience model. Map task → intent → module. **Challenge every conventional pattern against Eleczo's own data** — including the ones already listed as candidates. Identify which conventional modules the evidence does *not* support, and say so. Baseline established and dated. |
| **Output** | Audience model; intent model; keep/kill assessment per candidate module; baseline table |
| **Exit criteria** | Every candidate module has a justification or a rejection. Rejections are recorded as findings, not omissions |

### Stage 4 — Requirements

| | |
|---|---|
| **Inputs** | Analysis output |
| **Work** | Write requirements in the `RQ-nnn` block format. Every one carries register, priority, audiences, rationale with evidence reference, dependencies, two-tier acceptance criteria, non-functional impact and risks. Decide DEC-001, DEC-002 and DEC-003 (scope) with recorded consequences and reversal costs. |
| **Output** | Requirement set; decision records |
| **Exit criteria** | No requirement without a testable launch-verifiable criterion. No requirement marked *Confirmed* while a blocking Discovery item it depends on is open |

### Stage 5 — FRS Draft

| | |
|---|---|
| **Work** | Assemble into `02-frs-homepage-body.md`. Populate the traceability matrix. Registers kept strictly separate — confirmed / assumption / recommendation / open question never blended into prose |
| **Output** | FRS v0.5 draft |
| **Exit criteria** | Every section populated or explicitly marked blocked with the reason and the ID it awaits |

### Stage 6 — Self-Critique

| | |
|---|---|
| **Work** | The ten-perspective critical review from `standards/definition-of-done.md`: procurement buyer, first-time consumer, dealer/retailer, SEO, performance, accessibility, Magento engineer, content maintainer, commercial owner — and last, the **adversarial reader**, whose job is to find which requirement is unfalsifiable, which rationale is circular, and which "confirmed" item is actually an assumption wearing a requirement's clothing |
| **Output** | Critique findings log |
| **Exit criteria** | **A review producing no findings has not been performed and is rejected.** The adversarial pass in particular must produce findings or be re-run |

### Stage 7 — Revised FRS

| | |
|---|---|
| **Work** | Resolve critique findings. Anything unresolvable becomes a recorded `OQ-nn` — never quietly dropped |
| **Output** | FRS v0.9 |
| **Exit criteria** | Every critique finding resolved or logged with an owner |

### Stage 8 — Final FRS

| | |
|---|---|
| **Work** | Final consistency and traceability pass. Confirm every P0 requirement appears in the matrix, including blocked ones |
| **Output** | FRS v1.0, submitted for approval |
| **Exit criteria** | Gate conditions G-1…G-7 demonstrably met |

### Stage 9 — Approval Gate

| | |
|---|---|
| **Work** | Named approver signs (G-8). Any waived blocking item is converted to an `AS-nn` with an invalidation trigger, **in writing, in the gate file** |
| **Exit criteria** | Signature recorded |
| **Only then** | Design and build agents activate. Not before, regardless of schedule pressure |

### What I will do next, without waiting

Even with zero stakeholder response, the following is available now and I will proceed with it on request:

1. Complete **RS-003** (self-selection interface evidence) — resolves the last open input to DEC-001.
2. Complete the **search demand analysis** from public search data — partially substitutes for Search Console until T-21 is granted.
3. Draft the **cross-cutting requirements** (performance, accessibility, SEO, analytics, maintainability) — these derive from standards, not from Eleczo's private data, and are largely writable today.
4. Draft the **intent model** in full — it derives from how electrical products are specified, which is domain-general.

None of that produces design or code. All of it shortens Stage 4.

---

## 10. MY REQUIRED INPUT

Everything I can resolve myself has been resolved. This is the irreducible list.

**Answers needed (business decisions — no research substitutes):**

1. **What is the homepage commercially accountable for, ranked?** Revenue / leads / brand credibility / SEO acquisition. Primary first. *(Q-1 — true blocker B-1)*
2. **Revenue split, B2B vs B2C and across segments** — rough proportions are fine. And: serve the current mix, or a target mix? *(Q-2)*
3. **What segment evidence exists** — sales knowledge, support logs, past research, or nothing formal? *(Q-3)*
4. **Price display policy** per customer type: is trade pricing public, gated, or quote-only? GST-inclusive or ex-GST? *(Q-4 — the legal frame is already established; this is your commercial policy within it)*
5. **Brand guidelines and approved colour codes** — the document, or hex values, type families and logo rules. If none exist, say so. *(Q-5 — blocks all UI work)*
6. **Which scale claims are substantiable**, and who signs off marketing claims? *(Q-6)*
7. **Is global search in scope or out?** *(Q-7 — resolves a live contradiction between the charter and the master prompt)*
8. **What is `/upcoming-home`,** and does prior design work exist that I should be building on? *(Q-8)*
9. **Does application–product-type mapping data exist, and does a quote/RFQ workflow exist operationally** with an owner and an SLA? *(Q-9)*
10. **Who approves the FRS,** and is there a deadline? *(Q-10)*

**Access needed (someone with credentials, not a decision):**

11. **Magento edition and version** — one command: `bin/magento --version`, plus whether `composer.json` shows community or enterprise edition. *(T-01/T-02 — true blocker B-2; changes the scope of the entire B2B half of the platform)*
12. **Analytics read access** (GA4 or equivalent), 6–12 months, **plus internal site-search logs including zero-result queries.** *(T-20/T-23 — true blocker B-3; the search logs are the single highest-value dataset in this project)*
13. **Caching and CDN configuration** — Varnish/FPC setup, and whether any personalisation or customer-segment infrastructure exists. *(T-09/T-11 — true blocker B-5)*
14. **GitHub repository access**, plus a staging URL, or failing that a rendered export/screenshots of the current homepage on desktop and mobile — the live site returns 520 to every automated tool. *(T-26/T-28/T-29)*

**If you can send only three things, send:** the Magento edition (11), the analytics + site-search logs (12), and the ranked commercial objective (1). Those three unblock more than the other eleven combined.

---

## Audit status

| | |
|---|---|
| Discovery questions resolved by research | 6 of 19 (fully or partially) |
| Genuinely blocking items | 5 |
| Stakeholder questions remaining | 10 |
| Technical access items | 30, of which 4 are priority |
| New assumptions recorded | 7 (AS-004…AS-010) |
| New risks recorded | 2 (RISK-01 claims inconsistency, RISK-02 scope conflict) |
| Recommendations offered | 8, none implemented |
| **Approval gate** | **CLOSED** |
| **Build work authorised** | **No** |
