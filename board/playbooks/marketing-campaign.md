# Playbook: Marketing Campaign

Use when the ask is to build, plan, fix or scale a campaign, lead generation program, launch or
outreach push, for AlphaCIS or for a client. The board doesn't stop at "here's the strategy". It
agrees the approach, then produces the campaign: plan, calendar, budget, tracking and the assets.

Seat: **CMO, CRO, CFO, Customer Voice, Independent**, plus COO (who runs it week to week) and
Counsel if the campaign touches regulated claims, cold email law (CAN-SPAM), calling (TCPA), health or finance.

## 1. Pin the goal (Chair, at intake)
A campaign without a number can't be judged. Turn the ask into:
**[outcome] of [N] by [date] at a cost no higher than [$X per outcome]**,
e.g. "12 booked Architecture Sessions a month by Jan 31, at no more than $250 per booked session".
If the owner gave no number, propose one from the data and mark it `[ASSUMPTION]`.

## 2. Work the funnel backwards (CRO + CFO)
Start from the goal and divide back through each stage's conversion rate:
`deals ← proposals ← meetings booked ← conversations / replies ← leads ← reach`.
- Use the client's real rates when known. Otherwise use benchmark rates with a source, labelled.
- Output a table: stage, conversion rate, volume needed per month, source of the rate.
- The board must answer: **is the goal reachable with the team's capacity?** For AlphaCIS that
  includes Dima's 3 to 5 Architecture Sessions a week and Mark's call hours.

## 3. Who exactly are we reaching (CMO + Customer Voice)
- **Ideal customer:** industry, size, geography, job title of the buyer and the user.
- **Trigger events** that make them ready now (hiring, new location, failed audit, vendor issue, season).
- **Their words for the pain**, taken from reviews, Reddit, call notes and sales calls.
- **Where they already pay attention.**
- Customer Voice reacts in character as this buyer: what would make them ignore it, what would
  make them reply.

## 4. The offer
- **What they get, why now, the risk reversal, and the single next step.**
- One call to action per campaign. For AlphaCIS's automation line that is always the free
  Architecture Session (locked decision).
- **Lead magnet if needed:** use the `anthropic-skills:lead-magnets` skill. For AlphaCIS, the Sorter comes first.

## 5. Channels: pick few, score them (CMO, CFO, COO)
Score each candidate channel 1 to 5 on these, and choose the top two or three:
- reach to the ideal customer
- expected cost per outcome
- time to first result
- team effort
- fit with the brand

| Channel family | Tools available to this board |
|---|---|
| LinkedIn outbound | Dripify, LeadMagic enrichment |
| Cold email | `anthropic-skills:cold-email` |
| Calling | Mark's scripts |
| Paid search and social | `anthropic-skills:paid-ads`, `anthropic-skills:ad-creative`, Windsor.ai / Supermetrics data |
| Content and video | YouTube, LinkedIn, Reels |
| SEO and AI search | `anthropic-skills:seo-audit`, `anthropic-skills:ai-seo` |
| Community | Reddit monitoring |
| Partners and referrals | |
| Email nurture | SalesHubHQ |

The Independent Director argues for cutting the weakest channel.

## 6. Message and creative (CMO + Customer Voice)
- **Core message:** one sentence, in the buyer's words.
- **Proof points:** three, real and sourced.
- **Objections:** the top three, each with its answer.
- Message variants to test: two or three angles (e.g. cost, risk, time).
- Use `anthropic-skills:marketing-psychology` for framing.
- Use `anthropic-skills:copywriting` for page copy.
- Follow the writing rules of whoever the campaign is for (AlphaCIS: `board/owner-preferences.md`).

## 7. Sequence and calendar (COO)
- Week-by-week plan for the first 90 days: what launches when, who owns it, touches per prospect.
- Multi-touch sequences (e.g. LinkedIn invite, then email, then call, then email) with day offsets.
- Follow-up discipline: no lead goes quiet without a next touch scheduled.

## 8. Budget (CFO)
- Spend by channel and month.
- Expected outcomes per channel.
- Cost per outcome vs. the goal's ceiling.
- Base, best and worst case.
- Tools and software costs.
- People hours, valued at their cost.

## 9. Measurement and tests (CRO + CTO)
- **KPIs by funnel stage**, each with a target and a weekly review owner.
- **Tracking:** UTMs, CRM stages in SalesHubHQ, conversion events. Use `anthropic-skills:analytics-tracking`.
- **First tests:** one or two A/B tests with a sample size and a stop rule. Use `anthropic-skills:ab-test-setup`.
- **Kill-switch:** if a channel's cost per outcome is above X after Y weeks or Z spend, cut it and
  move the budget.

## 10. The execution package (built after the vote)
Produce the assets the resolution calls for and save them in the meeting folder under `assets/`:

| Asset | How |
|---|---|
| Campaign one-pager (goal, ideal customer, offer, channels, budget, KPIs) | Chair |
| Cold email sequence (3 to 5 emails with subject lines) | `anthropic-skills:cold-email` |
| LinkedIn invite and follow-up messages | CMO, in the locked house style |
| Call script and voicemail | CRO |
| Landing page copy | `anthropic-skills:copywriting` |
| Ad copy variants | `anthropic-skills:ad-creative` |
| Lead magnet outline | `anthropic-skills:lead-magnets` |
| Tracking plan and UTM sheet | `anthropic-skills:analytics-tracking` |
| 90-day calendar | COO, as a table and a chart in the report |
| Visuals (social graphics, banners) | Canva or Adobe Express, only if asked |

Then hold a quick **asset review**. The CMO, Customer Voice and Independent Director read the assets
against the resolution and the writing rules. Fix anything they flag before presenting.

Never send, post, publish, schedule or upload anything. Every asset is a draft for the owner.

## Report additions for campaigns
Besides the standard report sections, include:
- **Reverse funnel chart:** volume needed at each stage per month.
- **Channel scorecard:** scores per channel, with the chosen ones highlighted.
- **Budget split chart:** spend and expected outcomes by channel.
- **90-day calendar chart.**
- **Asset list** with links to each draft in `assets/`.
