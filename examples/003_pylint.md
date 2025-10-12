# Installation as PyLint plugin

```sh
# 1.
pip install databricks-labs-pylint
# 2.
databricks labs install pylint-plugin
databricks labs pylint-plugin nbcheck

# test
pylint --load-plugins=databricks.labs.pylint.all examples/003_pylint_check.py
pylint --load-plugins=databricks.labs.pylint.all examples/003_pylint_check
# W0611とかでない。検出対象のルールが少ない
databricks labs pylint-plugin nbcheck --path  /Workspace/Users//.bundle/Learning_databricks/dev/files/examples/003_pylint_check

# こちらでは問題なし
pylint --load-plugins=databricks.labs.pylint.all examples/003_pylint_check.py
```
