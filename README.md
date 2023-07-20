# GitHub Action Examples for Bit and Git CI/CD Pipelines
Example GitHub Actions for common Bit and Git CI/CD workflows.

## List of GitHub Action Examples

- Initialize Bit - [bit-init.yml](/actions/bit-init.yml) 
- Bit Verify Components - [verify.yml](/actions/verify.yml)
- Bit Tag and Export - [tag-export.yml](/actions/tag-export.yml)
- Bit Pull Request Build - [pull-request.yml](/actions/pull-request.yml)
- Commit Bitmap - [commit-bitmap.yml](/actions/commit-bitmap.yml)
- Dependency Update - [dependency-update.yml](/actions/dependency-update.yml)
- Branch Lane - [branch-lane.yml](/actions/branch-lane.yml)

**Guidelines:** 
1. You need to place them inside `.github/workflows/` directory at the root of your GitHub repository.
2. You must set `BIT_CONFIG_USER_TOKEN` environment variable at the job level before running these tasks. You also need `GITHUB_TOKEN` environment variable for `bit-tasks/commit-bitmap@v1` task.
3. If your workspace is not at the root of the Git repository, specify the input parameter `ws-dir` in the task `bit-tasks/init@v1`.

## Contributor Guide

```
git commit -m "Update task"
git tag -a -m "action release" v1 --force
git push --follow-tags
```