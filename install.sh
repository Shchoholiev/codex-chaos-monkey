#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 0 ]; then
  printf 'Usage: ./install.sh\nSet CODEX_HOME to use a custom Codex directory.\n' >&2
  exit 2
fi

script_dir="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
source_dir="$script_dir/root-monkey"
codex_dir="${CODEX_HOME:-${HOME:?HOME is not set}/.codex}"
destination="$codex_dir/pets/root-monkey"

for name in pet.json spritesheet.webp; do
  if [ ! -f "$source_dir/$name" ] || [ ! -r "$source_dir/$name" ]; then
    printf 'Missing or unreadable pet file: %s\n' "$source_dir/$name" >&2
    exit 1
  fi
done

if [ -L "$destination" ]; then
  printf 'The destination is a symbolic link; no changes made: %s\n' "$destination" >&2
  exit 1
fi

if [ -e "$destination" ]; then
  if [ -d "$destination" ] &&
     cmp -s "$source_dir/pet.json" "$destination/pet.json" &&
     cmp -s "$source_dir/spritesheet.webp" "$destination/spritesheet.webp"; then
    printf 'Chaos Monkey is already installed.\n'
  else
    printf 'A different installation already exists: %s\nMove it aside before installing.\n' "$destination" >&2
    exit 1
  fi
else
  mkdir -p "$codex_dir/pets"
  mkdir "$destination"
  cp "$source_dir/pet.json" "$destination/pet.json"
  cp "$source_dir/spritesheet.webp" "$destination/spritesheet.webp"
  printf 'Installed Chaos Monkey in %s\n' "$destination"
fi

printf 'Open Settings > Pets > Refresh, choose Chaos Monkey, then enter /pet.\n'
