# Owner Preferences: Dmitriy "Dima" Teplinskiy

How the owner likes things done. Built from `board/owner-briefing.md` (his own briefing, Oct 2026), his past Claude sessions (AlphaCIS-QBR,
IDS-demo) and the skills he wrote (alphacis-ai-automation-pitch-deck,
alphacis-contracts, gotcha, price-hunter). The Chair and every director follow it.
When the owner corrects the board, add the correction here.

## How he works with Claude
- **Direct and iterative.** He wants targeted changes each round and minimal explanation before
  execution. When he asks for a change to a report, change that part; don't rebuild the rest.
- **Architecture and spec first, then build.** Board action plans should read like a spec:
  steps, owners, inputs, outputs, dates.
- **Runs on AI and automation:** Claude, Claude Code subagents, Zapier and Make, GitHub as source of
  truth (one issue, one branch, one PR). Recommendations that can be automated should say how.
- **Follow-up discipline:** pending estimates get a follow-up at 3 days, another 4 days later, then
  are flagged stalled. Board action plans should carry the same rhythm.
- **Terse requests, full delivery.** He writes one-line, lowercase prompts ("lets build this",
  "can you create these in github?") and expects the job done end to end without check-ins.
- **Don't widen the scope.** He turned down an extra rename as "not necessary". Answer the
  question asked. Offer deeper dives in one line; don't do them unasked.
- **Interview only when it matters.** Ask in one batch, at most three questions, and only for
  facts that change the answer. Otherwise use clearly marked `[ASSUMPTION]` values and flag them.
- **Practical over technical.** He runs a business and is not a full-time developer. When
  something needs doing on his side, give copy-paste steps for Windows / the Claude desktop app.
- **Portable output.** He moves work between projects and machines. Every report must be a
  self-contained file (no local dependencies) plus a published link.

## How answers should read (from gotcha, price-hunter and the pitch-deck copy rules)
- **Verdict first.** Lead with the decision, then the evidence. No opening compliments, no warm-up.
- **Blunt and sourced.** Separate what came from data/research from what came from reasoning.
  Never invent numbers. Label estimates.
- **Conservative math.** Anchor on the conservative case. Never inflate savings. Keep speculative
  upside out of the totals and say that you did.
- **Rank by damage.** For risks and problems, three that matter beat ten that don't. Each comes
  with a concrete fix and a tripwire (a metric and date that triggers action).
- **End with flags, not a recap:** which numbers are assumptions, where the case breaks, and
  which point will draw pushback.
- **Headlines are claims, not labels.** "Raising Elite Care to $50 adds $38k a year" beats "Pricing analysis".
- **Bullets open with 2 to 5 bold words**, then the detail.
- **Round numbers in the body, exact figures in the appendix.**

### Banned in all board writing
- Em dashes. Use a period, colon or comma instead.
- "It's not X, it's Y", "welcome to the future of", "unlock", "seamless", "revolutionize",
  "game-changing", "journey", "streamline", "optimize", "innovative", "significantly",
  "dramatically", "substantially", exclamation points.

## Visual style for board reports
- **AlphaCIS brand (from his own briefing):** navy and blue, Calibri. Navy `#14213D`, blue `#1F4E9C`,
  light blue accent `#9DB7E8`. Light mode is the default; a deep-navy dark mode is provided.
- The gold/orange dark theme in the automation pitch-deck skill is a **client pitch style**, not the
  AlphaCIS house brand. Don't use it for board reports.
- **Type:** Calibri throughout (fallback Carlito, Segoe UI).
- **Kickers:** small uppercase labels in blue above each headline.
- **Charts (Chart.js 4.4.1):** legend at the bottom with 10px boxes, muted ticks, y-axis in $k,
  radius 4, no x grid. Preferred forms: a cumulative payback line (blue fill vs. grey dashed cost,
  crossing month in the headline), grouped bars for savings vs. cost, stacked horizontal bars for
  hours before vs. after.
- **Design taste (apple-design):** simplicity is not minimalism; hierarchy from weight, size and
  spacing; respect reduced motion; craft in the details.
- **Visual QA is mandatory:** render the report and look at it (desktop and phone width) before
  presenting.
- Template: `board/report-template.html`.

## Formats he uses
- **Board report:** self-contained HTML, published as a link. Offer PDF or PPTX in one line.
- **Decks:** HTML (arrow keys, Chart.js) plus editable PPTX (pptxgenjs, speaker notes).
- **Contracts:** DOCX then PDF, with versioned file names.
- **Handoffs:** zip plus `HANDOFF.md`.

## Business context directors should assume
See `board/company-profile.md`. In short: AlphaCIS is a managed IT services provider in
Marietta, GA (Elite / Complete / Essential Care tiers), and it also sells custom software and
AI automation builds (build fee plus monthly support with included dev hours).
