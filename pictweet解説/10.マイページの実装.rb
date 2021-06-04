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

