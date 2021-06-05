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
      
