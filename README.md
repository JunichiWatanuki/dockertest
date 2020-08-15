# Hello world docker action
このアクションは"Hello World"もしくは"Hello" + ログに挨拶する人物名を出力します。

## 入力

### `who-to-greet`
**必須** 挨拶する相手の名前。 デフォルトは `"World"`。

## 出力

### `time`
挨拶した時間。

## 使用例
uses: JunichiWatanuki/dockertest@v5
with:
  who-to-greet: 'Mona the Octocat'
