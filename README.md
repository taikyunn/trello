![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/taikyunn/trello)

## アプリ名
trello

## 概要
シンプルで使いやすい、タスク管理サービス。
機能が充実している現代のサービスだからこそ、よりシンプルなサービスが求められていると考えました。
タスク管理サービスtrelloをベースに作成しました。
現在AWSデバック作業を行っております。見えないページが多いので、herokuで確認していただけると幸いです。

## 開発ツールと機能一覧

# インフラ
|名前       |備考                                         |
|-----------|---------------------------------------------|
|Docker     |コンテナ運用のため                           |
|Circle Ci  |自動テスト・自動デプロイ(実装中)実装のため   |
|puma       |アプリケーションサーバーに使用               |
|nginx      |webサーバーに使用                            |
|rubocop    |Lintツール使用                               |
|AWS        |デプロイツール                               |
|ECR        |Dockerリポジトリに使用                       |
|ECS        |デプロイ                                     |
|EC2        |                                             |
|RDS        |データベースに使用                           |
|ACM        |HTTPS化（実装中）                            |
|ALB        |ロードバランサー                             |
|HEROKU     |AWSの練習用に使用                            |

# デプロイ先
|HEROKU |https://trello-test-3.herokuapp.com
|AWS    |trello-lb-424772846.ap-northeast-1.elb.amazonaws.com.users/sign_in                      |
（現在デバック作業中で開けないページが多いです。申し訳ございません。）

# 言語とフレームワークなど

|名前                   |備考                             |
|-----------------------|---------------------------------|
|Ruby                   |サーバーサイドの開発言語         |
|HTML, JavaScript, CSS  |フロントエンドの開発言語         |
|Ruby on Rails          |使用フレームワーク               |
|Linux                  |使用OS                           |
|bootstrap              |CSSに使用                        |
|font-awesome           |CSSに使用                        |

# 機能一覧
|名前                     |備考                           |
|-------------------------|-------------------------------|
|ログイン・ログアウト機能 |Deviseを使用                   |
|SNS認証機能              |FACEBOOK,TWITTER,GOOGLEで実装  |
|リスト作成/編集/削除機能 |                               |
|カード作成/編集/削除機能 |                               |
|重要度機能               |Ratyを使用                     |
|カレンダー機能           |full Calenderを使用            |


## テーブル設計

# users テーブル

|Column               |Type        |options               |
|---------------------|------------|----------------------|
|nickname             |string      |null: false           |
|email                |string      |null: false           |
|password             |string      |null: false           |

### Association

- has_many :lists
- has_many :sns_credentials

# listテーブル

|Column       |Type     |options                         |
|-------------|---------|--------------------------------|
|title        |string   |null: false                     |
|description  |text     |null: false                     |
|start_date   |datetime |                                |
|end_date     |datetime |                                |
|user_id      |integer  |null: false,foreign_key: true   |

### Association

- belongs_to :user
- has_many :cards

# cardテーブル

|Column     |Type     |options                           |
|-----------|---------|----------------------------------|
|title      |string   |null: false                       |
|memo       |text     |null: false                       |
|start_date |datetime |                                  |
|end_date   |datetime |                                  |
|list_id    |integer  |null: false,foreign_key: true     |
|star       |float    |                                  |

### Association
 - belongs_to :list

# sns_credentialsテーブル

|Column   |Type     |options                             |
|---------|---------|------------------------------------|
|provider |string   |null: false                         |
|uid      |string   |null: false                         |
|list_id  |integer  |null: false,foreign_key: true       |

### Association
- belongs_to :user