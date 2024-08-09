#!/bin/bash

# Ensure the downloads directory exists
mkdir -p downloads

# Create or overwrite the automating-component-releases.zip
zip -j downloads/automating-component-releases.zip \
    github-actions/bit-init.yml \
    github-actions/commit-bitmap.yml \
    github-actions/pull-request.yml \
    github-actions/lane-cleanup.yml \
    github-actions/tag-export.yml \
    github-actions/verify.yml

# Zip other individual files
zip -j downloads/branch-lane.zip \
    github-actions/branch-lane.yml \
    github-actions/lane-branch.yml

zip -j downloads/dependency-update.zip github-actions/dependency-update.yml
