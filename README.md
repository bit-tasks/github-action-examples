# Bit GitHub Action Examples for Git CI/CD Pipelines
Example GitHub Actions for common Bit and Git CI/CD workflows.

## Setup Guide

1. You need to place them inside `.github/workflows/` directory at the root of your GitHub repository.
2. You must set `BIT_CONFIG_USER_TOKEN` environment variable at the job level before running these tasks. You also need `GITHUB_TOKEN` environment variable for `bit-tasks/commit-bitmap@v1` task. For more information refer GitHub [Encrypted Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets).
3. If your workspace is not at the root of the Git repository, specify the input parameter `ws-dir` in the task `bit-tasks/init@v1`.

### Automating Component Release

| Task                        | Example                         | Repo and Docs                                 |
|-----------------------------|---------------------------------|-----------------------------------------------|
| Initialize Bit             | [yml](/github-actions/bit-init.yml)          | [link](https://github.com/bit-tasks/init)    |
| Bit Verify Components  | [yml](/github-actions/verify.yml)                | [link](https://github.com/bit-tasks/verify)  |
| Bit Tag and Export        | [yml](/github-actions/tag-export.yml)  | [link](https://github.com/bit-tasks/tag-export) |
| Bit Pull Request Build  | [yml](/github-actions/pull-request.yml) | [link](https://github.com/bit-tasks/pull-request) |
| Commit Bitmap           | [yml](/github-actions/commit-bitmap.yml) | [link](https://github.com/bit-tasks/commit-bitmap) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/github-action-examples/raw/main/downloads/automating-component-releases.zip)

### Update Workspace Components, External Dependencies and Envs

| Task                        | Example                         | Repo and Docs                                 |
|-----------------------------|---------------------------------|-----------------------------------------------|
| Dependency Update           | [yml](/github-actions/dependency-update.yml)   | [link](https://github.com/bit-tasks/dependency-update)   |

  :arrow_down: [Download Files](https://github.com/bit-tasks/github-action-examples/raw/main/downloads/dependency-update.zip)

### Sync Git Branches with Bit Lanes

| Task                        | Example                         | Repo and Docs                                 |
|-----------------------------|---------------------------------|-----------------------------------------------|
| Branch Lane                 | [yml](/github-actions/branch-lane.yml)  |  [link](https://github.com/bit-tasks/branch-lane) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/github-action-examples/raw/main/downloads/branch-lane.zip)

## Contributor Guide

```
git commit -m "Update task"
git tag -a -m "action release" v1 --force
git push --follow-tags
```
