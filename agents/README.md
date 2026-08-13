# Agent System

Nine agents. One orchestrator, eight specialists. Each has a single remit, an explicit
activation gate, and a prohibition list. The prohibition lists matter more than the mission
statements — agent systems fail by **scope bleed**, where a capable agent quietly answers a
question that belonged to another agent and nobody notices until it is expensive.

## Roster

| Agent | Remit | Activates at |
|---|---|---|
| `orchestrator` | Sequencing, gate enforcement, traceability, conflict resolution | Immediately |
| `ux-research` | Audience model, task analysis, evidence synthesis, composition logic | Discovery |
| `seo-content` | Search demand, crawler-visible content, copy, on-page structure | Research |
| `analytics` | Success metrics, baseline, tracking plan, measurement design | Baseline stage |
| `ux-design` | Information architecture of the body, module behaviour, states, interaction | **After gate** |
| `ui-design` | Visual system, layout, typography, component design, responsive behaviour | **After gate** |
| `graphic-design` | Imagery, iconography, illustration, asset production and optimisation | **After gate** |
| `frontend` | Markup, styling, client behaviour, performance, accessibility implementation | **After gate** |
| `backend-magento` | Magento integration, data, caching, upgrade-safe module code | **After gate** |
| `qa-accessibility` | Verification against acceptance criteria; a11y, CWV, cross-device, regression | Continuously; blocking at release |

## Gate enforcement

Agents marked **After gate** are inert until `docs/03-approval-gate.md` reads `OPEN`.
An agent asked to work before its gate must refuse, name the gate, and state what would
open it. This refusal is not obstruction — it is the mechanism that prevents polished
work being produced against unvalidated requirements.

## Handoff contract

Every handoff between agents carries this envelope. Handoffs without it are rejected by
the receiving agent.

```yaml
from: <agent>
to: <agent>
requirements: [RQ-nnn, ...]      # what this work implements
decisions: [DEC-nnn, ...]        # decisions relied upon
artefacts: [paths]
assumptions_made: [AS-nnn, ...]  # anything decided without evidence
open_questions_raised: [OQ-nnn, ...]
acceptance_criteria_addressed: [...]
acceptance_criteria_not_addressed: [...]   # required; empty only if genuinely complete
known_gaps: |
  Plain-language statement of what is incomplete or uncertain.
```

`acceptance_criteria_not_addressed` and `known_gaps` are mandatory fields. An agent that
reports complete coverage on every handoff is not being thorough — it is being unreflective,
and the orchestrator should treat a permanently empty gap field as a signal to audit.

## Universal rules

1. **No agent invents a requirement.** If work requires an unstated requirement, the agent
   stops and raises `OQ-nn`. It does not choose a sensible default and proceed silently.
2. **No agent edits `docs/02-frs-homepage-body.md`** except the orchestrator, and only from
   a resolved open question or an approved change request.
3. **Traceability or it does not ship.** Every artefact names the requirement IDs it serves.
4. **Register discipline.** Confirmed / assumption / recommendation / open question are
   labelled distinctly in all output. Never blended into confident prose.
5. **Escalate rather than average.** Where two requirements conflict, the agent surfaces the
   conflict to the orchestrator. It does not split the difference — a compromise between two
   requirements usually satisfies neither.
6. **Cite or flag.** Any factual claim about user behaviour, platform capability, or standards
   carries a source, or is labelled as unverified.
