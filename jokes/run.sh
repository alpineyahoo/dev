#!/usr/bin/env zsh

# This is the "jokes" script written by @alpineyahoo

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin"
jokes=$(
cat <<- EOF
	mpv --loop "https://www.nhk.or.jp/das/audio/D0002011/D0002011514_00000_A_001.m4a" # Pigeon
	mpv --loop "https://www.nhk.or.jp/das/audio/D0002011/D0002011518_00000_A_001.m4a" # School bell
	deno run https://examples.deno.land/hello-world.ts # Hello, World!
EOF
)
echo $jokes | gum choose --limit=1 | zsh
