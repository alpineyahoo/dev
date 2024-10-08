#!/usr/bin/env zsh

# This is the "jokes" script written by @alpineyahoo

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin"
jokes=$(
cat <<- EOF
	mpv --loop "https://www.nhk.or.jp/das/audio/D0002011/D0002011514_00000_A_001.m4a" # Pigeon
	mpv --loop "https://www.nhk.or.jp/das/audio/D0002011/D0002011518_00000_A_001.m4a" # School bell
	deno run https://examples.deno.land/hello-world.ts # Hello, World!
	curl "wttr.in/Matsumoto?lang=ja&format=4" # Weather in Matsumoto, Japan
	curl "wttr.in/Matsumoto?lang=ja"
	curl ja.wttr.in/Matsumoto
	fortune -f # list fortunes path
	fortune
	curl -sLI httpbin.org/status/200 -o /dev/null -w '%{http_code}' # 200
	curl -sLI httpbin.org/status/404 -o /dev/null -w '%{http_code}' # 404
	curl -sLI httpbin.org/status/418 -o /dev/null -w '%{http_code}' # 418
	curl -sLI httpie.io/hello -o /dev/null -w '%{http_code}' # 200
	curl -sLI example.com -o /dev/null -w '%{http_code}' # 200
EOF
)
echo $jokes | sd '\{http_code\}' '{http_code}\\n' | gum choose --limit=1 | zsh
