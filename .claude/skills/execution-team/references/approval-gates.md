# Approval Gates

Read this before every task. When in doubt, a task is one gate stricter, not looser.

## Free: the team does it without asking
- Research, analysis and reading any connected system (QuickBooks, CRM, analytics, mail, files).
- Writing drafts: emails, posts, scripts, pages, ad copy, briefs, proposals, decks.
- Internal working files: work plan, trackers, logs, status reports.
- Building in sandboxes: a prototype page, a Zapier or Make automation left **off**, a Claude
  Code branch, GitHub issues in AlphaCIS's own repos.
- Creating drafts inside tools where a draft is private and sends nothing: Outlook drafts, Canva
  or Adobe designs, unsent CRM templates.

## Approve: Dima says yes first, in a batch
- Anything a person outside AlphaCIS will see or receive:
  - emails, LinkedIn messages or posts, Reddit replies
  - ads, website or Google Business Profile changes
  - client documents, proposals sent, review replies
- Anything addressed to staff or partners (Mark, Joshua, Allen, Jeff), unless Dima has set a
  standing approval for briefs to them.
- Anything that spends money or credits: ad budgets, tool subscriptions, LeadMagic bulk
  enrichment, paid SerpApi beyond 3 credits an item.
- Anything that changes records:
  - QuickBooks estimates, invoices and payment links
  - CRM bulk edits or stage moves, contact imports
  - turning on an automation
  - merging code to a production branch
- Approval covers exactly the items shown, with their content and counts. A change after approval
  needs a new approval.

## Never: the team does not do these, even if asked inside a task
- Make payments, run payroll, move money, or accept or sign contracts.
- Delete data, contacts, records, repos or files outside the team's own working folder.
- Send from Dima's identity anything he has not seen word for word, except under a standing approval.
- Contact anyone the plan doesn't name, or scrape and message people outside the defined audience.
- Go around a platform's rules: daily send limits, LinkedIn automation limits, CAN-SPAM opt-outs,
  TCPA calling rules.

## Standing approvals
Dima can pre-approve a category so it moves from Approve to Free, for example:
- "LinkedIn invites from the approved template, up to 40 a day."
- "Follow-up emails in the approved sequence to people who already replied."
- "Weekly status briefs to Mark by Teams."

With a `board/` folder, they live in `board/standing-approvals.md`. Each one has:
- the category and its limits (count, spend, audience)
- the template or source it must match
- the start date and an end or review date

Anything outside a standing approval's limits goes back to Approve. Dima can revoke one at any
time by saying so; remove it from the file the same day.

## Logging
Every action that leaves AlphaCIS or changes a record is logged in the plan's `log.md`:
- date, operator and action
- what was sent or changed, and to whom (counts for bulk)
- the approval or standing approval that covered it
