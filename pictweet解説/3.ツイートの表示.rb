CRAd：アプリのデータの取り扱いについて基本的な処理の頭文字を並べたもの。railsでは7つのアクションに分割。
  C（Create）	R（Read）	U（Update）	D（Delete）
    生成	    読み取り    	更新	     削除
  7つのアクション
    index  ：一覧表示
    show   ：詳細表示
    new    ：生成
    create ：保存
    edit   ：編集
    update ：更新
    destroy：削除
  【例】resourcesメソッドの使用例：7つのアクション全て設定できる。
    Rails.application.routes.draw do
      resources :tweets
    end
  onlyオプション：resourcesにオプションでつける。指定したルーティングのみ自動生成。
  【例】resourcesメソッドの使用例：オプション: :追加したいアクションのようにシンボル型でアクション名を記述。
    Rails.application.routes.draw do
      resources :tweets, only: :index
    end
rails d controllerコマンド：指定したコントローラーの削除。関連ファイルも一緒に消える。