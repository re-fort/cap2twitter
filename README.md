# cap2twitter
キャプチャした画像をTwitterに投稿 for Mac OSⅩ

## Setup
1. `bundle install`
1. `.env`のKEY SECRET設定
1. `capture.sh`のYOUR_PATH変更
1. Automatorで`capture.sh`を実行するService作成
1. System Preferences -> Keyboard -> Shortcuts -> Service よりキーボードショートカットを割当
1. 割当したキーを押下すると、Twitterに画像投稿
