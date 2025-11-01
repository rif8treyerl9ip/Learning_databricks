# Installation as PyLint plugin

```sh
# install databricks cli
https://docs.databricks.com/aws/en/dev-tools/cli/install#winget-installation-for-windows
winget search databricks
winget install Databricks.DatabricksCLI

# install pylint with databricks cli
pip install databricks-labs-pylint

# install standalone
pip install databricks-labs-pylint


# 2.
databricks labs install pylint-plugin
databricks labs pylint-plugin nbcheck

# test
pylint --load-plugins=databricks.labs.pylint.all examples/003_pylint_check.py
pylint --load-plugins=databricks.labs.pylint.all examples/003_pylint_check
# W0611とかでない。検出対象のルールが少ない

# for local
pylint --load-plugins=databricks.labs.pylint.all examples/003_pylint_check.py


# for workspace
databricks auth login --host https://dbc-ff6c8424-0cd6.cloud.databricks.com  # login
databricks labs pylint-plugin nbcheck --path  /Workspace/Users/5saphone92@gmail.com/.bundle/Learning_databricks/dev/files/examples/003_pylint_check
```
