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
