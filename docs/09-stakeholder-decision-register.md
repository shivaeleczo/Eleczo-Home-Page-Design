# STAKEHOLDER DECISION REGISTER

**Document:** `docs/09-stakeholder-decision-register.md`
**Version:** 1.0
**Date:** 14 August 2026
**Stage:** Requirements & Decision Resolution
**Predecessor:** `docs/08-frs-discovery-audit.md`
**Approval gate:** CLOSED. No design, UI or application code has been produced or modified.

---

## Scope of this register

This file contains **only decisions that cannot be resolved without Eleczo**. Anything answerable by research, analysis or inspection was removed and answered instead — see §3 of the Discovery Audit for the six Discovery questions closed that way.

**Nothing in this register is decided.** Recommendations are offered where a professional position can be defended, but each is explicitly rejectable and none has been implemented.

### Report on the repository/configuration inspection requested

The inspection could not be performed. Stated plainly rather than worked around:

| Target | Result |
|---|---|
| Repository / codebase | **No access.** No repository is mounted, linked or credentialed in this environment |
| Magento edition, version, module list | **Not obtainable.** Requires `bin/magento --version` / `composer.json` from inside the environment |
| Analytics configuration | **Not obtainable.** Requires property access |
| Search implementation | **Not obtainable.** Requires admin or codebase access |
| Brand/design tokens | **Not obtainable, and deliberately not substituted.** See DS-05 |
| Catalogue structure | **Partially inferred** from public category listings only — not a catalogue export |
| Theme / homepage architecture | **Not obtainable.** Live site returns HTTP 520 to all automated tooling |

**External fingerprinting was attempted as the only remaining route, and it failed — informatively.**

- BuiltWith could not resolve `eleczo.com` at all, returning a lookup error consistent with the CDN/bot-mitigation behaviour already recorded as C-07/C-08.
- One commercial profiler (6sense) does return a stack for Eleczo, and names its top detected technologies as WPForms, Hostinger and YouTube.

> ⚠️ **RISK-03 — The Magento premise has never been verified.** Every document in this project, including the master development prompt, assumes a Magento 2 platform. **No evidence in this project establishes that.** The only third-party stack signal available points at WordPress-adjacent tooling (WPForms is a WordPress plugin) — which is weak, possibly stale, and may reflect a marketing property rather than the storefront. It is not evidence *against* Magento. But it means the question is not "which Magento edition" — it is **"is the storefront Magento at all, and if so which edition."** Building a Magento-specific specification on an unverified platform premise is the single largest wasted-effort risk in the programme. Escalated as **DS-01**.

### Legend

| Field | Meaning |
|---|---|
| **Priority** | P0 = blocks FRS completion · P1 = blocks design/build · P2 = refines quality |
| **Blocks development?** | Whether build work can legitimately proceed without it |
| **Status** | OPEN · ANSWERED · WAIVED (converted to `AS-nn` with invalidation trigger) · SUPERSEDED |

### Summary

| ID | Decision | Priority | Blocks dev? | Owner | Status |
|---|---|---|---|---|---|
| DS-01 | Platform confirmation — is it Magento, and which edition/version? | **P0** | **Yes** | CTO / dev partner | OPEN |
| DS-02 | Homepage commercial accountability, ranked | **P0** | **Yes** | Business owner | OPEN |
| DS-03 | Analytics + site-search log access | **P0** | Partial | Marketing / CTO | OPEN |
| DS-04 | Caching, CDN and personalisation architecture | **P0** | **Yes** | CTO / dev partner | OPEN |
| DS-05 | Approved brand palette and design tokens | **P0** | **Yes** | Brand owner | **BLOCKED** |
| DS-06 | Revenue split and segment priority | P1 | Partial | Business owner | OPEN |
| DS-07 | Pricing display policy — B2B/B2C, MRP, GST | P1 | **Yes** | Commercial + Finance | OPEN |
| DS-08 | Global search scope ruling | P1 | **Yes** | Product owner | OPEN |
| DS-09 | Repository and staging access | P1 | **Yes** | CTO / dev partner | OPEN |
| DS-10 | `/upcoming-home` status and prior design work | P1 | Partial | Product owner | OPEN |
| DS-11 | Application–product-type mapping data ownership | P1 | Partial | Product / technical team | OPEN |
| DS-12 | RFQ workflow — does it exist operationally? | P1 | Partial | Sales operations | OPEN |
| DS-13 | Claims substantiation and sign-off authority | P1 | Partial | Marketing + Legal | OPEN |
| DS-14 | FRS approver and release window | P1 | **Yes** | Business owner | OPEN |
| DS-15 | Segment evidence availability | P2 | No | Sales / Support | OPEN |
| DS-16 | Marketplace — should sellers be merchandised? | P2 | No | Commercial | OPEN |
| DS-17 | Homepage body scope boundary | P2 | No | Product owner | OPEN |
| DS-18 | Accessibility obligation — legal or commercial? | P2 | No | Legal | OPEN |
| DS-19 | Fulfilment/payment policy display (COD, shipping threshold) | P2 | No | Operations | OPEN |

---

# SECTION A — BLOCKING DECISIONS (P0)

## DS-01 — Platform confirmation: is the storefront Magento, and which edition and version?

| Field | Detail |
|---|---|
| **FRS reference** | D-12 · DEC-002 · Audit B-2, T-01/T-02, RISK-03 |
| **Priority** | **P0** |
| **Blocks development?** | **Yes — absolutely** |
| **Owner** | CTO / incumbent development partner |
| **Status** | OPEN |

**Why it matters.** Two layers of risk sit here. First, the platform premise itself is unverified (RISK-03) — every specification written so far assumes Magento 2 on the basis of project convention, not evidence. Second, even granting Magento, the **edition decides scope**: customer segmentation, Dynamic Blocks, company accounts, negotiable quotes, purchase-approval workflows and requisition lists are Adobe Commerce features with no native Open Source equivalent. Sources also conflict on Page Builder availability in Open Source, which cannot be settled externally.

**Affected functionality.** Composition model (DEC-001 Option C); B2B/bulk purchase modules; RFQ; personalisation; caching strategy; the entire backend architecture section of the master specification; effort and cost estimation.

**Recommended option.** **Verify before specifying.** Run three commands and send the output:
```
bin/magento --version
grep -E "product-(community|enterprise)-edition" composer.json
bin/magento module:status | grep -iE "pagebuilder|b2b|customersegment|staging"
```
If the storefront is **not** Magento, stop specification work immediately and re-baseline — do not adapt a Magento specification to a different platform.

**Alternative options.** (a) Proceed on the assumption of Magento Open Source — conservative in that it over-scopes rather than under-delivers, but risks specifying custom development that already exists natively. (b) Proceed on the assumption of Adobe Commerce — under-scopes; risks specifying features that must actually be built.

**Consequences.** Specifying against the wrong edition means either paying to build what the licence already provides, or promising B2B functionality that does not exist and cannot be delivered in the timeline. Specifying against the wrong *platform* invalidates the entire technical half of the master specification.

---

## DS-02 — What is the homepage commercially accountable for, in ranked order?

| Field | Detail |
|---|---|
| **FRS reference** | D-1 · FRS §2 (Success definition) · Audit B-1, Q-1 |
| **Priority** | **P0** |
| **Blocks development?** | **Yes** |
| **Owner** | Business owner |
| **Status** | OPEN |

**Why it matters.** Four candidate objectives — direct revenue, lead/enquiry generation, brand credibility, SEO acquisition — compete for the same above-fold space and pull the design in opposing directions. They are mutually constraining, not additive. Without a ranked primary, there is no adjudication rule when two requirements conflict, every acceptance criterion becomes unfalsifiable, and the FRS degrades into a list of opinions.

**Affected functionality.** Every section priority; above-fold allocation; CTA hierarchy; all outcome acceptance criteria; DEC-001.

**Recommended option.** No recommendation offered — this is a commercial judgement I have no standing to make. What I will say: **pick one primary and rank the rest.** If the honest answer is "we don't know," the fallback is to rank by current revenue contribution (DS-06) and revisit after baseline.

**Alternative options.** Rank by current revenue · rank by strategic growth target · defer and treat the homepage as a routing surface with no commercial accountability of its own (a legitimate answer for a search-dominant site, and one the D-8 data might support).

**Consequences.** If left unranked, the composition will be decided implicitly by whoever designs it first, and no one will be able to say afterwards whether it worked.

---

## DS-03 — Grant analytics and internal site-search log access

| Field | Detail |
|---|---|
| **FRS reference** | D-8 · D-16 · Audit B-3, T-20/T-21/T-23 |
| **Priority** | **P0** |
| **Blocks development?** | Partial — blocks all *outcome* acceptance criteria; launch-verifiable criteria can proceed |
| **Owner** | Marketing / CTO |
| **Status** | OPEN |

**Why it matters.** The project charter mandates two-tier acceptance criteria. Launch-verifiable criteria are writable today; **outcome criteria are not**, because there is no baseline to measure against. Without this the FRS can be completed only in a degraded form that cannot prove whether the rebuild worked.

**The site-search logs specifically are the highest-value single dataset in this programme.** Research established that part-number and SKU entry is likely the primary discovery path for industrial and electrical distribution buyers — but that is external evidence about the category, not about Eleczo's users. The search logs, including zero-result queries, test that claim directly against this catalogue. Zero-result data additionally exposes real catalogue and synonym gaps that are fixable independently of any redesign.

**Affected functionality.** Success metrics; module keep/kill decisions; DEC-001; the intent model's priority ordering; the entire analytics tracking plan.

**Recommended option.** Grant read-only GA4 (or equivalent) access for 12 months, Search Console read access, and an export of internal site-search queries including zero-result terms.

**Alternative options.** Provide exports rather than access (slower, but workable) · provide a summary only (loses segmentation, which is where the finding lives) · decline, and accept an FRS with no outcome criteria.

**Consequences.** Declining does not stop the project; it means nobody will be able to demonstrate return on it.

---

## DS-04 — Confirm caching, CDN and personalisation architecture

| Field | Detail |
|---|---|
| **FRS reference** | D-14 · DEC-001 · Audit B-5, T-09/T-10/T-11/T-13 |
| **Priority** | **P0** |
| **Blocks development?** | **Yes** |
| **Owner** | CTO / hosting partner |
| **Status** | OPEN |

**Why it matters.** DEC-001 (the composition model) cannot be decided without knowing whether state-adaptive content is architecturally available. Getting it wrong produces either a homepage that defeats full-page cache entirely — a single uncacheable block is enough — or a segmentation model that cannot be built on the installed platform. This also bears on RISK-01/C-07: the confirmed Cloudflare layer needs its bot-mitigation rules examined, because non-allowlisted AI crawlers currently cannot read the site.

**Affected functionality.** DEC-001; every dynamic module's feasibility; performance budget; whether product/price modules can appear above the fold; AI-search visibility.

**Recommended option.** Supply the full-page-cache backend (built-in vs Varnish), the Varnish VCL if present, the CDN configuration and bot rules, the configured customer groups, and a check for any homepage blocks currently set `cacheable="false"`.

**Alternative options.** Provide a written architecture summary instead of configs (acceptable) · defer, and default DEC-001 to Option A (fixed composition), which is cache-safe on any architecture.

**Consequences.** The deferral path is genuinely viable and cheap to reverse — see DS-08's phased logic. Guessing is not.

---

## DS-05 — Approved brand palette and design tokens — **BLOCKED**

| Field | Detail |
|---|---|
| **FRS reference** | Audit Q-5, M-13…M-18 · Master prompt §10, §34, §36, §37 |
| **Priority** | **P0** |
| **Blocks development?** | **Yes — blocks all UI work without exception** |
| **Owner** | Brand owner / marketing director |
| **Status** | **BLOCKED — no approved source located** |

**Why it matters.** The master development prompt refers repeatedly to "FRS-approved colour codes" and "Eleczo brand guidelines" as established inputs. **They do not exist anywhere in this project.** No colour value, type family, weight, or logo rule has ever been supplied, and no approved source has been located.

**This is treated as BLOCKED and will remain so until an approved source is produced.**

> **I will not sample colours from the live website.** Extracted values would be observations of a current implementation of unknown provenance, approval status and accessibility compliance — and once written into a token file they would be indistinguishable from approved brand values to every downstream agent. That is exactly how an unverified observation becomes a production standard. The palette stays empty.

**Affected functionality.** Design system; every component; contrast-ratio compliance calculations (WCAG 2.2 AA cannot be verified against unknown colours); graphic design brief; performance budget (webfont weight).

**Recommended option.** Supply the brand guidelines document. If none exists, commission a brand-definition step as an explicit, separately-approved workstream — the design system is then *derived and approved*, not *applied*, which is materially more work and should be planned as such rather than absorbed silently.

**Alternative options.** (a) Supply hex values, type families and logo rules directly without a full guideline document — sufficient to unblock. (b) Authorise derivation from the existing site **as a proposal requiring explicit sign-off**, clearly labelled as unapproved until signed. This is the only route by which live-site colours could ever enter the system, and it requires your written instruction.

**Consequences.** Until this is resolved, the design system can define token *architecture* (naming, scale structure, semantic layering) but not token *values*. That architectural work is genuinely useful and can proceed now — see the FRS completion plan.

---

# SECTION B — HIGH-PRIORITY DECISIONS (P1)

## DS-06 — Revenue split and segment priority

| Field | Detail |
|---|---|
| **FRS reference** | D-2 · D-3 · Audit Q-2 · AS-004 |
| **Priority** | P1 |
| **Blocks development?** | Partial — can proceed on a labelled assumption |
| **Owner** | Business owner |
| **Status** | OPEN |

**Why it matters.** Eleczo's own public copy names OEMs, dealers, contractors, public sector and end users as target segments — but naming a segment in marketing is not evidence of revenue contribution. The homepage cannot rank seven audiences equally; something goes first. That ordering should follow money and strategy, not internal diplomacy.

**Affected functionality.** DEC-001; section ordering; copy tone; which intent classes get above-fold space.

**Recommended option.** Provide rough proportions — B2B vs B2C by value and by session count, plus an indication across segments. Precision is not required; direction is. Also state whether the homepage should serve the **current** mix or a **target** mix (D-3), because those can point opposite ways.

**Alternative options.** Proceed on **AS-004** (B2B majority by value, B2C larger by session count) with an invalidation trigger — workable but leaves the single most consequential ordering decision resting on a low-confidence assumption.

**Consequences.** Note the tension already visible without any data: Eleczo's current positioning copy is written for consumers while the catalogue and stated segments skew trade (AF-01). If B2B dominates revenue, the current homepage is speaking to the wrong audience, and that is a finding worth acting on.

---

## DS-07 — Pricing display policy: B2B vs B2C, MRP and GST

| Field | Detail |
|---|---|
| **FRS reference** | OQ-001 · D-19 · Audit Q-4, §3.1 |
| **Priority** | P1 |
| **Blocks development?** | **Yes — blocks all product module design** |
| **Owner** | Commercial + Finance, with legal confirmation |
| **Status** | OPEN |

**Why it matters.** Price display is not a styling question — it determines **cacheability**, and cacheability determines whether product modules can appear above the fold at all. Price varying by customer group is a cache-key problem before it is a display problem.

> **Compliance dependency — not a legal decision.** Research established the statutory frame: the Legal Metrology (Packaged Commodities) Rules 2011 require mandatory declarations including MRP on consumer-facing e-commerce listings, while commodities meant for **industrial or institutional consumers** — and packages above 25kg/25L — sit outside the Rules. **This is recorded as a compliance dependency requiring confirmation by Indian counsel, not as a settled legal position.** I am not a lawyer. What the research has done is convert an open question into a specific provision for counsel to rule on, which is a much cheaper thing to ask. **No requirement may cite this exemption until counsel confirms its application to Eleczo's catalogue and marketplace structure.**

**Affected functionality.** Product cards; offers module; caching architecture; above-fold composition; B2B pathway; customer-group configuration.

**Recommended option.** Settle the commercial policy first — is trade pricing public, login-gated, or quote-only? Are prices GST-inclusive, ex-GST, or variable by customer type? — then route the MRP/exemption question to counsel as a confirmation, not an open enquiry. Note that customer reviews indicate B2C prices are currently perceived as GST-inclusive, which suggests a policy already exists in practice and may simply need documenting.

**Alternative options.** Uniform public pricing for all (simplest, fully cacheable, but forfeits B2B differentiation) · fully gated trade pricing (strongest B2B fit, worst for SEO and first-visit conversion) · public consumer pricing with a quote path for trade (middle route).

**Consequences.** Designing product modules before this is settled means designing them twice.

---

## DS-08 — Global search: in scope, out of scope, or phased?

| Field | Detail |
|---|---|
| **FRS reference** | D-17 · RISK-02 · Audit Q-7, §3.2 |
| **Priority** | P1 |
| **Blocks development?** | **Yes** |
| **Owner** | Product owner |
| **Status** | OPEN |

**Why it matters — the conflict, stated rather than resolved.** Two governing documents disagree, and neither can simply be overruled:

| Source | Position |
|---|---|
| Project charter (`00-project-charter.md`) | Homepage **body only**. Header, primary navigation and mega-menu — and therefore global search — are **explicitly out of scope**. Dependencies there are logged, not delivered. |
| Master development prompt | Requests full specifications for **§17 Header & Navigation, §18 Global Search, §19 Mega Menu**. |

**Why this is not a trivial scope tidy-up.** Research established that part-number and SKU entry is likely the *primary* discovery path for most of Eleczo's named segments. If search stays out of scope, this project optimises a homepage body around a search box it is forbidden to touch, for users whose first action is to use it. Conversely, pulling global search in expands the project from a homepage body rebuild into a site-wide discovery programme, with a corresponding change in cost, timeline and testing surface. **Both readings are defensible. The decision is yours; I am documenting it rather than choosing.**

**Affected functionality.** Above-fold allocation; INT-1/INT-2 (known-item and known-spec intent); §17–§19 of the master specification; project cost and timeline.

**Recommended option — a phased approach rather than a binary ruling:**

| Phase | Scope | Rationale |
|---|---|---|
| **Phase 0 — now, no scope change** | Specify search *requirements* as a documented **dependency**: what the homepage body needs search to do (identifier tolerance, zero-result logging, compatibility queries). Delivered as a requirements annex, not an implementation. | Costs nothing, changes no boundary, and ensures the homepage body is designed against a known contract rather than a guess. |
| **Phase 1 — this release, small boundary extension** | Bring the **homepage-body search entry point** into scope — a prominent in-body entry for known-item and known-spec intent that hands off to the existing global search. | Captures most of the trade-user value identified in research at a fraction of the cost of owning global search. |
| **Phase 2 — separate initiative** | Global search itself: header integration, relevance tuning, synonym and identifier handling, mega-menu. Scoped, costed and approved on its own terms. | Prevents a homepage project silently absorbing a site-wide programme. |

**Alternative options.** Hard *out* — cleanest boundary, weakest outcome for trade users. Hard *in* — best outcome, but re-plan cost and timeline honestly and re-approve the budget.

**Consequences.** Whichever way this goes, **record it as DEC-003 in the decision log with its rationale.** An unrecorded scope change is how a homepage-body project quietly becomes a full-site project without anyone approving the spend.

---

## DS-09 — Grant repository and staging access

| Field | Detail |
|---|---|
| **FRS reference** | Audit T-26…T-30 |
| **Priority** | P1 |
| **Blocks development?** | **Yes** |
| **Owner** | CTO / development partner |
| **Status** | OPEN |

**Why it matters.** The master prompt instructs future coding agents to *"inspect the existing repository before creating files"* and *"adapt to it rather than replacing it."* That instruction cannot be followed against a repository nobody can see. Without it, the project cannot tell whether this is greenfield or brownfield — and brownfield work built on a greenfield assumption overwrites things.

Compounding this: the live site returns HTTP 520 to every automated tool, so **no external audit, Lighthouse run, or crawl is possible**. A staging environment is currently the only route to any current-state technical assessment.

**Affected functionality.** Component reuse strategy; theme architecture; repository structure section; all QA and performance verification; the entire brownfield/greenfield determination.

**Recommended option.** Read access to the storefront repository, plus a staging URL with credentials. Failing that, a rendered export or screenshots of the current homepage at desktop and mobile widths — the minimum viable substitute for D-9 (current module inventory).

**Alternative options.** Screenshots only (loses code-level insight, retains composition insight) · proceed greenfield with an explicit written acknowledgement that existing work may be duplicated or contradicted.

**Consequences.** Without any of these, every statement about the current implementation in the master specification will be marked "unverified," which materially weakens the document as an execution artefact.

---

## DS-10 — What is `/upcoming-home`, and does prior design work exist?

| Field | Detail |
|---|---|
| **FRS reference** | AF-05 · Audit Q-8, C-10 |
| **Priority** | P1 |
| **Blocks development?** | Partial |
| **Owner** | Product owner |
| **Status** | OPEN |

**Why it matters.** An indexed `/upcoming-home` path exists on the domain, which strongly suggests redesign work is already partly in flight. If designs, wireframes or agency deliverables exist, they are valuable input — and this project risks duplicating or contradicting them. There is also an SEO consideration: an indexed staging-style page competing with the live homepage is a technical issue in its own right.

**Affected functionality.** Discovery inputs; whether this is a rebuild or a continuation; possibly the whole design phase's starting point.

**Recommended option.** State what it is and its status, and share any existing design work. If it is an abandoned experiment, confirm that and consider deindexing it.

**Alternative options.** Treat as irrelevant and proceed greenfield — acceptable only if confirmed abandoned.

**Consequences.** Discovering an existing approved design *after* producing a competing one wastes a full design cycle and creates an unnecessary internal argument.

---

## DS-11 — Does application–product-type mapping data exist, and who owns it?

| Field | Detail |
|---|---|
| **FRS reference** | M-19 · AS-006 · Audit Q-9, R-7 |
| **Priority** | P1 |
| **Blocks development?** | Partial — blocks the affected modules only |
| **Owner** | Product / technical (electrical domain expert) |
| **Status** | OPEN |

**Why it matters.** "Shop by application" and "shop by industry" are among the most genuinely differentiating modules in the master prompt — and they are **not UI features**. They require a curated dataset mapping application and industry contexts to product types, authored by someone who understands electrical specification. No amount of frontend or design work substitutes for it. This is the dependency most likely to be discovered too late, at which point two flagship modules strand.

**Affected functionality.** Master spec §23 (Application-Based Shopping), §24 (Industry-Based Shopping); intent classes INT-5, INT-6, INT-7; potentially the buying-guides and industry-solutions sections.

**Recommended option.** If Eleczo wants these modules, commission the mapping dataset as a **distinct workstream with a named domain-expert owner and a delivery date**, running in parallel with design. If no owner can be assigned, mark both modules `BLOCKED` in the master specification now rather than designing UI for data that will not arrive.

**Alternative options.** Ship a reduced version using existing category and attribute data only (weaker, but honest) · defer both modules to a later release.

**Consequences.** Designing these modules without the data produces a convincing prototype backed by nothing — precisely the "no fake functionality" failure the master prompt prohibits at §13.

---

## DS-12 — Does an RFQ/quote workflow exist operationally?

| Field | Detail |
|---|---|
| **FRS reference** | M-22 · Audit Q-9 |
| **Priority** | P1 |
| **Blocks development?** | Partial |
| **Owner** | Sales operations |
| **Status** | OPEN |

**Why it matters.** A "Request a Quote" module is a form on the front and a **process** on the back. Without an owner, a routing rule and a response-time commitment, it collects purchase intent from your highest-value buyers and drops it — which is worse than not offering it. Note also the dependency on DS-01: native quoting exists in Adobe Commerce and does not exist in Magento Open Source.

**Affected functionality.** Master spec §31 (Request for Quote), §30 (B2B/Bulk Purchase); B2B journey completion; lead-generation objective if DS-02 ranks it highly.

**Recommended option.** Confirm whether quote handling exists today: who receives requests, how they are routed, and what the response-time commitment is. If no process exists, either establish one before launch or mark the module `BLOCKED`.

**Alternative options.** Route to existing sales email as an interim (acceptable if SLA is stated) · defer the module.

**Consequences.** An unstaffed RFQ form damages trust with exactly the buyers who are most expensive to acquire and most likely to talk to each other.

---

## DS-13 — Claims substantiation and sign-off authority

| Field | Detail |
|---|---|
| **FRS reference** | RISK-01 · AF-03/AF-04 · Audit Q-6 · `docs/10-claims-register.md` |
| **Priority** | P1 |
| **Blocks development?** | Partial — blocks all copy production |
| **Owner** | Marketing + Legal |
| **Status** | OPEN |

**Why it matters.** Eleczo publishes materially different figures for brand count, product count and company age across its own properties, and uses superlative market-position claims. Homepage copy repeating these inherits the exposure. India's consumer-protection regime treats unsubstantiated advertising claims as actionable.

**Full detail is in `docs/10-claims-register.md`. No value has been selected on your behalf.**

**Affected functionality.** All homepage copy; trust/credibility module; hero messaging; meta descriptions and structured data.

**Recommended option.** Confirm one substantiable figure per claim with its basis and as-at date, and name the person who approves marketing claims. For a trade audience, specific verifiable claims outperform superlatives — professional buyers discount superlatives automatically.

**Alternative options.** Drop numeric and superlative claims from the homepage entirely and rely on demonstrable trust signals (brand authorisations, certifications, service terms) — a defensible and low-risk position.

**Consequences.** Until resolved, the content agent is constrained: **no claim in the register may appear in homepage copy.**

---

## DS-14 — Who approves the FRS, and what is the release window?

| Field | Detail |
|---|---|
| **FRS reference** | D-18 · Gate condition G-8 |
| **Priority** | P1 |
| **Blocks development?** | **Yes — G-8 cannot be met without it** |
| **Owner** | Business owner |
| **Status** | OPEN |

**Why it matters.** The approval gate requires a named signatory. Without one the FRS cannot be finalised regardless of content quality, and — more practically — there is no one empowered to make the trade-off calls in DS-02, DS-06 and DS-07. Someone must also hold authority to waive a blocking item in writing, converting it to a recorded assumption.

**Affected functionality.** Gate; phasing; prioritisation authority; escalation path.

**Recommended option.** Name one individual with authority over commercial trade-offs, plus any fixed deadline or release window.

**Alternative options.** A small approval group (workable, but name a tie-breaker — committees do not resolve trade-offs).

**Consequences.** Without a named approver the project can produce documents indefinitely but can never start building.

---

# SECTION C — QUALITY DECISIONS (P2)

## DS-15 — What segment evidence exists?

| Field | Detail |
|---|---|
| **FRS reference** | D-5 · Audit Q-3 |
| **Priority** | P2 · **Blocks development?** No · **Owner** Sales / Support · **Status** OPEN |

**Why it matters.** Determines whether personas are *researched* or *assumed*, which sets the confidence label on every downstream requirement. Any answer is workable — "nothing formal" simply converts this into a research task.

**Affected functionality.** Audience model; persona validity; whether AS-001…AS-003 can be retired.

**Recommended option.** List what exists — sales knowledge, support and enquiry logs, past research — and grant access.
**Alternatives.** Arrange interviews with two or three sales staff instead (cheap, high-yield) · proceed on assumptions with confidence labelled Low.
**Consequences.** Low-confidence personas propagate low-confidence requirements; the FRS will say so explicitly.

---

## DS-16 — Should marketplace sellers be merchandised alongside products and brands?

| Field | Detail |
|---|---|
| **FRS reference** | D-4 · M-05 · OQ-003 |
| **Priority** | P2 · **Blocks development?** No · **Owner** Commercial · **Status** OPEN |

**Why it matters.** Eleczo operates a confirmed multi-seller marketplace with a stated seller-onboarding proposition. If seller identity affects buyer confidence, price or lead time, it belongs on the product card — which changes the card's data contract and its caching behaviour. Research also indicates trade buyers comparing across distributors weigh stock and lead time heavily at the decision moment.

**Affected functionality.** Product card component; trust module; stock/lead-time signalling; seller-facing acquisition messaging.

**Recommended option.** State whether sellers are a buyer-visible concept or an invisible fulfilment mechanism, and whether any contractual placement obligations exist with brand partners.
**Alternatives.** Keep sellers invisible (simpler; loses a trust lever) · surface seller ratings (needs review data that may not exist — do not fabricate it).
**Consequences.** Retro-fitting seller identity into product cards after launch touches every listing surface on the site.

---

## DS-17 — Exact boundary of "homepage body"

| Field | Detail |
|---|---|
| **FRS reference** | D-17 · RISK-02 |
| **Priority** | P2 · **Blocks development?** No · **Owner** Product owner · **Status** OPEN |

**Why it matters.** Promo/announcement bars, breadcrumbs and sticky elements sit ambiguously between header and body. Ambiguity here produces either duplicated work or a gap nobody owns.

**Recommended option.** Rule explicitly on each: announcement bar, sticky header behaviour on scroll, breadcrumbs, sticky mobile CTA. Resolve alongside DS-08.
**Alternatives.** Defer and handle case-by-case (creates repeated small arguments).
**Consequences.** Minor individually; collectively they are a recurring source of scope friction.

---

## DS-18 — Is WCAG 2.2 AA a legal obligation or a commercial standard?

| Field | Detail |
|---|---|
| **FRS reference** | OQ-005 · D-19 |
| **Priority** | P2 · **Blocks development?** No · **Owner** Legal · **Status** OPEN |

**Why it matters.** The standards documents already treat WCAG 2.2 AA as binding regardless, so this does not block. It matters for **severity classification**: whether an accessibility failure is a legal exposure or a quality defect changes how release-blocking decisions are made. Public sector buyers frequently carry accessibility procurement conditions, which makes it commercially material irrespective of statute.

**Recommended option.** Confirm the obligation level, and specifically whether any public-sector tender Eleczo bids for imposes accessibility conditions.
**Alternatives.** Treat as binding commercial standard without legal confirmation (current position — safe).
**Consequences.** None if treated as binding. Material if treated as optional and a tender requires it.

---

## DS-19 — Fulfilment and payment policy display

| Field | Detail |
|---|---|
| **FRS reference** | New — arising from public review analysis |
| **Priority** | P2 · **Blocks development?** No · **Owner** Operations · **Status** OPEN |

**Why it matters.** Public customer reviews reference a free-shipping threshold, a specific logistics partner, the absence of cash-on-delivery, and difficulty cancelling orders. These are trust-relevant facts that buyers evidently notice. Whether and how they surface on the homepage is a merchandising decision, and the underlying friction (no COD, no visible cancellation route) may be a conversion issue independent of any redesign.

> **Confidence caveat:** this is customer-reported, unverified, and drawn from a small and self-selecting review sample. It is recorded as a signal to check, not as fact.

**Affected functionality.** Trust module; service-proposition messaging; possibly checkout policy, which is outside this project's scope.

**Recommended option.** Confirm current shipping threshold, payment methods including whether COD is offered, and returns/cancellation policy — then decide which belong on the homepage.
**Alternatives.** Omit fulfilment messaging from the homepage entirely.
**Consequences.** Trust claims that contradict actual policy are worse than silence, particularly for first-time B2C buyers.

---

## Register status

| | |
|---|---|
| Decisions recorded | 19 |
| P0 blocking | 5 (DS-01…DS-05) |
| P1 | 9 (DS-06…DS-14) |
| P2 | 5 (DS-15…DS-19) |
| Decided by me | **0** |
| Colour values selected | **0 — BLOCKED by instruction and by principle** |
| Legal positions asserted | **0 — MRP treated as a compliance dependency awaiting counsel** |
| Scope conflicts silently resolved | **0 — DS-08 documents the conflict and offers a phased route** |
| Application code modified | **None** |
| UI produced | **None** |
| **Approval gate** | **CLOSED** |
