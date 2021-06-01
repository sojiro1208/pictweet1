実装の流れ：
1. ツイートを削除するためのルーティングを設定する
2. 削除ボタンをビューに追加する
3. destroyアクションをコントローラーに定義する
4. 削除後のビューを追加する

削除ボタンのパスにはツイートを区別するため、ツイートのIDをパラメータに持たせる。
/tweets/《tweetのid》

prefix：ルーティングの「URI Pattern」に名前をつけ変数化したもの。
  prefix名の後に「_path」と記述する。(rails routesで確認する)
  【例】Prefixの使用例
    # Prefix未使用
    <%= link_to "link_button", '/', class: "header__title--text" %>
    # Prefix使用
    <%= link_to "link_button", root_path, class: "header__title--text" %>

