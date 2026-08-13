# Contributing

## Before anything else
Read `docs/03-approval-gate.md`. If the gate is CLOSED, no design, copy or code contribution
is authorised, regardless of how ready it feels.

## Branching
```
discovery/<D-nn>-short-name
research/<RS-nn>-short-name
req/<RQ-nnn>-short-name
build/<RQ-nnn>-short-name
```

## Commit messages
```
<agent>: <RQ-nnn|D-nn|DEC-nnn> <what changed>

Why. What is still incomplete.
```

## Rules that are not negotiable
1. No artefact without a requirement ID.
2. No requirement invented at implementation time — raise `OQ-nn` and stop.
3. The FRS is edited only by the orchestrator, only from an approved change request.
4. Registers stay separate: confirmed / assumption / recommendation / open question.
5. Every PR states what it did **not** cover. Blank gap sections get sent back.
