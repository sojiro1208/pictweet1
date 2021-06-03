実装の手順
  1. Gemをインストールしてサーバーを再起動しよう
  2. コマンドを利用してdeviseの設定ファイルを作成しよう
  3. コマンドを利用してUserモデルを作成しよう
  4. 未ログイン時とログイン時でボタンの表示を変える実装をしよう
  5. コントローラーにリダイレクトを設定しよう

devise：ユーザー管理機能を簡単に実装できるためのGem。

rails g devise:installコマンド：deviseというGemの「設定関連に使用するファイル」を自動で生成するコマンド

rails g deviseコマンド：deviseによるユーザー機能の対象を指定し、
                      モデル、マイグレーションファイルの生成、ルーティングの設定などをまとめて処理する。

rails g devise:viewsコマンド：deviseに用意されたビューファイルをコピーし、app/viewに配置する。

rails g migrationコマンド：マイグレーションを生成する。すでに作成されたテーブル内容を変更する際に使用。
  [例]：rails g migration Addカラム名To追加先テーブル名 追加するカラム名:型
  スネークケースとキャメルケース
    スネークケース：単語の区切るをアンダーバーで表す。メソッド名/変数名
    キャメルケース：単語の区切りを大文字で表す。クラス名


maxlengthオプション：text_fieldにつけることができ、最大文字数を指定できる。
【例】maxlengthオプション
  <div class="field">
    <%= f.text_field :nickname, autofocus: true, maxlength: "6" %>
  </div>


devise_parameter_sanitizerメソッド：deviseにおけるparamsのようなメソッド
【例】devise_parameter_sanitizerメソッド：deviseに定義されているストロングパラメーターと同じくプラおベーとメソッドに定義する。
  private
  def configure_permitted_parameters  # メソッド名は慣習
    # deviseのUserモデルにパラメーターを許可
    devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー])
  end

【例】名前は同じでも、中身は異なるpermit
  # paramsのpermitメソッド
  params.require(:モデル名).permit(:許可するキー)
  
  # devise_parameter_sanitizerのpermitメソッド
  devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー])
  処理名          ：役割
  :sign_in       ：サインイン（ログイン）の処理を行うとき
  :sign_up       ：サインアップ（新規登録）の処理を行うとき
  :account_update：アカウント情報更新の処理を行うとき

application_controller.rbファイル：全てのコントローラーが継承しているファイル。共通する処理を作ることができる。


user_signed_in?メソッド：ログインしているかの判定を行う。
【例】user_signed_in?
  # ログインしているユーザーのとき
  user_signed_in?
  #=> true

  # ログインしていないユーザーのとき
  user_signed_in?
  #=> false

リダイレクト：本来受け取ったパスとは別のパスへ転送する機能。
  unless；条件分岐。if文とは逆。
  【例】unless
    unless 条件式
    # 条件式がfalseのときに実行する処理
    end
    
    redirect_toメソッド：リダイレクト処理に使用される
    【例】redirect_to
      redirect_to action: :リダイレクト先となるアクション名
    
    exceptオプション：before_actionで使用できる。事前処理は実行されない。