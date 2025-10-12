# Databricks開発環境セットアップガイド

このプロジェクトでは、VS CodeのDatabricks拡張機能を使用してローカル開発環境からDatabricksワークスペースに接続します。

## Python環境とDatabricks Connectのセットアップ

参考: [Python 環境と Databricks Connect をセットアップする](https://docs.databricks.com/aws/ja/dev-tools/vscode-ext/configure#python-%E7%92%B0%E5%A2%83%E3%81%A8-databricks-connect-%E3%82%92%E3%82%BB%E3%83%83%E3%83%88%E3%82%A2%E3%83%83%E3%83%97%E3%81%99%E3%82%8B)

### 前提条件

- Python 3.11以上がインストールされていること
- VS CodeのDatabricks拡張機能がインストールされていること

### セットアップ手順

```bash
py -3.11 -m venv .venv
.venv\Scripts\activate
python --version
```

### VS Code拡張機能からのインストール

参考: [Databricks Connectのインストール](https://docs.databricks.com/aws/ja/dev-tools/vscode-ext/databricks-connect#databricks-connect-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)

1. VS CodeのDatabricks拡張パネルを開く
2. **CONFIGURATION** → **Python Environment**
3. **「Activate Virtual Environment」**をクリック
4. 拡張機能が自動的にDatabricks Connectをインストール
5. インストール完了後、`pip3 list`で確認

```sh
pip3 uninstall pyspark -y
pip3 install --upgrade "databricks-connect==16.4.*"
pip3 list | findstr databricks
```

### Python スクリプトの実行

参考: [Python コードを実行またはデバッグする](https://docs.databricks.com/aws/ja/dev-tools/vscode-ext/databricks-connect#python-%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E5%AE%9F%E8%A1%8C%E3%81%BE%E3%81%9F%E3%81%AF%E3%83%87%E3%83%90%E3%83%83%E3%82%B0%E3%81%99%E3%82%8B)

#### 実行方法

1. `examples/001_execution_test.py`を開く
2. ファイルを右クリック
3. **「Debug current file with Databricks Connect」**を選択

### Jupyter ノートブックの実行

参考: [Python Jupyter ノートブックのセルを実行する](https://docs.databricks.com/aws/ja/dev-tools/vscode-ext/notebooks#python-jupyter-%E3%83%8E%E3%83%BC%E3%83%88%E3%83%96%E3%83%83%E3%82%AF%E3%81%AE%E3%82%BB%E3%83%AB%E3%82%92%E5%AE%9F%E8%A1%8C%E3%81%99%E3%82%8B)

#### 実行方法

1. `examples/001_execution_test.ipynb`を開く
2. 各セルの上部に表示される**「Run Cell」**をクリック
3. または**「Debug Cell」**でデバッグ実行
4. 結果はセルの下部に表示される

## 参考リンク

- [Visual Studio Code 用の Databricks 拡張機能](https://docs.databricks.com/aws/ja/dev-tools/vscode-ext/)
- [Databricks Connect](https://docs.databricks.com/aws/ja/dev-tools/databricks-connect/)
- [Databricks Asset Bundles](https://docs.databricks.com/aws/ja/dev-tools/bundles/)
