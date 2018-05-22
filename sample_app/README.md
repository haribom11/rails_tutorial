# Ruby on Rails チュートリアルのサンプルアプリケーション

これは、次の教材で作られたサンプルアプリケーションです。   
[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
[Michael Hartl](http://www.michaelhartl.com/) 著

## ライセンス

[Ruby on Rails チュートリアル](https://railstutorial.jp/)内にある
ソースコードはMITライセンスとBeerwareライセンスのもとで公開されています。
詳細は [LICENSE.md](LICENSE.md) をご覧ください。

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ bundle install --without production
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```

詳しくは、[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
を参考にしてください。

3.5.1 本章のまとめ
新しいRailsアプリケーションをゼロから作成したのはこれで3度目。今回も必要なgemのインストール、リモートリポジトリへのプッシュ、production環境まで行った
コントローラを新規作成するためのrailsコマンドはrails generate controller ControllerName アクション名 (省略可)。
新しいルーティングはconfig/routes.rbファイルで定義する
Railsのビューでは、静的HTMLの他にERB (埋め込みRuby: Embedded RuBy) が使える
常に自動化テストを使って新機能開発を進めることで、自信を持ってリファクタリングできるようになり、回帰バグも素早くキャッチできるようになる
テスト駆動開発では「red ・ green ・REFACTOR」サイクルを繰り返す
Railsのレイアウトでは、アプリケーションのページの共通部分をテンプレートに置くことでコードの重複を解決することができる
