# Company Profile: AlphaCIS

The board reads this before every meeting, along with `board/owner-briefing.md` (Dima's own
briefing, Oct 13 2026), which is the primary source. Lines marked **TODO** are gaps: the board
flags them as assumptions rather than guessing. *(from skills)* means taken from Dima's
pitch-deck and contract skills.

## Identity
- **Company:** AlphaCIS (Alpha CIS), managed IT services provider (MSP), Marietta, Georgia.
- **Owner:** Dmitriy "Dima" Teplinskiy, Managing Partner. Based in Cumming, GA.
- **Positioning:** "business-led technology". AlphaCIS is the client's technology partner that
  improves workflows and processes.
- **Identity guardrail:** managed IT first, automation second. Automation is added alongside
  managed IT, never replacing it. Any recommendation that breaks this must say so explicitly.
- **Sister business:** SalesHubHQ (saleshubhq.com), a GoHighLevel-based sales and marketing
  platform. It runs AlphaCIS's CRM, lead capture and lead magnets, with education-first content
  (the 5 R's: Reliability, Reputation, Readiness, Remarketing, Reach; Growth Engine webinars).

## Revenue lines
1. **Managed IT:** Essential, Complete Care and Elite Care tiers, sold on a Managed Services SOW plus MCSA.
2. **AI and workflow automation (new growth line):** custom builds with a fixed build fee plus monthly
   support with included dev hours.
3. **Projects and hardware resale:** server replacements, rack cleanups and the like, sourced through
   TD SYNNEX. Hardware priced on a 50% margin model.
4. **Outbound sales** as a new revenue line (per the briefing).

### Managed IT price list *(from skills, monthly)*
| Line | Elite Care | Complete Care | Essential Care |
|---|---|---|---|
| Care User | $45 | $75 | $35 |
| Care Device | $40 | $50 | $25 |
| Managed Server | $200 | $275 | $75 |
| Managed Cloud Server | $100 | $137 | $75 |

These prices are the same on every tier:

| Item | Price |
|---|---|
| Remote Care | $55/user |
| Site Fee | $265/site |
| Network/Firewall | $95/device |
| Compliance+ | $35/user |
| Backup | $265/server, $15/workstation, $5/mailbox |
| Physical Environment | $15/device |
| Security+ | quoted per deal |

Essential Care is a Tier 1 AI-assisted help desk only. It has no SLA, no projects and no onsite work.

**Contract terms:**
- **Length:** month to month (30-day notice), or 12, 24 (default) or 36 months with 60-day non-renewal notice.
- **Onboarding fee:** one month of services, non-refundable, due at signing.
- **Early exit:** either party may exit within the first 60 days.

### Automation pricing reference *(from skills, IDS Estimator)*
- **Price:** $26,000 build plus $3,000 a month, covering hosting, unmetered usage, fixes and 80 dev hours a year.
- **Year-one cost:** $62,000. Payback was modelled at month 5.
- **ROI method:** hourly rate = salary / 2,000. Recovered value = hours saved per day × 250 × rate.
- **Positioning vs. vendors:** others charge maintenance and then quote every feature separately. AlphaCIS includes dev hours and unlimited users.

## Strategy: AI and workflow automation
- **Target verticals:** manufacturing (priority), accounting and CPA firms, dealerships and automotive, healthcare.
- **Not targeting:** defense contractors (decided Sept 2026). ITAR blocks sending export-controlled data to commercial APIs, and CMMC is uncertain after DoD suspended Phase 2.
- **Funnel:**
  1. **Find:** Dripify LinkedIn automation, LeadMagic enrichment, email campaigns, and Reddit monitoring (RSS feeds a Google Sheet, Claude drafts replies, the setter posts them).
  2. **Capture:** the "Sorter" self-serve tool and other lead magnets, email-gated in SalesHubHQ.
  3. **Call:** Mark runs cold and warm call scripts.
  4. **Book:** a free Architecture Session with Dima. No lighter first step and no downsell.
  5. **Close:** paid implementation, support and managed IT.
- **Capacity:**
  - 3 to 5 Architecture Sessions a week, all run by Dima.
  - 2 to 4 videos a month, cut into short clips. The first batch is manufacturing only.
- **Website:** being repositioned to lead with AI and workflow automation. Google Business Profile still leads with managed IT.
- **Planned internal tool:** a multi-agent campaign builder (Claude Code subagents) for AlphaCIS campaigns.

### Decisions already locked (the board does not reopen these without new evidence)
- No defense contractors.
- The only booking ask is the free Architecture Session.
- LinkedIn invites use short, punchy Atlanta-network copy. Automated post-likes are removed.
- Re-engagement campaigns run from Dima's side, not Mark's.
- Reddit targets owners of businesses with 5 to 50 employees in vertical niches. No r/msp or competitor subs, no spammy behavior.
- Webinars are secondary to the Sorter. Content must not be dated by webinar references.

## Clients and active work
| Client | Engagement | Status |
|---|---|---|
| Interior Demolition Services (IDS) | IDS Estimator desktop app (RFP to proposal to Quickbase) | Runs end to end on mock adapters; web demo built |
| BurgerFi Peachtree Corners (Chunara Group) | Olo orders failing into Nextep POS; email-mode workaround that auto-prints kitchen tickets | Needs BurgerFi corporate approval; possible repeatable franchisee product |
| The Tomlin Group (CPA) | IT roadmap: Entra ID migration, pricing, Claude AI integration | Delivered; Change of Control addendum added to MCSA |
| George King | Move to updated tiers, recover unbilled Azure VM hosting | Proposal |
| SuperChicks Restaurants | Data rack cleanup, two-option pricing | Proposal |
| Server replacement client | Refurb Dell vs. new HPE ProLiant | Proposal, 50% hardware margin |
| Internal billing review | 36 invoices: unbilled, under-billed and below-cost lines found | Corrective actions recommended |

## Team
| Person | Role | Notes |
|---|---|---|
| Dima | Managing Partner | Runs sales, architecture, every Architecture Session and client relationships |
| Mark | Appointment setter, full time (30+ hrs/week) | Works from Dima's LinkedIn, email and phone; automation outreach not yet live as of Sept 2026 |
| Joshua Evans | IT technician / engineer, contractor | Engaged Oct 2026 |
| Jeff Davis | Messaging and strategy partner (Comnexiom) | Outside collaborator |
| Adam Key | Engineer | Passed away early Oct 2026. Engineering capacity is a live issue |

**Operating stack:** Atera (RMM and tickets), Cynet (security / EDR), QuickBooks (billing; accepted
estimates become projects automatically), SalesHubHQ (CRM), Outlook/Teams, Zapier and Make, GitHub.

## Numbers (TODO: the board needs these most)
- **Revenue, client count and margin by line (managed IT vs. automation vs. projects):** TODO, or connect QuickBooks.
- **Monthly recurring revenue:** TODO
- **Cash in bank / runway:** TODO
- **Managed seats / devices:** TODO
- **Client churn, last 12 months:** TODO
- **Outbound metrics:** TODO. Covers dials, connects, Architecture Sessions booked and the session-to-close rate.
- **Technician utilization / ticket volume:** TODO (Atera)

## Goals and constraints
- **12-month goal:** TODO (the inferred direction is to grow automation as a second line on top of managed IT)
- **Risk appetite:** TODO. Default until set: conservative.
- **Regulatory:** CPA and healthcare clients bring FTC Safeguards Rule, IRS Pub 4557 and HIPAA exposure. TODO: confirm.
- **Competitors:** TODO. Covers local Atlanta / north Georgia MSPs and AI automation agencies.

## Open questions the board should keep on its agenda
These come from Dima's briefing.
1. When does Mark's automation outreach go live, and what booking rate counts as success?
2. Is 3 to 5 Architecture Sessions a week enough when Dima runs every one?
3. How is engineering capacity covered after Adam's passing?
4. Revenue, client count and margin by line are still missing.
5. Does BurgerFi corporate approve the Olo change, and can it become a repeatable franchisee product?

## Connected data sources
Directors may read these when they are connected to the session. They never write to them.

| Area | Sources |
|---|---|
| Finance | QuickBooks |
| Marketing analytics | Supermetrics, Windsor.ai |
| Meetings and notes | Fathom, Granola, Wispr Flow |
| Files and mail | Google Drive, Microsoft 365 (Outlook, Teams, SharePoint) |
| Sales | SalesHubHQ |
