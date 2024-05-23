# ワークスペース構成

このプロジェクトは、SpringBootを用いた一般的なWebアプリケーション開発の構成を持ちます。以下のリポジトリから構成されています：

- `common`
- `logic`
- `web`

## ディレクトリ構造

以下は、プロジェクトの主要なディレクトリ構造です：

```
├─common
│  ├─.github
│  │  └─workflows
│  ├─.mvn
│  │  └─wrapper
│  ├─src
│  │  ├─main
│  │  │  ├─java
│  │  │  │  └─com.example.common
│  │  │  │      ├─entity
│  │  │  │      ├─repository
│  │  │  │      └─util
│  │  └─test
│  │      └─java
│  │          └─com.example.common
│  └─target
├─logic
│  ├─src
│  │  ├─main
│  │  │  ├─java
│  │  │  │  └─com.example.logic
│  │  └─test
│  │      └─java
│  │          └─com.example.logic
│  └─target
└─web
    ├─src
    │  ├─main
    │  │  ├─java
    │  │  │  └─com.example.web
    │  │  │      ├─controller
    │  │  │      └─service
    │  └─test
    │      └─java
    │          └─com.example.web
    └─target
```

## コーディング規約

1. **レイヤー分割のルール**:
   - `web`リポジトリのコードは、`common`リポジトリのクラスを直接参照することを禁止します。`web`リポジトリから共通機能を利用する場合は、`logic`リポジトリを経由するようにしてください。

2. **依存関係の管理**:
   - 各リポジトリの`pom.xml`ファイルを使用して、依存関係を適切に管理してください。

3. **パッケージ構造**:
   - 各リポジトリは、役割に応じたパッケージ構造を維持してください。例えば、エンティティクラスは`common`リポジトリの`entity`パッケージに配置します。

## 開発環境のセットアップ

以下の手順に従って、開発環境をセットアップしてください：

1. **リポジトリのクローン**:
   git clone <repository-url>

2. **必要な依存関係のインストール**:
   cd common
   mvn install
   cd ../logic
   mvn install
   cd ../web
   mvn install

3. **アプリケーションの起動**:
   cd web
   mvn spring-boot:run

以上の手順で開発環境をセットアップし、各リポジトリの依存関係とコーディング規約を遵守して開発を進めてください。