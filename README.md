![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/taikyunn/trello)
## Name
trello

## Overview
シンプルで使いやすい、タスク管理サービス。
機能が充実している現代のサービスだからこそ、よりシンプルなサービスが求められていると考えました。
タスク管理サービスtrelloをベースに作成しました。

#＃開発ツールと機能一覧

# インフラ
|名前       |備考                               |
|-----------|-----------------------------------|
|Docker     |コンテナ運用のため                 |
|Circle Ci  |自動テスト・自動デプロイ実装のため |
|puma       |アプリケーションサーバーに使用     |
|nginx      |webサーバーに使用                  |
|AWS        |ECS,ECRを使用                      |
|HEROKU     |AWSの練習用に使用                  |

# 言語とフレームワークなど

|名前                   |備考                     |
|-----------------------|-------------------------|
|Ruby                   |サーバーサイドの開発言語 |
|HTML, JavaScript, CSS  |フロントエンドの開発言語 |
|Ruby on Rails          |使用フレームワーク       |
|Linux                  |使用OS                   |

# 機能一覧
|名前                     |備考                           |
|-------------------------|-------------------------------|
|ログイン・ログアウト機能 |Dviseを使用                    |
|SNS認証機能              |FACEBOOK,TWITTER,GOOGLEで実装  |
|メール認証機能           |セキュリティー面強化のため導入 |
|リスト作成/編集/削除機能 |                               |
|カード作成/編集/削除機能 |                               |
|重要度機能               |Ratyを使用                     |
|カレンダー機能           |full Calenderを使用            |



