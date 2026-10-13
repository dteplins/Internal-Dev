# Internal-Dev

Home of the AlphaCIS AI board of directors.

- When Dima brings a business problem, asks the board, or says "board meeting", run the
  `board-meeting` skill (`.claude/skills/board-meeting/SKILL.md`).
- Board files live in `board/`:
  - `company-profile.md`: the facts
  - `owner-briefing.md`: Dima's own briefing
  - `owner-preferences.md`: how he likes things done
  - `charter.md`: the debate rules
  - `report-template.html`: the report template
  - `meetings/`: the record of AlphaCIS decisions
  - `clients/<client>/`: each client's profile and meetings, kept confidential to that client
  - `playbooks/`: how to run recurring problem types (e.g. `marketing-campaign.md`)
- Writing rules for everything here: verdict first, no em dashes, no filler words, label estimates.
- When Dima corrects a fact or a style choice, update `company-profile.md`, the client's
  `profile.md`, or `owner-preferences.md` so the next meeting uses it.
