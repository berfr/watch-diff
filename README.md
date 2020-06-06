# watch-diff

[![Main workflow](https://github.com/berfr/watch-diff/workflows/Main%20workflow/badge.svg)](https://github.com/berfr/watch-diff/actions?query=workflow%3A%22Main+workflow%22)
[![PyPI](https://img.shields.io/pypi/v/watch-diff)](https://pypi.org/project/watch-diff)

Periodically run a command and receive nice diff styled emails on output changes.

See https://berfr.github.io/posts/watch-diff/ for more info.

## setup

```shell
pip install watch-diff
```

## features

- supports Python >= 3.6
- uses only Python Standard Library
- sends email diff in both text and html form
- uses `Message-ID` and `In-Reply-To` to group email threads

## usage

```console
$ watch-diff --help
usage: watch-diff [-h] [-v | -d] [-i SECONDS] [-r RECIPIENT] command

Watch command output and get notified on changes

positional arguments:
  command               the command to watch

optional arguments:
  -h, --help            show this help message and exit
  -i SECONDS, --interval SECONDS
                        number of seconds between executions
  -r RECIPIENT, --recipient RECIPIENT
                        send email to recipient

logging level:
  -v, --verbose         enable verbose output
  -d, --debug           show debugging statements
```

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
