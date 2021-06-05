searchアクションのルーティング設定
  collectionとmember：ルーティングの設定時に使用。
    生成されるルーティングのURLと実行されるコントローラーを任意にカスタムできる
    【例】collectionで定義した場合：idがつかない
      Rails.application.routes.draw do
        resources :tweets do
          collection do
            get 'search'
          end
        end
      end
    【例】collectionのルーティング
      Prefix           Verb    URI                                 Pattern
      search_tweets    GET    /tweets/search(.:format)              tweets#search
    
    【例】memberで定義した場合：IDがつきます
      Rails.application.routes.draw do
        resources :tweets do
          member do
            get 'search'
          end
        end
      end
    【例】memberのルーティング
      Prefix           Verb    URI                                 Pattern
      search_tweet      GET    /tweets/:id/search(.:format)       tweets#search
whereメソッド：モデルが使用できるActiveRecordメソッドの１つ
  【例】whereメソッド：テーブルないの条件に一致したレコードのインスタンスを配列の形で取得できる
    モデル.where('検索対象となるカラムを含む条件式')
LIKE句：曖昧な文字列を検索するときに使用。whereメソッドと一緒に使う
  [例]「1文字目に'a'という文字列が入ったデータ」「最後の文字に'b'が入っているデータ」「文字列の途中に'c'が入ったデータ」など
  
  文字列：意味
  %    ：任意の文字列（空白文字列含む）
  _    ：任意の1文字

  実行サンプル
  実行例                       ：詳細
  where('title LIKE(?)', "a%")：aから始まるタイトル
  where('title LIKE(?)', "%b")：bで終わるタイトル
  where('title LIKE(?)', "%c%")：cが含まれるタイトル
  where('title LIKE(?)', "d_")：dで始まる2文字のタイトル
  where('title LIKE(?)', "_e")：eで終わる2文字のタイトル
  