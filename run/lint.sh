#! /bin/bash

echo ":::: START LINT ::::"
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint app/Dockerfile
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
pylint --disable=R,C,W1203,W1202 app/app.py