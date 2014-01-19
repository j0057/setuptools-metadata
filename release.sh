#!/bin/bash -x
DIST_DIR=/tmp/pypkg27

VERSION=$(./setup.py --version)

./setup.py sdist --dist-dir=$DIST_DIR
pip wheel --no-index --find-links=$DIST_DIR --wheel-dir=$DIST_DIR "setuptools-metadata==$VERSION"
sudo pip install --upgrade --no-index --find-links=$DIST_DIR --use-wheel "setuptools-metadata==$VERSION"
