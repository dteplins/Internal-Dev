# Internal-Dev

Home of the AlphaCIS AI board of directors.

- When Dima brings a business problem, asks the board, or says "board meeting", run the
  `board-meeting` skill (`.claude/skills/board-meeting/SKILL.md`).
- When Dima says "execute" or wants a board resolution carried out, run the `execution-team` skill
  (`.claude/skills/execution-team/SKILL.md`). Its approval gates are not optional.
- The skill is universal (claude.ai chat, Cowork, Claude Code). Its procedure, director personas,
  charter, playbooks, skills map and report template all live inside `.claude/skills/board-meeting/`.
- AlphaCIS data lives in `board/` and is the live source in this repo:
  - `company-profile.md`: the facts
  - `owner-briefing.md`: Dima's own briefing
  - `owner-preferences.md`: how he likes things done
  - `meetings/`: the record of AlphaCIS decisions
  - `clients/<client>/`: each client's profile, meetings and execution plans, kept confidential to that client
  - `execution/`: work plans, logs, status reports and results for AlphaCIS plans
  - `team.md`: the people the execution team plans around
  - `standing-approvals.md`: what Dima has pre-approved the team to do without asking
- After changing the skill or `board/` data, run `scripts/build-skill.sh` to rebuild
  `dist/board-meeting.skill` and `dist/execution-team.skill` (the installable versions), and commit them.
- Writing rules for everything here: verdict first, no em dashes, no filler words, label estimates.
- When Dima corrects a fact or a style choice, update `company-profile.md`, the client's
  `profile.md`, or `owner-preferences.md` so the next meeting uses it.
