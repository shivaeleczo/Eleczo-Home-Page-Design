# Approval Gate

The gate exists because the expensive failure mode on this project is not bad code — it is
**well-built work that implements the wrong requirement**. Design and build agents are
cheap to re-run; stakeholder trust and release windows are not.

## Gate status: CLOSED

## Conditions for opening

| # | Condition | Status |
|---|---|---|
| G-1 | All six blocking Discovery items answered or formally waived (D-1, D-2, D-5, D-8, D-12, D-14) | Not met |
| G-2 | Baseline metrics recorded with source and date | Not met |
| G-3 | DEC-001 (composition model) decided and recorded | Not met |
| G-4 | Every requirement carries ID, register, priority, rationale, dependencies, acceptance criteria | Not met |
| G-5 | Every requirement's launch-verifiable criteria are deterministic and testable | Not met |
| G-6 | Assumptions register complete; each assumption has an owner and an invalidation trigger | Not met |
| G-7 | Multi-perspective critical review completed and its findings resolved or logged | Not met |
| G-8 | Named approver has signed | Not met |

## What the gate blocks

**Blocked until open:** UI design, graphic design, final homepage copy, frontend code,
Magento module or template code, any commitment to a visual direction.

**Permitted before the gate:** discovery, research, analysis, requirement drafting,
wireframe-level *diagrams used to interrogate requirements* (explicitly not design),
technical spikes that answer a blocking question, and this repository's own scaffolding.

## Waiver

A blocking item may be waived only by the named approver, only in writing in this file,
and only by converting it into a recorded assumption (AS-nn) with an invalidation trigger.
Silent waiver is not available to any agent.

| Date | Item | Waived by | Converted to | Rationale |
|---|---|---|---|---|
| 2026-08-17 | **Frontend code + UI design**, for the purpose of producing a reviewable homepage body prototype | Shiva (`shivaeleczo` / `shiva@eleczo.com`), instructing directly | AS-011, AS-012, AS-013 | Stakeholder instructed the build explicitly after being shown the gate status and choosing scaffolding-only, then overriding. Recorded here rather than actioned silently. **This is a scoped waiver, not an opening of the gate** — see limits below |

### DES-WAIVER-001 — scope and limits

**What is waived.** Production of homepage body frontend code (HTML/CSS/JS) and the
visual design it necessarily embodies, as a **reviewable prototype**.

**What is NOT waived, and remains in force:**

| Still binding | Source |
|---|---|
| CC-01 — no unsubstantiated claim in any deliverable | `10-claims-register.md` |
| No brand value may be sampled from the live site and presented as approved | DS-05 |
| No fake functionality — a module with no backing data is marked BLOCKED, not simulated | Master prompt §13 |
| No Magento module or template code | RISK-03 / DS-01 — platform unverified |
| No production deployment | DEPLOYMENT.md preconditions |

**G-8 is still Not met.** No named FRS approver exists (DS-14 remains OPEN). This waiver
is an instruction from the stakeholder driving the work, recorded with their identity and
the date. It authorises a prototype; it does not constitute FRS approval, and it does not
promote any prototype decision to a requirement.

### Assumptions created by this waiver

| ID | Assumption | Conf. | Invalidation trigger | Impact if wrong |
|---|---|---|---|---|
| **AS-011** | Placeholder design tokens (colour, type, spacing) are acceptable as clearly-labelled *unapproved* values for prototype purposes, and will be replaced wholesale once DS-05 delivers an approved palette | **Low** | DS-05 supplies approved brand values, or the brand owner rejects derivation | Every colour and type decision in the prototype is discarded and re-made. Contrast compliance must be re-verified against the real palette |
| **AS-012** | DEC-001 **Option A** (fixed composition, ordered trade-first, with routing rails for secondary audiences) is the correct composition model | **Low** | DS-02 ranks the commercial objective differently, or DS-06 shows B2C dominates by value | Section ordering and above-fold allocation invert. Per R-3, Option A was chosen because it is the cheapest to reverse |
| **AS-013** | Part-number / specification entry is the primary above-fold action, ahead of a promotional hero | Medium | DS-03 site-search logs (T-23) show identifier search is not a primary path for Eleczo's own users | The hero reverts to a merchandising message and search demotes. This is R-2 acted on ahead of its evidence |

> **These three assumptions are the honest cost of building early.** They are recorded so that
> when DS-01…DS-05 land, it is unambiguous which parts of the prototype must be re-decided
> rather than adopted. An assumption that loses its label becomes a false premise.
