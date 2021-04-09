#!/bin/sh

set -e

rdme docs /docs --key $INPUT_README_API_KEY --version $INPUT_API_VERSION
