# Bit GitHub Action Examples for Git CI/CD Pipelines
Example GitHub Actions for common Bit and Git CI/CD workflows.

## Setup Guide

1. You need to place them inside `.github/workflows/` directory at the root of your GitHub repository.
2. You must set `BIT_CONFIG_USER_TOKEN` environment variable at the job level before running these tasks. You also need `GITHUB_TOKEN` environment variable for `bit-tasks/commit-bitmap@v1` task. For more information refer GitHub [Encrypted Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets).
3. If your workspace is not at the root of the Git repository, specify the input parameter `ws-dir` in the task `bit-tasks/init@v1`.

### Automating Component Release

- Initialize Bit - [bit-init.yml](/github-actions/bit-init.yml) 
- Bit Verify Components - [verify.yml](/github-actions/verify.yml)
- Bit Tag and Export - [tag-export.yml](/github-actions/tag-export.yml)
- Bit Pull Request Build - [pull-request.yml](/github-actions/pull-request.yml)
- Commit Bitmap - [commit-bitmap.yml](/github-actions/commit-bitmap.yml)

  :arrow_down: [Download Files](raw/main/downloads/automating-component-releases.zip)

### Update Workspace Components, External Dependencies and Envs

- Dependency Update - [dependency-update.yml](/github-actions/dependency-update.yml)

  :arrow_down: [Download Files](raw/main/downloads/dependency-update.zip)

### Sync Git Branches with Bit Lanes

- Branch Lane - [branch-lane.yml](/github-actions/branch-lane.yml)

  :arrow_down: [Download Files](raw/main/downloads/branch-lane.zip)

## Contributor Guide

```
git commit -m "Update task"
git tag -a -m "action release" v1 --force
git push --follow-tags
```
