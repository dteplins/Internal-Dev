#!/usr/bin/env bash
# Builds the universal board-meeting skill for claude.ai, Cowork and Claude Code.
# Source of truth:
#   .claude/skills/board-meeting/  the skill (procedure, directors, playbooks, template)
#   board/                         AlphaCIS data (profile, briefing, preferences)
# Output: dist/board-meeting.skill (a zip). Install it from the file card's "Save skill" button,
# or upload it in claude.ai under Settings > Capabilities > Skills.
set -euo pipefail
cd "$(dirname "$0")/.."

SRC=.claude/skills/board-meeting
OUT=dist/board-meeting
rm -rf dist && mkdir -p "$OUT"
cp -R "$SRC"/. "$OUT"/

# Bundle a dated snapshot of the AlphaCIS data so the skill works where there is no repo.
mkdir -p "$OUT/references/alphacis"
for f in company-profile.md owner-briefing.md owner-preferences.md; do
  cp "board/$f" "$OUT/references/alphacis/$f"
done
{
  echo "# AlphaCIS snapshot"
  echo
  echo "Built $(date -u +%Y-%m-%d) from the Internal-Dev repo (commit $(git rev-parse --short HEAD))."
  echo "A live \`board/\` folder or fresh connector data overrides these files."
} > "$OUT/references/alphacis/README.md"

# Refuse to ship em dashes or stray placeholders in the instructions.
if grep -rln $'—' "$OUT" --include=*.md; then echo "Em dash found in the files above"; exit 1; fi

# Package: the archive's top-level folder must be the skill name.
( cd dist && python3 - <<'PY'
import zipfile, pathlib
root = pathlib.Path("board-meeting")
with zipfile.ZipFile("board-meeting.skill", "w", zipfile.ZIP_DEFLATED) as z:
    for p in sorted(root.rglob("*")):
        if p.is_file() and p.name != ".DS_Store":
            z.write(p, p.as_posix())
    count = len(z.namelist())
print(f"Built dist/board-meeting.skill ({count} files)")
PY
)
