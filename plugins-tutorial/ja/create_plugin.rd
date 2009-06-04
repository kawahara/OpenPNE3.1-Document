=begin
= OpenPNE3プラグインの作り方 (3.1)

== はじめに

OpenPNE3はあらゆる機能をプラグインとして追加することができます。
OpenPNE3はフレームワークとしてsymfonyを利用していますが、OpenPNE3のプラグインはsymfonyのプラグインとは違います。
このドキュメントでは、OpenPNE3プラグインの作成方法を紹介します。

今回は、例としてOpenPNE2に存在した、((<MyNews|URL:http://trac.openpne.jp/wiki/pne-customize#MyNews%E6%A9%9F%E8%83%BD%E3%82%92%E4%BD%BF%E7%94%A8%E3%81%99%E3%82%8B>)) 作成しています。

== 前提条件

このドキュメントは、以下の条件がそろっていることを前提とします。

* OpenPNE3.1がインストール・動作する環境がある
* 上の環境においてコンソールでの作業ができる

なお、このチュートリアルを読む前に、symfonyのtutorialである、((<Jobbet for Doctrine|URL:http://www.symfony-project.org/jobeet/1_2/Doctrine/ja/>))で、symfonyの知識を付けることを推奨します。

また、ホスト名として((* sns.example.com *))を、作成するプラグイン名として((* opSamplePlugin *))を例としていますが、環境に合わせて適宜読み替えてください。


== プラグインスケルトンの作成

OpenPNE3では、プラグインのスケルトンを作成するための((* タスク *))を用意しています。

=== プラグイン

空のプラグインは、以下のタスクにより追加することができます。

((%$ php symfony opGenerate:plugin ((*opSamplePlugin*))%))

OpenPNEのプロジェクトディレクトリ中の「plugins」ディレクトリ下に「opSamplePlugin」ディレクトリが追加されるかと思います。

新規作成された、「opSamplePlugin」ディレクトリ下には、4つの空のディレクトリが作られます。

 apps
 conf
 i18n
 lib

symfonyのプラグインとの大きな違いは、「app」ディレクトリを持つことで、この下はアプリケーションごとのモジュールを配置することができます。（有効化するために、特別な設定は不要です）

アプリケーション・モジュールの追加も同様にタスクにより実行することが可能です。

+ 補足: プラグインの命名規則

プラグイン名は特にありませんが、OpenPNE開発チームでは、OpenPNE用のプラグインとわかるように

((* 「opHogehogePlugin」　*))

のように名付けています。

=== アプリケーション

((%$ php symfony opGenerate:apps ((*opSamplePlugin*)) ((*pc_frontend*)) %))

これにより、「opSamplePlugin/apps」下にpc_frontendアプリケーションのスケルトンが作成されます。

+ 補足: OpenPNEの主なアプリケーション

:pc_frontend
  PC版

:mobile_frontend
  携帯版

:pc_backend
  管理画面

今回は、PC版にモジュールを追加しました。

=== モジュール

((%$ php symfony opGenerate:module ((*opSamplePlugin*)) ((*pc_frontend*)) ((*hoge*)) %))

これにより、「opSamplePlugin/apps/pc_frontend/module」下にhogeモジュールのスケルトンが作成されます。

== データモデル

== フォーム

== アクションとビュー

== セキュリティ

== ガジェット

== テンプレート拡張

== アプリケーションをまたぐ共通のアクションをまとめる

== コアのアクションに処理を追加する

== 管理画面

== マイグレード
