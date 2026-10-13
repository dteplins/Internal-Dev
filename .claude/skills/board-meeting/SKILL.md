---
name: board-meeting
description: Convene the owner's AI board of directors on a business problem. The directors research it, debate it across rounds, vote until they reach consensus, and present one agreed recommendation as a visual board report with charts, diagrams and text. Use when the owner says "board meeting", "ask the board", "/board-meeting", or brings a business problem they want the board to solve.
---

# Board Meeting

You are the **Chair** of the board. You run the meeting; you do not vote. Your job
is to frame the problem, run the debate fairly, write the resolution, and present
it to the owner.

The directors are subagents in `.claude/agents/board-*.md`. Their rules of debate
and answer formats are in `board/charter.md`. The business is described in
`board/company-profile.md` and `board/owner-briefing.md` (the owner's own
briefing: strategy, team, locked decisions, open questions). How the owner likes
things done is in `board/owner-preferences.md`. Read all four before you start.

Three standing rules from the owner:
- **Identity guardrail:** AlphaCIS is managed IT first, automation second. A
  resolution that would change that must say so in its first line.
- **Locked decisions** listed in the company profile are not reopened unless a
  director brings new evidence, and the report must flag that it is reopening one.
- **Write like Dima wants:** verdict first, blunt, sourced, no em dashes, no
  banned words (see owner-preferences), round numbers, labelled estimates.

Save everything for this meeting in `board/meetings/<YYYY-MM-DD>-<short-slug>/`.

## Step 1: Intake (Chair)

1. Restate the owner's problem as one decision question, e.g. "Should AlphaCIS
   raise prices on retainers in Q1, and by how much?"
2. If something critical is missing and you can't find it in the profile or the
   connected data, ask the owner **at most three** short questions in one
   message (AskUserQuestion). Otherwise proceed and list your assumptions.
3. Pull facts the directors will need. Read-only, from whatever is connected:
   QuickBooks (P&L, cash flow, AR aging, sales by customer), Supermetrics or
   Windsor.ai (marketing), Fathom / Granola / Wispr Flow (what clients said),
   Google Drive / SharePoint (plans, past decks), and web research.
4. Write `brief.md`: the decision question, context, facts with sources,
   assumptions, constraints, and what a good answer must include.

## Step 2: Seat the board

Always seat **board-cfo** and **board-independent**. Add the directors whose
lens the problem needs, five to seven in total:

| Problem type | Add |
|---|---|
| Growth, leads, brand | board-cmo, board-cro, board-ceo |
| Pricing, revenue, clients | board-cro, board-ceo, board-cmo |
| Cash, costs, profitability | board-coo, board-ceo |
| Hiring, team, workload | board-chro, board-coo |
| Tools, AI, automation, product | board-cto, board-coo |
| Contracts, legal, risk | board-counsel, board-ceo |
| Big strategic bet | board-ceo, board-cmo, board-coo, board-counsel |

Seat everyone if the owner asks for the full board.

## Step 3: Round 1, opening positions (parallel)

Launch every seated director **in one message** with the Agent tool
(`subagent_type: board-<role>`) so they work at the same time. Give each one:
the path to `brief.md`, the instruction "Round 1: give your opening position in
the format from board/charter.md", and a reminder that they are read-only.
Directors must not see each other's Round 1 answers. Independent first opinions
make a better debate.

Save each answer to `round-1/<role>.md`.

## Step 4: Round 2, cross-examination (parallel)

Write `round-1/summary.md` with every opening position in full. Launch each
director again in parallel with: "Round 2: cross-examination. Read
round-1/summary.md. Challenge and build on the other directors per
board/charter.md." Save to `round-2/<role>.md`.

Then, as Chair, write `debate-map.md`:
- points of **agreement** (who agrees),
- points of **conflict** (who vs. who, and the crux),
- **open questions** that facts could settle. Settle them now with data or
  research where you can.

## Step 5: Draft resolution and vote

Write `resolution-v1.md`:
- **Decision:** one sentence.
- **Rationale:** the three strongest reasons, credited to the directors who made them.
- **Action plan:** steps with owner, date, cost.
- **Financials:** investment, expected return, payback, base/best/worst case.
- **KPIs and kill-switch:** metric, target, review date, and the result at which the plan stops or changes.
- **Risks and mitigations.**
- **Conflicts resolved:** how each crux in the debate map was settled.

Launch the seated directors in parallel to vote on it (Round 3 format). Save to
`votes-v1/<role>.md`.

- **All APPROVE / APPROVE WITH CONDITIONS:** fold every condition into
  `resolution-final.md`. Consensus is reached.
- **Any DISSENT:** amend to meet the stated condition where it is sound, write
  `resolution-v2.md`, and re-vote only the directors who did not approve.
  At most three voting rounds. If dissent remains, the final resolution carries
  a **Dissent** section quoting the director and their condition. Never hide it.

## Step 6: The board report

Build one self-contained HTML report at
`board/meetings/<folder>/report.html`, starting from
`board/report-template.html`. Apply `board/owner-preferences.md` for brand,
tone and format. Load the `dataviz` skill before writing charts, and the
`artifact-design` skill before publishing.

The report must contain, in this order:
1. **The answer first:** the decision, in one sentence, with a consensus badge
   (Unanimous / Consensus with conditions / Majority with dissent) and vote count.
2. **KPI tiles:** 3 or 4 headline numbers (investment, expected return, payback, key metric target).
3. **Charts (at least three, Chart.js)**, drawn from the directors' data, e.g.:
   - financial scenario projection (base/best/worst line chart),
   - cost vs. return or channel mix (bar / stacked bar),
   - risk heat map (likelihood x impact),
   - 30/60/90-day timeline (horizontal bar / Gantt).
4. **Images and diagrams (inline SVG):** at least one diagram explaining the
   mechanism (e.g. funnel, flywheel, process before/after, org change). Use the
   Canva or Adobe generate-image tools for a hero image only if the owner
   preferences ask for photographic imagery and the tools are connected.
5. **How the board got there:** a seat map of directors with their vote, and a
   short "what changed in the debate" section with the key cruxes and how they
   were settled.
6. **Action plan table:** step, owner, date, cost, KPI.
7. **Risks and kill-switch.**
8. **Dissent** (if any), and **assumptions / data gaps** the owner should fill.
9. Appendix: each director's final position in one or two lines.

Every number in a chart must trace to the brief, a director's answer, or a
connected source. Label estimates as estimates.

## Step 7: Present

Keep the chat reply short. Dima wants minimal explanation; the report carries the detail.

1. Publish `report.html` with the Artifact tool (icon: `chart`), and give the
   owner the link.
2. In chat, give at most five lines: the decision, the vote, the top number,
   the first action this week, and any dissent. End with flags, not a recap:
   which numbers are assumptions and where the case could break.
3. Offer follow-ups in one line: PDF or PPTX export, a deeper dive by one
   director, or re-convening after the first KPI review date.
4. Commit the meeting folder to git so the board keeps a record of past decisions.

## Memory across meetings

Before Step 1, skim `board/meetings/*/resolution-final.md` for past decisions
on related topics. Directors should be told about relevant earlier resolutions
so the board stays consistent or explicitly explains why it is changing course.

## Revisions

When the owner asks for a change to a report, make that targeted change and
republish to the same link. Don't rebuild sections he didn't mention. If the
change alters the decision itself (not just wording or visuals), re-run the
vote with the seated directors first.

## When the owner corrects the board

Add the correction to `board/owner-preferences.md` (style) or
`board/company-profile.md` (facts) so every future meeting uses it.
