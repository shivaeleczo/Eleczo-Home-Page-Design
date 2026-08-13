# Project Charter — Eleczo Homepage Body

## 1. Purpose

Rebuild the homepage body of eleczo.com so that it serves seven distinct audiences with
materially different buying behaviour, without degrading into a generic e-commerce template.

## 2. Audiences

These are named in the governing scope and must each be explicitly accounted for in the FRS.
The table below records **what we currently believe** — it is unvalidated until Discovery closes.

| ID | Audience | Believed mode | Believed trigger | Evidence status |
|---|---|---|---|---|
| AUD-1 | OEMs | Repeat, spec-driven, part-number entry | Production schedule | Unvalidated |
| AUD-2 | Panel builders | Repeat, BOM-driven, multi-line orders | Project award | Unvalidated |
| AUD-3 | Electrical contractors | Mixed; urgent replacement common | Site need / breakdown | Unvalidated |
| AUD-4 | Dealers | Resale, price/margin and stock led | Stock replenishment | Unvalidated |
| AUD-5 | Retailers | Resale, brand-led assortment | Stock replenishment | Unvalidated |
| AUD-6 | End users | Low frequency, browse-first | Replacement / upgrade | Unvalidated |
| AUD-7 | Home buyers | One-off, project-led, guidance-hungry | New build / renovation | Unvalidated |

**Do not design for an averaged composite of these seven.** The average user does not exist;
designing for them produces a homepage that is second-best for everyone.

## 3. Boundaries

**In scope:** the homepage body region, its modules, content, code, and instrumentation.

**Out of scope:** global header, primary navigation, mega-menu, footer, site-wide IA,
category pages, PDP, cart, checkout, account. Where the homepage body depends on any of
these, the dependency is logged — it is not silently absorbed into scope.

## 4. Non-negotiable treatments

The following are **requirements**, not implementation concerns to be handled later.
Each has a binding standard in `standards/`.

- Magento feasibility and upgrade-safety
- Performance (Core Web Vitals, field data — not lab-only)
- Accessibility (WCAG 2.2 AA target, pending confirmation of legal obligation)
- Analytics instrumentation and measurability
- SEO and crawler-visible content
- Editorial maintainability by non-technical staff

## 5. Ways of working

1. **Evidence before requirement.** Establish the problem, weigh evidence, then write the
   requirement — or log an open decision. Never write a requirement whose only justification
   is that competitors do it.
2. **Conventional patterns are candidates, not defaults.** Hero carousels, "featured brands"
   strips, testimonial rows, category tile grids and newsletter blocks must each earn a place
   against this site's own data. Absence of evidence is grounds for logging an open question,
   not for silent inclusion.
3. **Separate the four registers.** Confirmed requirement / assumption / recommendation /
   open question are recorded distinctly and never blended into prose.
4. **Unknown beats guess.** An unknown becomes research or an open question. A guess becomes
   a false premise that propagates silently through every downstream stage.
5. **Two-tier acceptance criteria.** Every requirement carries launch-verifiable criteria
   (deterministic) and, where relevant, outcome criteria (post-launch measurement window).
   Sign-off blocks only on the former.

## 6. Roles

| Role | Held by | Accountable for |
|---|---|---|
| Product owner | *TBD (D-18)* | FRS approval, priority calls, trade-off decisions |
| Orchestrator agent | See `agents/orchestrator.agent.md` | Sequencing, gate enforcement, traceability |
| Specialist agents | See `agents/` | Producing artefacts within their remit only |

## 7. Known unknowns at charter time

Nineteen Discovery questions are open (`01-discovery-register.md`). Six are blocking.
No requirement may be marked *Confirmed* while a blocking question it depends on is open.
