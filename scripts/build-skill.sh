#!/usr/bin/env bash
# Builds the installable skills for claude.ai, Cowork and Claude Code.
#   board-meeting   the board of directors (bundles a dated snapshot of board/ profile data)
#   execution-team  the team that executes board resolutions (bundles the team roster)
# Standing approvals are never bundled: they only apply where the live board/ folder exists,
# so a revoked approval can't linger in an installed copy.
# Output: dist/<skill>.skill. Install from the file card's "Save skill" button, or upload in
# claude.ai under Settings > Capabilities > Skills.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf dist && mkdir -p dist
STAMP="Built $(date -u +%Y-%m-%d) from the Internal-Dev repo (commit $(git rev-parse --short HEAD))."

package() {
  local name=$1
  ( cd dist && python3 - "$name" <<'PY'
import sys, zipfile, pathlib
name = sys.argv[1]; root = pathlib.Path(name)
with zipfile.ZipFile(f"{name}.skill", "w", zipfile.ZIP_DEFLATED) as z:
    for p in sorted(root.rglob("*")):
        if p.is_file() and p.name != ".DS_Store":
            z.write(p, p.as_posix())
    count = len(z.namelist())
print(f"Built dist/{name}.skill ({count} files)")
PY
  )
}

check() {
  if grep -rln $'—' "dist/$1" --include=*.md; then echo "Em dash found in the files above"; exit 1; fi
}

# board-meeting
cp -R .claude/skills/board-meeting dist/board-meeting
mkdir -p dist/board-meeting/references/alphacis
for f in company-profile.md owner-briefing.md owner-preferences.md; do
  cp "board/$f" "dist/board-meeting/references/alphacis/$f"
done
cp board/design-system.md dist/board-meeting/references/design-system.md
printf '# AlphaCIS snapshot\n\n%s\nA live `board/` folder or fresh connector data overrides these files.\n' "$STAMP" \
  > dist/board-meeting/references/alphacis/README.md
check board-meeting; package board-meeting

# execution-team
cp -R .claude/skills/execution-team dist/execution-team
{ sed 's/^# Team (live copy)/# Human Roster/' board/team.md; printf '\n_%s_\n' "$STAMP"; } \
  > dist/execution-team/references/roles/humans.md
cp board/design-system.md dist/execution-team/references/design-system.md
check execution-team; package execution-team
