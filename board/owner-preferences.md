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

## Visual style: follow the AlphaCIS Design System
**`board/design-system.md` (v2, Oct 13 2026) is the source of truth for anything visual or written
for an audience. Read it before designing anything.** Bundled skills carry it as
`references/design-system.md`.
- **Brand book:** voice, color roles, type, spacing, components, icons, imagery, logos, motion and forms.
- **Decks:** the ENG Partnership grammar and palette, plus the section-divider variant.
- **Client and project range:** every past client palette and how to adapt to a new client.
- **Tokens and CSS variables:** use these exact values, never approximations.

The rules that most often get broken:
- `brand-navy` is identity; `action` is the only clickable blue. No purple, no orange, no
  gradients, no second accent hue, no emoji, no icon libraries (hand-drawn line icons only).
- Archivo for headlines, Calibri / Carlito for body, JetBrains Mono for numbers.
- Every section opens with an eyebrow, a takeaway headline and a lede.
- One dark band per page at most.
- Client work uses the client's palette and logo with Dima's structure and voice. Never put
  AlphaCIS colors on a white-labeled client piece.
- Missing assets: the logo files (`acis-mark.png`, `alphacis-lockup.jpg`) are referenced by the
  design system but are not in this repo yet. Until they are, set the name in Archivo instead of
  drawing a logo.

The board report template (`assets/report-template.html` in the board-meeting skill) is built on
these tokens. Visual QA is mandatory: render and look at desktop and phone width before presenting.

## Formats he uses
- **Board report:** self-contained HTML, published as a link. Offer PDF or PPTX in one line.
- **Decks:** HTML (arrow keys, Chart.js) plus editable PPTX (pptxgenjs, speaker notes).
- **Contracts:** DOCX then PDF, with versioned file names.
- **Handoffs:** zip plus `HANDOFF.md`.

## Business context directors should assume
See `board/company-profile.md`. In short: AlphaCIS is a managed IT services provider in
Marietta, GA (Elite / Complete / Essential Care tiers), and it also sells custom software and
AI automation builds (build fee plus monthly support with included dev hours).
