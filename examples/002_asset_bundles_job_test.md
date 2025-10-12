# Databricks Asset Bundlesでジョブを実行するまでの手順

公式ドキュメント: <https://docs.databricks.com/aws/en/dev-tools/bundles/jobs-tutorial>

## 前提条件

### Databricks CLIのインストール確認

```sh
databricks -v
```

## 1. 認証設定

### ワークスペースへの認証

```sh
databricks auth login --host <workspace-url>
databricks auth profiles
databricks auth token --host <workspace-url>
```

**例:**

```sh
databricks auth login --host https://adb-1234567890.azuredatabricks.net
```

## 2. Bundleプロジェクトの作成

### テンプレートからBundleを初期化

公式ドキュメント: <https://docs.databricks.com/aws/en/dev-tools/bundles/templates#create-a-bundle-using-a-template>

```sh
databricks bundle init default-python --profile default
```

対話式で以下を入力:

- **Template to use**: `default-python` (デフォルトのままEnter)
- **Unique name for this project**: プロジェクト名 (例: `my_project`)
- **Include a stub notebook**: `yes`
- **Include a stub DLT pipeline**: `no`
- **Include a stub Python package**: `no`
- **Use serverless**: `yes`

### プロジェクトディレクトリに移動

```sh
cd my_project
```

## 3. Bundleの検証

```sh
databricks bundle validate
databricks bundle validate --profile default
databricks bundle validate -t dev
```

## 4. Bundleのデプロイ

```sh
databricks bundle deploy -t dev
```

### デプロイ確認

```sh
# ジョブ一覧を表示
databricks jobs list

# 出力例:
# 830812947538669  [dev xxxxx] my_project_job
```

## 5. ジョブの実行

```sh
databricks bundle run -t dev my_project_job
```

## 6. リソースの削除

```sh
# デプロイしたリソースを削除
databricks bundle destroy -t dev
```

### ジョブの実行履歴確認

```sh
# ジョブIDを指定して実行履歴を確認
databricks jobs list-runs --job-id <job-id>
```

## 参考リンク

- **公式チュートリアル**: <https://docs.databricks.com/aws/en/dev-tools/bundles/jobs-tutorial>
- **Bundle設定リファレンス**: <https://docs.databricks.com/aws/en/dev-tools/bundles/settings>
- **デプロイメントモード**: <https://docs.databricks.com/aws/en/dev-tools/bundles/deployment-modes>
- **リソース定義**: <https://docs.databricks.com/aws/en/dev-tools/bundles/resources>
