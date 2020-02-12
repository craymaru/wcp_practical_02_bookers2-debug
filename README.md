# wcp_practical_02_bookers2-debug

## Fixed

- [x] Fixed missing end tag in "routes.rb".
- [x] Fixed missing end tag in "users_controller.rb".
- [x] Fixed missing bootstrap-sass gem.
- [x] Fixed incorrect priority of users and devise/users in "route.rb".
- [x] Fixed incorrect field in "devise/registrations/new.html.erb".
- [x] Fixed incorrect tag in "application.html.erb".
- [x] Fixed missing yield in "application.html.erb".
- [x] Fixed incorrect associations in book and user models.
- [x] Fixed two wrong paths in top.html.erb
- [x] Fixed wrong variable in show.html.erb
- [x] Fixed wrong strong params with create action in books controller.
- [x] Fixed save not linked to books controller.
- [x] Fixed wrong action name "delete" to "Destroy" in books.
- [x] Fixed User introduction maximum length to 50.
- [x] Fixed missing image_profile_id column in user model.
- [x] Fixed render when user edit failed.
- [x] Fixed missing error message when book editing failed.
- [x] Fiexd incorrect after_sign_in_path_for routes.
- [x] Fiexd incorrect after_sign_out_path_for routes.
- [x] Fixed missing error message when create book failed.

## RSpec Test Result

```
bundle exec rspec spec/ --format documentation
```

```
Bookモデルのテスト
  バリデーションのテスト
    titleカラム
      空欄でないこと
    bodyカラム
      空欄でないこと
      200文字以下であること
  アソシエーションのテスト
    Userモデルとの関係
      N:1となっている

Userモデルのテスト
  バリデーションのテスト
    nameカラム
      空欄でないこと
      2文字以上であること
      20文字以下であること
    introductionカラム
      50文字以下であること
  アソシエーションのテスト
    Bookモデルとの関係
      1:Nとなっている

投稿のテスト
  サイドバーのテスト
    表示の確認
      New bookと表示される
      titleフォームが表示される
      opinionフォームが表示される
      Create Bookボタンが表示される
      投稿に成功する
      投稿に失敗する
  編集のテスト
    自分の投稿の編集画面への遷移
      遷移できる
    他人の投稿の編集画面への遷移
      遷移できない
    表示の確認
      Editing Bookと表示される
      title編集フォームが表示される
      opinion編集フォームが表示される
      Showリンクが表示される
      Backリンクが表示される
    フォームの確認
      編集に成功する
      編集に失敗する
  一覧画面のテスト
    表示の確認
      Booksと表示される
      自分と他人の画像のリンク先が正しい
      自分と他人のタイトルのリンク先が正しい
      自分と他人のオピニオンが表示される
  詳細画面のテスト
    自分・他人共通の投稿詳細画面の表示を確認
      Book detailと表示される
      ユーザー画像・名前のリンク先が正しい
      投稿のtitleが表示される
      投稿のopinionが表示される
    自分の投稿詳細画面の表示を確認
      投稿の編集リンクが表示される
      投稿の削除リンクが表示される
    他人の投稿詳細画面の表示を確認
      投稿の編集リンクが表示されない
      投稿の削除リンクが表示されない

boostrapのテスト
  グリッドシステムのテスト
    ユーザー関連画面
      一覧画面
      詳細画面
    投稿関連画面
      一覧画面
      詳細画面

ヘッダーのテスト
  ログインしていない場合
    ヘッダーの表示を確認
      タイトルが表示される
      Homeリンクが表示される
      Aboutリンクが表示される
      Sign upリンクが表示される
      loginリンクが表示される
    ヘッダーのリンクを確認
      Home画面に遷移する
      About画面に遷移する
      新規登録画面に遷移する
      ログイン画面に遷移する
  ログインしている場合
    ヘッダーの表示を確認
      タイトルが表示される
      Homeリンクが表示される
      Usersリンクが表示される
      Booksリンクが表示される
      logoutリンクが表示される
    ヘッダーのリンクを確認
      Home画面に遷移する
      Users画面に遷移する
      Books画面に遷移する
      logoutする

ユーザー権限のテスト
  ログインしていない場合
    投稿関連のURLにアクセス
      一覧画面に遷移できない
      編集画面に遷移できない
      詳細画面に遷移できない
  ログインしていない場合にユーザー関連のURLにアクセス
    ユーザー関連のURLにアクセス
      一覧画面に遷移できる
      編集画面に遷移できる
      詳細画面に遷移できる

トップページのテスト
  ボディ部分のテスト
    表示の確認
      Log inリンクが表示される
      Sign Upリンクが表示される
    ログインしている場合の挙動を確認
      Log inリンクをクリックしたらユーザー詳細画面へ遷移する
      Sign Upリンクをクリックしたらユーザー詳細画面に遷移する
    ログインしていない場合の挙動を確認
      Log inリンクをクリックしたらログイン画面へ遷移する
      Sign Upリンクをクリックしたら新規登録画面に遷移する

ユーザー認証のテスト
  ユーザー新規登録
    新規登録画面に遷移
      新規登録に成功する
      新規登録に失敗する
  ユーザーログイン
    ログイン画面に遷移
      ログインに成功する
      ログインに失敗する

ユーザーのテスト
  サイドバーのテスト
    表示の確認
      User infoと表示される
      画像が表示される
      名前が表示される
      自己紹介が表示される
      編集リンクが表示される
  編集のテスト
    自分の編集画面への遷移
      遷移できる
    他人の編集画面への遷移
      遷移できない
    表示の確認
      User infoと表示される
      名前編集フォームに自分の名前が表示される
      画像編集フォームが表示される
      自己紹介編集フォームに自分の自己紹介が表示される
      編集に成功する
      編集に失敗する
  一覧画面のテスト
    表示の確認
      Usersと表示される
      自分と他の人の画像が表示される
      自分と他の人の名前が表示される
      showリンクが表示される
  詳細画面のテスト
    表示の確認
      Booksと表示される
      投稿一覧のユーザーの画像のリンク先が正しい
      投稿一覧のtitleのリンク先が正しい
      投稿一覧にopinionが表示される

Finished in 4.84 seconds (files took 1.39 seconds to load)
95 examples, 0 failures

```

## ???

下記はもともと README.md にあった記述

```
### テスト手順の自動化
gemを入れて、specファイルを移動して、テストを実行するコマンドを打つという手順をまとめたcheck.shというファイルを作成した
アプリケーションのルートディレクトリにおいて
bash check.sh
というコマンドを打つと最後まで自動で終了する
ディレクトリが野原のディレクトリにあっているため、自分で修正が必要

### 実行コマンド
bundle exec rspec spec/ --format documentation

### 注意
カラム名が違うとほとんどのテストに失敗してしまうが、このコマンドですべてのファイルの文字列を変更することができる
例はopinionというカラム名で作られていたため、それをすべてbodyというカラム名に変更した
find . -type f | xargs sed -i 's/opinion/body/g'

一回テストを試していると、テスト用のデータベースtest.sqlite3ができているため、カラム名を変更したのちに再びやる時は
rm db/test.sqlite3によって、ファイルを削除してから実行する
```
