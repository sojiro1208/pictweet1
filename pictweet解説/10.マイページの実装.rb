current_userメソッド：現在ログインしているユーザー情報を取得できる。

mergeメソッド：ハッシュを統合させるときに使用するメソッド
【例】2つのハッシュを1つにまとめることができるのだ！
  tweet = { name: "たなか", text: "test", image: "test.jpeg" }
  uid = { user_id: "1" }
  tweet.merge(uid)
  => {:name=>"たなか", :text=>"test", :image=>"test.jpeg", :user_id=>"1"}

アソシエーション：モデルを利用したテーブル同士の関連付け。
  has_manyメソッド：1対多のつながり
  belongs_toメソッド：1対1のつながり

N＋1問題：データベースのアクセス回数が多くなってしまう問題。
  includesメソッド：引数に指定された関連モデルを１度のアクセスでまとめて取得できる。
  【例】：モデル名.includes(:紐付くモデル名)
テーブルからカラムを削除するためのマイグレーションファイルの作成
【例】ターミナル
  % rails g migration Removeカラム名From削除元テーブル名 削除するカラム名：型

