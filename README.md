# watch-diff

## credentials

```shell
export SMTP_HOST=qwer.ty
export SMTP_PORT=1234
export SMTP_USER=qwer@qwer.ty
read -s -p "SMTP_PASS: " SMTP_PASS
export SMTP_PASS
```

## development

```shell
# setup
python3 -m venv venv && . venv/bin/activate

# editable install
pip install -e .[dev]

# running tests
python -m unittest -v

# running tests for all supported python versions
tox
```
