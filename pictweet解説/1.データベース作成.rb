database.yml：データベースの設定ファイル。運用環境ごとに変更できる仕組み
  運用環境：システムをどこで使用するか定められている環境。
    development：開発環境  ：主にアプリケーションを開発をする際に使用する環境
    test       ：テスト環境：アプリケーションの動作をテストする際に使用する環境
    production ：本番環境  ：アプリケーションを実際にリリースする際に使用する環境

RDB：表形式上でデータを管理するデータベース。
RDBMS：RDBを使用する際、それを管理するシステム。「mysql」など
  mysql：RDBMSの1つ。
    ・拡張機能が多い
    ・小規模から大規模のデータも取り扱える
    ・柔軟性が高い