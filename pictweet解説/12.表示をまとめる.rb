部分テンプレート：ビューファイルにおいて繰り返し使用するコードを切り出し、再利用する仕組み。
  _◯◯.html.erbファイル：部分テンプレートとして切り出す際のファイル。[_]が先頭。
  
  renderメソッド：部分テンプレートを呼び出す際に利用するメソッド。partialオプションも使用する。

  partialオプション：部分テンプレート名を指定することで、該当する部分テンプレートを表示できる。
  【例】renderメソッドのpartialオプション
    render partial: "sample"(同じディレクトリにない場合、指定する「tweets/tweet」など)

  localsオプション：部分テンプレート内でその変数が使用できる。
  【例】renderメソッドのlocalsオプション：部分テンプレート内において、hellow!という文字列が代入されたpostという変数が使用できる
    render partial: "sample", locals: { post: "hello!"} 
  