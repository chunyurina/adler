# メンタルセラピー（仮）


## 開発背景

新型コロナウィルスの感染拡大により、思うような外出ができず日々ストレスを抱える人が多くなっていることを肌で感じており、この現状を少しでも解決できるようなアプリを開発したいと私たちは考えました。このアプリのメインテーマは「チャットアプリ×心理学」で、コンセプトは「何気ない時間で相談ができるアプリ」になります。各人の悩みは他人との相談によって解決や納得することで解消することが多いと考えますが、現在のコロナ化では直接会うことが難しくなってきています。また相談相手が対人の場合、相手との価値観が合致していることが大前提となるため相談可能な人数が限定的になることや、スケジュールの調整、相手のコンディションを考慮する必要が生じます。そこで、私たちは「何気ない時間で相談できるアプリ」の開発に着手することにしました。

## アプリの概要
- 使用言語：Ruby on rails, JavaScript 
- 開発人数：4人
- 開発期間：30日間
- 使用方法：
1. 新規登録を行う。
2. トップページ下部の「Answer」ボタンをクリック。
3. 表示されている質問に回答する。
4. トップページ下部の「Question」ボタンをクリック。
5. 3つの質問に回答する。
![トップページ](https://i.gyazo.com/b92f58e4d57ef23beb1aaddb19325348.jpg)

## データベース設計

### articleテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|url|string|null: false|
#### Association

### messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|first_answer|integer|null: false|
|second_answer|integer|null: false|
|third_answer|integer|null: false|
#### Association
belongs_to: user

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|building_name|string||
#### Association
belongs_to: user

## 第三者の感想
- 使用者数：〇〇
- 意見：
- ユーザー1…
- ユーザー2…
- ユーザー3…

## 今後の改善案




