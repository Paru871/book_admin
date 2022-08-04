# README(パ Rails 輪読会第 2 章コード確認用)

## ドライバーさんの操作手順

- PC 内の都合の良い場所で下記のコマンドをターミナルから入力、ファイルをクローンしてコードをダウンロードする

```
$ git clone https://github.com/Paru871/book_admin.git
```

- ダウンロードできたら、ディレクトリ book_admin を VSCode などで開いて、ターミナルから下記のコマンドを 1 つずつ入力、これにより DB が初期状態となり、seed に入れたデータが入る(現在 Publisher が 1 件)

```
$ bundle
$ yarn
$ bin/setup
$ rails db:reset
```

- その後、`rails s`して Rails を起動する。
