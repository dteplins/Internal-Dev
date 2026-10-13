# AlphaCIS AI Board of Directors

Nine AI directors who debate a business problem, vote until they agree, and hand you one
recommendation as a visual report: charts, diagrams, action plan, risks and the vote.

## Use it

Open a Claude Code session on this repo and type:

```
/board-meeting should we hire a second engineer or contract out after Adam's passing?
```

Or just say "ask the board about ..." in plain words.

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

The Chair (Claude) seats 5 to 7 directors per problem. They work through these rounds:

1. **Opening positions:** each director answers alone first.
2. **Cross-examination:** they challenge each other's positions.
3. **Vote:** the Chair drafts a resolution and the directors vote on it.

Consensus means every director approves, with conditions folded in. If dissent remains after
three votes, you see it in the report. It is never hidden.

## Make it smarter

The more of `board/company-profile.md` you fill in, the sharper the answers. The biggest gaps
right now:
- revenue, client count and margin by line
- cash
- outbound metrics

Connecting QuickBooks also helps: the CFO reads it directly. Directors only read connected
systems; they never send, post or change anything.
