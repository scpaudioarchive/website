#!/bin/bash

# Fail if error
set -e

#### THIS IS FOR AUTOMATED COMMITS USING TRAVIS CI. DO NOT RUN MANUALLY - USE MANUAL-DEPLY.SH INSTEAD.

# Configure git
touch ~/.git-credentials
echo $GITHUB_AUTH_SECRET > ~/.git-credentials && chmod 0600 ~/.git-credentials
git config --global credential.helper store
git config --global user.email "scpfoundationaudioarchive@gmail.com"
git config --global user.name "scpfoundationaudioarchive"

# Set variable
datev="$(date +'%Y-%m-%d %H:%M:%S %:::z')"

rm -rf deployment
git clone -b main --depth 1 https://github.com/scpaudioarchive/scpaudioarchive.github.io.git deployment
rsync -av --delete --exclude ".git" deploy/ deployment

cd deployment
git remote set-url origin "https://scpfoundationaudioarchive:$GH@github.com/scpaudioarchive/scpaudioarchive.github.io.git"
git add -A
# we need the || true, as sometimes you do not have any content changes
# and git wouldn't commit and you don't want to break the CI because of that
git commit -m "$datev build via Travis CI" -m "From commit: ${TRAVIS_COMMIT}" -m "Job: ${TRAVIS_JOB_NUMBER}" -m "Bot account used for push: scpfoundationaudioarchive" || true
git push --force origin main

cd ..
rm -rf deployment
rm -rf deploy
