# Analytics Tracking Plan

**Status: TEMPLATE.** Blocked on D-8 (baseline) and D-16 (stack).

## Purpose
Every outcome acceptance criterion in the FRS must be provable. This document is where that
proof is specified, before the build — not reconstructed afterwards from whatever happened
to be tracked.

## Baseline

| Metric | Value | Date range | Source | Caveats |
|---|---|---|---|---|
| Homepage entry rate | | | | |
| Sessions touching homepage | | | | |
| Homepage bounce/exit | | | | |
| Scroll depth distribution | | | | |
| Per-module CTR | | | | |
| Device split | | | | |
| Logged-in share | | | | |

Caveats are mandatory: consent banners, ad blockers, bot filtering, sampling and cross-device
gaps all distort these numbers. A baseline presented without them will be over-trusted.

## Event schema

```
event_name:        homepage_module_interaction
module_id:         <MOD-nn>
requirement_id:    <RQ-nnn>
interaction_type:  view | click | expand | submit | dismiss
position:          ordinal position in body
segment:           logged_in_type | anonymous
device:            
```

| Event | Fires when | Params | Serves criterion |
|---|---|---|---|
| | | | |

## Segmentation for reporting
Logged-in state · account type (B2B/B2C where available) · device · entry source ·
new vs returning.

Reporting on an undifferentiated total will hide the exact effect this project exists to
create, because the two audiences move different metrics in different directions and can
cancel each other out in aggregate.

## Known measurement limits
*Record what cannot be measured with the current stack, and what closing each gap would cost.*
