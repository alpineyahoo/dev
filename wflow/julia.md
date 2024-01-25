# Julia のプロジェクト開発設定
## Basic
いつものように`direnv`を使用<br>
プロジェクト内に`Project.toml`が作成され、そこにパッケージ情報が記載される
## Global settings
`.zshrc`に以下を追記:
```shell:.zshrc
alias julia='julia -q' # メッセージ出力抑制
export JULIA_DEPOT_PATH=/path/to/julia_depot # ホームディレクトリが散らかるのを避けるため julia のルートパスを ~/.julia から変更
export JULIA_PROJECT=@main # デフォルトで使用する仮想環境を$JULIA_DEPOT_PATH/environments/main に指定
```
## Local settings
ローカルプロジェクトディレクトリ内`.envrc`に以下を記載:
```shell:.envrc
export JULIA_PROJECT=$PWD # ローカルプロジェクトの Project.toml を利用する指定
```
## REPL
```shell:REPL
] add <package_name> # "]" でPkgモード, add でパッケージ追加
status # 現在使用中の Project.toml の場所を表示(グローバルなら@mainの場所, ローカルなら$PWDが表示される)
Ctrl-D # REPLを抜ける
```
## 関連Gist
ほぼ同じ内容が[ココ]()にあります
