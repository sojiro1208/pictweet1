・コメントテーブルの作成
・各テーブルとアソシエーションを組む
・ルーティングの設定（ネストの設定）
ルーティングのネスト：記述の中に別の記述をして、親子関係を表す。「入れ子構造」
【例】ルーティングのネスト：コントローラーのルーティングの中に別のそれを記述する
  Rails.application.routes.draw do
    resources :親となるコントローラー do
      resources :子となるコントローラー
    end
  end
★アソシエーション先のレコードのIDをparamsに追加してコントローラーに送るために必要

・コメントコントローラーの作成/編集
・