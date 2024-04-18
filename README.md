# Vanilla Traceability App

![MyFarm_Git](https://github.com/Kelposs/my_farm/assets/105833652/5a88c554-6b6b-4c09-9fbb-6406081bce98)

## 説明
サプライチェーンの製品農家のために設計されたトレーサビリティアプリケーションです。アプリはFlutterの最新バージョンを使用して構築され、状態管理のためにGetX CLIパターンを利用しています。ユーザーはアカウントを作成し、ログインし、自分の畑から特定の場所までの収穫供給を追跡し、気象情報にアクセスし、最新のニュースを読み、収穫、肥料、水の使用に関する日次レポートを提供することができます。また、ユーザーは自分のプロフィールを完成させるために情報を修正・追加したり、他のユーザーや管理者とチャットを行うこともできる。

## 機能
### 1. スプラッシュス画面
アプリアイコンを表示し、アプリケーションのロード中であることをユーザーに伝え、起動時のユーザー体験を向上させます。

### 2. オンボーディング画面
オンボーディングスクリーンは、ユーザーがアプリケーションを起動する際に最初に表示される画面で、アプリケーションの使用方法を示し、機能を強調し、アプリケーションがユーザーにどのような利益をもたらすかを説明します。

### 3. ログイン画面
すでにアカウントをお持ちの方、またはサインアップに成功した方は、ログインしてみてください。

### 4. サインアップ画面
アカウントをお持ちでない方は、アプリを利用する前に認証ステップを経て、無料で新規アカウントを作成することができます。

### 5. OTP画面
OTP機能は、取得したユーザー名とパスワードのペアを複数回使用できないようにすることで、セキュリティを強化します。

### 6. ホーム画面
アプリケーションや内部機能を起動するためのアイコンが並んでいる。

### 7. トラック画面
対象物の動きや位置、状態などをリアルタイムで監視・追跡することができます。

### 8. マップアドレス画面
リアルタイムの地図や位置を表示し、住所を選択することができます。

### 9. 協議画面
2人以上の個人間のすべてのメッセージを表示します。

### 10. プロフィール画面
プロフィール画像、名前、メールアドレス、ポイントやクレジットなど、様々なユーザー情報が表示されます。

### 11. プロフィール編集画面
個人情報や通知設定を編集できます。

### 12. 追加バリデータ
フォームに送信されたデータが、以下のような特定の基準で検証されることを保証します：

8文字以上のパスワード
1111 の正しい PIN

## プロジェクトの構成
```
|-- lib
    |-- app
        |-- core
            |-- widgets
            |-- global constant variables or classes
        |-- data
            |-- models
        |-- modules
            |-- features
                |-- bindings
                |-- controllers
                |-- views
        |-- routes (Code generated via package:get_cli/get_cli.dart)
            |-- app_pages
            |-- app_routes
    |-- main.dart
```
## アプリの実行方法
- mainブランチを選択
- リポジトリをクローンする
- Flutterの最新バージョンがインストールされ、セットアップされていることを確認する
- flutter pub getを実行してプロジェクトの依存関係を取得する
- flutter runを使ってアプリケーションを起動する
### 使用技術とパッケージ
- Flutter（最新バージョン）
- 著者である私によるFigmaのUI/UXデザイン
- GetX
- google_fonts
- another_stpper
- flutter_map
- flutter_screenutil
- flutter_svg
- flutter_launcher_icons
- intl
- pininput
