# Internal-Dev

Home of the AlphaCIS AI board of directors.

- When Dima brings a business problem, asks the board, or says "board meeting", run the
  `board-meeting` skill (`.claude/skills/board-meeting/SKILL.md`).
- The skill is universal (claude.ai chat, Cowork, Claude Code). Its procedure, director personas,
  charter, playbooks, skills map and report template all live inside `.claude/skills/board-meeting/`.
- AlphaCIS data lives in `board/` and is the live source in this repo:
  - `company-profile.md`: the facts
  - `owner-briefing.md`: Dima's own briefing
  - `owner-preferences.md`: how he likes things done
  - `meetings/`: the record of AlphaCIS decisions
  - `clients/<client>/`: each client's profile and meetings, kept confidential to that client
- After changing the skill or `board/` data, run `scripts/build-skill.sh` to rebuild
  `dist/board-meeting.skill` (the installable version with a dated snapshot of `board/`), and commit it.
- Writing rules for everything here: verdict first, no em dashes, no filler words, label estimates.
- When Dima corrects a fact or a style choice, update `company-profile.md`, the client's
  `profile.md`, or `owner-preferences.md` so the next meeting uses it.
