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

## Numbers (from QuickBooks, pulled Oct 13 2026)
Source: QuickBooks Online, company "Alpha CIS", accrual basis. Re-pull before any meeting that
depends on them; these go stale.

**Balance sheet, as of Oct 13 2026**
| Line | Amount |
|---|---:|
| Bank (BUS COMPLETE CHK 0911) | $63,253.57 |
| Undeposited funds | $20,019.01 |
| Accounts receivable | $19,199.78 |
| Total assets | $102,472.37 |
| GA Dept. of Revenue payable (sales tax) | $5,645.51 |
| Prepaid revenue | $250.43 |
| Total liabilities | $5,895.94 |
| Accounts payable | $0.00 |
| Owner's pay and personal expenses (equity draw) | -$105,928.00 |
| Retained earnings | $274,752.89 |
| Net income, year to date | $38,786.75 |

Equity also shows partner accounts for **Allen** (-$59,967.06) and **Dmitriy Teplinskiy**
(-$51,068.15). TODO: confirm who Allen is; the briefing doesn't mention a second partner.

**Sales by customer, Oct 1 2025 to Sep 30 2026:** $627,291.45 total across 61 customers.
| Top customers | Sales |
|---|---:|
| TME & MEM Enterprises | $122,067.39 |
| IMG | $72,296.20 |
| Carlisle Construction, LLC | $68,931.20 |
| Master Window Systems | $46,710.06 |
| Templar Media | $40,226.35 |
| Vantage Point Solutions | $33,737.40 |
| Buckhead America | $14,949.00 |
| Bloomn Gardens | $14,080.97 |
| BL Team | $13,808.60 |
| Dillon Productions | $13,224.76 |

Full list in QuickBooks. Tomlin Group billed $1,350.00 in the period; IDS and BurgerFi do not appear.

**Sales by product/service, last 12 months** (QuickBooks item names)
| Item | Sales |
|---|---:|
| Manage IT Services | $388,555.95 |
| Labor | $89,857.12 |
| Equipment | $53,622.14 |
| License | $51,074.14 |
| Services | $22,649.85 |
| Hosting | $12,407.57 |
| MSP Labor Rate | $7,495.00 |
| Workstation Support & Monitoring | $5,070.00 |
| On-Site Support | $4,042.50 |
| Managed Backup | $2,852.50 |
| Cybersecurity Services | $2,640.00 |
| Late Fee | $1,802.08 |

The item list does not separate AI automation revenue from other labor or services.

**A/R aging, as of Oct 13 2026:** $19,199.78 total, $1,042.40 current, $18,157.38 overdue.
Largest overdue: Green Pastures $6,321.00 (of which $4,257.00 is 91+ days), Vantage Point
Solutions $2,773.81 (1 to 30), Master Window Systems $1,381.54 (1 to 30), Specialized Printing
$1,309.00 (91+), Paragon Distribution $1,196.12 (91+). Several customers carry credit balances.

**Profit and loss, Oct 1 2025 to Sep 30 2026** (QuickBooks summary figures)
| Line | Amount |
|---|---:|
| Total income | $671,146.29 |
| Services income | $670,580.49 |
| Gross profit | $473,009.56 |
| Gross margin (as reported) | 70.5% |
| Total expenses | $387,710.36 |
| Net income | $85,299.20 |
| Net margin (as reported) | 12.7% |

Largest cost lines:
| Line | Amount |
|---|---:|
| Contractors | $168,701.18 |
| Job Supplies (COGS) | $161,634.06 |
| Office Supplies & Software | $84,136.03 |
| Advertising & Marketing | $36,080.10 |
| QuickBooks Payments Fees (COGS) | $30,111.18 |
| Payroll Expense | $27,126.04 |
| Charitable Contributions | $13,995.00 |
| Insurance | $12,157.00 |
| Continuing Education | $10,495.00 |

Monthly income ranged from $38,570.74 (Oct 2025) to $73,717.83 (Jun 2026). December 2025 shows
COGS of $117,151.23 and net income of -$105,160.04; the only loss month. TODO: confirm whether that
was a one-off hardware pass-through or a booking error.

Monthly net income: Oct $5,201 · Nov $21,935 · Dec -$105,160 · Jan $30,282 · Feb $25,222 ·
Mar $4,761 · Apr $11,079 · May $2,180 · Jun $37,550 · Jul $13,669 · Aug $8,328 · Sep $30,253.

**Cash flow, same period:** operating +$93,386.45, financing -$27,087.28 (owner's pay and
partner accounts), net cash increase $66,299.17. Cash went from $8,365.59 to $74,664.76.

QuickBooks industry was set to 541512 Computer Systems Design Services on Oct 13 2026 (with
Dima's approval) so the P&L would run.

**Still missing**
- **Revenue split, managed IT vs. automation:** not separable from current QuickBooks items.
- **Client churn, outbound metrics, technician utilization:** not in QuickBooks. TODO.

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
4. Margin by line is still missing: automation revenue is not split out in QuickBooks.
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
