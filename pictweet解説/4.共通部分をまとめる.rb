レイアウトテンプレート：アプリのビューファイルの共通部分をまとめたもの。headの情報、ヘッダー、フッターなど。
  application.html.erbファイル：railsのレイアウトテンプレートファイル。
  yieldメソッド：レイアウトテンプレートに各テンプレートファイルを展開するメソッド。
    indexアクションの場合、テンプレートファイル（index.html.erb）の内容が、yield記述部分へ展開される
    head要素の情報を各ページに描かなくても良い。

stylesheet_link_tagメソッド：読み込むCSSを指定できるヘルパーメソッド。読み込むCSSファイルはapp/assets/stylesheets/に配置

application.cssファイル：アプリケーション全体に適応するCSSを指定できる。
  require_tree：引数として与えられたディレクトリ以下のCSSファイルをアルファベット順に全て読み込む機能。
  
