# AlphaCIS AI Board of Directors

Eleven AI directors who debate a business problem, vote until they agree, and hand you one
recommendation as a visual report: charts, diagrams, action plan, risks and the vote. They work
on AlphaCIS's business or any client's. For build asks like a marketing campaign, they also
produce reviewed drafts of the campaign itself.

## After the vote: the execution team

The board decides; the execution team (`/execute`) carries it out.

- **Project Manager (Claude):** turns the resolution into a work plan with owners, dates,
  dependencies and a capacity check on real people.
- **Eight AI operators:** Content, Design, Marketing Ops, Sales Ops, Automation Engineer,
  Finance Ops, Analyst, QA and Compliance.
- **People:** Mark, Joshua and Allen get clear task briefs for the work only a person can do.
- **Approval gates** (`.claude/skills/execution-team/references/approval-gates.md`):
  - research, drafts and internal setup happen on their own
  - anything external, costly or record-changing waits for your OK, in one batch
  - payments, contracts and deletions never happen
- **Standing approvals:** pre-approve a category in `board/standing-approvals.md` to give the
  team more room.
- **Weekly status:** KPI actuals against the board's targets. If a KPI crosses the kill-switch
  threshold, the team stops and recommends reconvening the board.

## Install it everywhere

`dist/board-meeting.skill` and `dist/execution-team.skill` are the installable skills. They work in claude.ai chat, Cowork and Claude Code.
1. Open the file in the Claude app and click **Save skill**, or upload it in claude.ai under
   **Settings > Capabilities > Skills**.
2. It syncs to your account, like your other AlphaCIS skills.
3. Whenever the skill or `board/` changes, rebuild it with `scripts/build-skill.sh` and re-upload.

The skill adapts to where it runs:

| Surface | Directors | AlphaCIS data | Report |
|---|---|---|---|
| Claude Code (this repo) | Parallel helper agents | Live, from `board/` | Published link |
| Cowork | Parallel helper agents | A selected `board/` folder, or the bundled snapshot | HTML file in outputs |
| claude.ai chat | Debate simulated by one model (labelled as such) | Bundled snapshot plus Project knowledge | HTML artifact |

In chat, keep one Project per client so each client's profile stays separate.

It also uses your other skills where they fit (`.claude/skills/board-meeting/references/skills-map.md`):
- **gotcha** stress-tests every draft resolution before the vote.
- **stop-slop** cleans every report and draft.
- **price-hunter** gets the CFO real equipment prices.
- **The AlphaCIS pitch-deck and contracts skills** become next steps.
- **The marketing skills** write campaign drafts.
- **LeadMagic** researches accounts, buyers and competitor ads, within credit-guard limits.
- **ui-ux-pro-max** handles any page or tool the plan needs.

## Use it

Type:

```
/board-meeting should we hire a second engineer or contract out after Adam's passing?
```

Or just say "ask the board about ..." in plain words.

For a client, name them:

```
/board-meeting for Master Window Systems: build a campaign to get 20 new dealer leads a month by March
```

The client gets their own folder in `board/clients/` (or their own Project in chat), and their
data never mixes with other clients'. The report is written to the client, with their name and logo.

For a build ask, the board doesn't stop at strategy. Following
the marketing campaign playbook, it does three things:
1. **Pins a number and a date**, maps how the buyer decides, then works the funnel backwards from the goal.
2. **Picks and scores channels**, then builds the budget and a 90-day calendar.
3. **Writes the drafts:** email sequence, LinkedIn messages, call script, landing page copy, ad
   variants and tracking plan. The CMO, the Buyer Psychologist, the Customer Voice and the Independent Director review
   every draft before you see it. Nothing is ever sent or posted for you.

You get a published report link plus a five-line summary in chat. Each meeting's full record
(brief, every director's position, the debate map, votes, report) is saved in
`board/meetings/<date>-<topic>/` and committed.

## The board

| Director | Lens |
|---|---|
| CEO | Strategy, positioning, opportunity cost |
| CFO (always seated) | Cash, margin, payback, scenarios |
| CMO | Demand, channels, messaging |
| CRO | Pipeline, pricing, retention |
| COO | Execution, capacity, 30/60/90 plans |
| CTO | Tech, AI, automation, build vs. buy |
| General Counsel & Risk | Contracts, compliance, risk register |
| Chief People Officer | Hiring, workload, incentives |
| Independent Director (always seated) | Devil's advocate, kill-switches, groupthink check |
| Buyer Psychologist | Why buyers decide or stall: forces of change, buying group, biases, trust gap |
| Voice of the Customer | Speaks as the target buyer; tests offers and messages |

The Chair (Claude) seats 5 to 7 directors per problem. They work through these rounds:

1. **Opening positions:** each director answers alone first.
2. **Cross-examination:** they challenge each other's positions.
3. **Vote:** the Chair drafts a resolution and the directors vote on it.

Consensus means every director approves, with conditions folded in. If dissent remains after
three votes, you see it in the report. It is never hidden.

## Make it smarter

- **Add a playbook** in `.claude/skills/board-meeting/references/playbooks/` for any other problem
  type you hit often (pricing, hiring, client IT roadmaps), then rebuild the skill.
- **Correct the board** when it gets something wrong. It writes the fix into the profile or
  preferences so the next meeting uses it.

- **Fill the gaps** in `board/company-profile.md`. QuickBooks now supplies revenue, margin, cash
  and receivables. Still missing:
  - automation revenue split from managed IT
  - client churn
  - outbound metrics (dials, sessions booked, close rate)

  Directors only read connected systems; they never send, post or change anything.
