## アプリケーション名
Taskiary（タスキアリー）

## アプリケーション概要
学習や作業を記録し、同じ目標に向かう仲間とモチベーションを共有できる学習記録アプリ。 ストップウォッチで実測時間を記録し、日別の実績をグラフで可視化。コメント機能でユーザー同士が励まし合える。

## URL
https://taskiary.onrender.com

## テスト用アカウント
テスト用Email：aaa@aaa.com
テスト用Password：aaa123

## 利用方法
### タスクを登録する
1. トップページからユーザー新規登録をする。

2. ユーザー新規登録後、トップページの「記録する」ボタンを押し、タスク名と目標時間を入力する。

3. ストップウォッチで計測を開始し、時間を測る。

4. 実測時間の記録と一緒にタイトルとコメントを入力し「投稿する」ボタンを押す。

### コメント機能
1. 投稿のタイトルを押すと詳細ページへ遷移する。

2. 詳細ページ下部でログインユーザーのみコメント投稿が可能。

### 自分のタスクを管理する
1. ヘッダーのユーザー名にカーソルを合わせ、「マイページ」からマイページに遷移する。

2. マイページではこれまでの累計実測時間や直近1週間の実測時間を棒グラフで可視化できる。

## アプリケーションを作成した背景
学習のモチベーションが続かない・記録を習慣化できないという課題に直面した。 周囲の人と励まし合いながら学習を続けたいと思い、記録・振り返り・共有をシンプルに行えるアプリを開発した。

## 洗い出した要件
<img src="#" width="500">


## 実装した機能についての画像やGIFおよびその説明
|ページ|説明|
|---|---|
|[![Image from Gyazo](https://i.gyazo.com/a2e9e96660a21d17b0d1657d82b19773.png)](https://gyazo.com/a2e9e96660a21d17b0d1657d82b19773) width="300"/>|トップページ<br>投稿一覧表示|
|[![Image from Gyazo](https://i.gyazo.com/ac6f7973f0c9c529cee958964bd0e938.png)](https://gyazo.com/ac6f7973f0c9c529cee958964bd0e938) width="300"/>|ユーザー新規登録ページ<br>ニックネーム、メールアドレス、パスワードを入力すると登録できる|
|[![Image from Gyazo](https://i.gyazo.com/dd2d56a0ef3662f9e3d0ac1eb5eddb0e.png)](https://gyazo.com/dd2d56a0ef3662f9e3d0ac1eb5eddb0e) width="300"/>|ユーザーログインページ<br>メールアドレスとパスワードを入力するとログインする|
|[![Image from Gyazo](https://i.gyazo.com/245e4b0d7f53b17a52647268904158a3.png)](https://gyazo.com/245e4b0d7f53b17a52647268904158a3) width="300"/>|タスク登録ページ<br>タスクの名前と目標時間を登録|
|[![Image from Gyazo](https://i.gyazo.com/640ce1051dca55339b36e940246d79ff.gif)](https://gyazo.com/640ce1051dca55339b36e940246d79ff) width="300"/>|時間計測ページ<br>ストップウォッチ機能を使い、時間を計測することができる|
|[![Image from Gyazo](https://i.gyazo.com/787062d051b2fd8624fadf8ebe471feb.png)](https://gyazo.com/787062d051b2fd8624fadf8ebe471feb) width="300"/>|ポスト投稿ページ<br>実際に測った時間とともに、タイトルと任意のコメントをつけて投稿することができる|
|[![Image from Gyazo](https://i.gyazo.com/55d7650124531a6423f1c7dab52058dc.png)](https://gyazo.com/55d7650124531a6423f1c7dab52058dc) width="300"/>|ポスト詳細ページ<br>ポストを編集・削除することができる<br>コメントで他ユーザーと交流することができる|
|[![Image from Gyazo](https://i.gyazo.com/55d7650124531a6423f1c7dab52058dc.png)](https://gyazo.com/55d7650124531a6423f1c7dab52058dc) width="300"/>|ポスト詳細ページ<br>ポストを編集・削除することができる<br>コメントで他ユーザーと交流することができる|
|[![Image from Gyazo](https://i.gyazo.com/77aadc1d17c8647198194cd71ca592bb.png)](https://gyazo.com/77aadc1d17c8647198194cd71ca592bb) width="300"/>|投稿編集ページ<br>タイトル、タスク名、本文を編集することができる|
|[![Image from Gyazo](https://i.gyazo.com/bc73fa154f2c5845251a3fad90aabdbc.gif)](https://gyazo.com/bc73fa154f2c5845251a3fad90aabdbc) width="300"/>|ユーザーページ<br>累計実測時間、今週の合計時間、投稿数を見ることができる<br>棒グラフで1週間の実測時間を可視化することができる<br>これまでの投稿を見ることができる|
|[![Image from Gyazo](https://i.gyazo.com/a2ed1e31212a3a27ceb8a4a3adc09377.gif)](https://gyazo.com/a2ed1e31212a3a27ceb8a4a3adc09377) width="300"/>|プロフィール編集ページ<br>プロフィールの編集をすることができる|

## 実装予定の機能
今後実装予定の機能
- ユーザー検索機能
- フォロー機能
- いいね機能
- タグ付け機能
- 複数タスク登録機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/c90d52956579c712f5ffff2073865689.png)](https://gyazo.com/c90d52956579c712f5ffff2073865689)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/51daef9117d8b3d74ec7adaeb8584d12.png)](https://gyazo.com/51daef9117d8b3d74ec7adaeb8584d12)

## 開発環境
| 項目               | バージョン・サービス |
|------------------|-----------------|
| **言語**        | Ruby 3.2.0 |
| **フレームワーク** | Ruby on Rails 7.1.0 |
| **データベース**  | PostgreSQL 17.4（本番） / MySQL 8.0.10（開発） |
| **フロントエンド** | HTML / CSS / JavaScript |
| **認証機能**    | Devise 4.9.4 |
| **デプロイ環境** | Render |
| **バージョン管理** | GitHub |


## 工夫したポイント
- ストップウォッチ機能を導入し、実測時間を記録できるようにした

- 学習履歴を棒グラフで可視化し、進捗が見えるようにした

- 投稿にはコメント機能を実装し、ユーザー間で励まし合える仕組みを設けた

- プロフィール編集ページやマイページをわかりやすく整えたデザインにした

## 今後の課題
- 未実装機能の完成