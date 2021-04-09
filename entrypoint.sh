#!/bin/sh

set -e

env

rdme docs $INPUT_DOCS_FOLDER --key $INPUT_README_API_KEY --version $INPUT_API_VERSION
