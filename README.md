# README
![logo](https://user-images.githubusercontent.com/62282502/83133907-83c46b00-a11e-11ea-900c-3a7130600928.png)

プログラミングスクールTECH::CAMPの最終課題にて某フリーマーケットサービスのクローンサイトを作成しました。
約1ヶ月間、４人チームでアジャイル開発を行いました。

## 🌐 App URL

### **http://54.168.43.9**
※Basic認証をかけています。ご覧の際は以下のIDとPassを入力してください。

- Basic認証
  - ID: Yuto-chan
  - Pass: ppf5p3d

**Chromeのバージョンアップデートでセキュリティ強化された為、現状Basic認証が度々求められる仕様となっています。そのため、ブラウザはSafariにて閲覧ください。**

## テストユーザー
- **購入者用アカウント**
  - メールアドレス: mayumi@gmail.com
  - パスワード: mayumayu
- **購入用カード情報**
  - 番号： 4242424242424242
  - 期限： 7/25
  - セキュリティコード：123
- **出品者用アカウント**
  - メールアドレス名: test@gmail.com
  - パスワード: testtest
　
## 🔨開発環境

- Ruby 2.5.1
- Rails 5.2.4.2
- MySQL
- Haml/SCSS
- jQuery
- VSCode（Visual Studio Code）
- AWS(EC2/E3)
- Github

## Occhiii623の担当箇所
### :ballot_box_with_check: チームのスクラムマスターを担当
スクラムマスターとしてスケジュール管理やタスクコントロール、メンバーのヘルパーとしての役割を担当しました。

### :ballot_box_with_check: ユーザー新規登録/ログイン/マイページ(マークアップ/バックエンド)
- 新規登録する時に、会員情報と住所情報をウィザード形式で入力できるように実装しました。
- Rspec+FactoryBotを導入し、テストコード作成
<img src="https://user-images.githubusercontent.com/62282502/83141746-297dd700-a12b-11ea-81e0-daefae491429.gif" width="400px;" />

- ユーザーマイページを作成しました。アイコン画像を設定できます。
<img src="https://user-images.githubusercontent.com/62282502/83146916-e70bc880-a131-11ea-9f64-382d01d07c9c.gif" width="400px;" />

### :ballot_box_with_check: 出品商品一覧新着表示機能(バックエンド)
- トップページに新着順に商品が一覧表示されています。
- コントローラーに、出品した商品が新着順に8件表示されるように実装
<img src="https://user-images.githubusercontent.com/62282502/83145946-88921a80-a130-11ea-90ce-81f3d68dbe09.jpg" width="400px;" />

### :ballot_box_with_check: 商品詳細表示/削除機能(バックエンド)
- 商品出品時に登録した情報が見られる詳細表示機能です。詳細画面からの削除機能も実装しました。
  - jQueryを用いた動的な画像表示の実装
  - 出品者にしか商品の情報編集・削除のリンクが踏めない&アクセスできないようにしています
  - 出品者以外にしか商品購入のリンクが踏めないようにしています

### :ballot_box_with_check: 出品時のカテゴリー登録機能実装(バックエンド)
- "ancestry"というgemを導入
- 出品時にjQueryで動的にカテゴリー選択し、登録できるようにしました。
<img src="https://user-images.githubusercontent.com/62282502/83147592-dd369500-a132-11ea-979d-74b14773c05a.gif" width="400px;" />

### :ballot_box_with_check: 商品編集機能(バックエンド)
- 出品した商品の情報を編集する機能
  - jQueryを用いて画像の差し替えを可能にした
  - 商品DBテーブルとは別テーブルのカテゴリーとブランドの初期表示＆編集できるよう実装
  - 商品情報を編集できるのは、商品を投稿したユーザーのみに設定しました。
  
<span><img src="https://user-images.githubusercontent.com/62282502/83148480-fa1f9800-a133-11ea-9b9f-44d4adcedcb2.jpg" height="300px;" /></span>
<span><img src="https://user-images.githubusercontent.com/62282502/83152787-2ab60080-a139-11ea-9dc7-91565ab217ea.gif" height="300px;" /></span>

### :ballot_box_with_check: DB設計
<img src="https://user-images.githubusercontent.com/62282502/83140496-2255c980-a129-11ea-8ff3-b9fedfbf8410.png" width="400px;" />

### :star: 開発を通じて工夫したポイント

1. **チームとして工夫を行った点**

　４名と通常よりも少ないチーム人数での開発であり、なおかつ完全オンラインで進める形であったため、「いつまでに何を終わらせるか」の目標を各自決め、一日のミーテティング回数を3回と他チームよりも多く設けて互いの進捗を頻繁に共有するよう意識しました。進捗が厳しければ他メンバーがフォローに入るように意識していました。結果、手が空いたメンバーがいれば適時ヘルプに入れるようにできたため、完成目標日までに必須実装項目を完了させることができました。

2. **個人として工夫を行った点**

　チームメンバーが一人も欠けることなくアプリを完成させることを目標に、スクラムマスターとしてメンバーがエラー等に躓いている点があれば率先してヘルプに入り、チーム内で助け合える雰囲気作りを意識しました。

