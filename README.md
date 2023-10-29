# Bit GitHub Action Examples for Git CI/CD Pipelines
Example GitHub Actions for common Bit and Git CI/CD workflows.

## Setup Guide

1. You need to place them inside `.github/workflows/` directory at the root of your GitHub repository.
2. If your workspace is not at the root of the Git repository, specify the input parameter `ws-dir` in the task `bit-tasks/init@v1`.
3. Create new [secret variables](https://docs.github.com/en/actions/security-guides/encrypted-secrets) (Either `BIT_CONFIG_USER_TOKEN` or `BIT_CLOUD_ACCESS_TOKEN`. Not both), `GIT_USER_NAME` and `GIT_USER_EMAIL` and use them as [environment variables](https://docs.github.com/en/actions/learn-github-actions/variables) in your GitHub Action.
4. Define `GITHUB_TOKEN` also as an [environment variable](https://docs.github.com/en/actions/learn-github-actions/variables). Here, `GITHUB_TOKEN` secret is [automatically created by GitHub Actions](https://docs.github.com/en/actions/security-guides/automatic-token-authentication).

### Automating Component Release

| Task                        | Example                         | Repo and Docs                                 |
|-----------------------------|---------------------------------|-----------------------------------------------|
| Initialize Bit             | [bit-init.yml](/github-actions/bit-init.yml)          | [link](https://github.com/bit-tasks/init)    |
| Bit Verify Components  | [verify.yml](/github-actions/verify.yml)                | [link](https://github.com/bit-tasks/verify)  |
| Bit Tag and Export        | [tag-export.yml](/github-actions/tag-export.yml)  | [link](https://github.com/bit-tasks/tag-export) |
| Bit Pull Request Build  | [pull-request.yml](/github-actions/pull-request.yml) | [link](https://github.com/bit-tasks/pull-request) |
| Bit Lane Cleanup  | [lane-cleanup.yml](/github-actions/lane-cleanup.yml) | [link](https://github.com/bit-tasks/lane-cleanup) |
| Commit Bitmap           | [commit-bitmap.yml](/github-actions/commit-bitmap.yml) | [link](https://github.com/bit-tasks/commit-bitmap) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/github-action-examples/raw/main/downloads/automating-component-releases.zip)

### Update Workspace Components, External Dependencies and Envs

| Task                        | Example                         | Repo and Docs                                 |
|-----------------------------|---------------------------------|-----------------------------------------------|
| Dependency Update           | [dependency-update.yml](/github-actions/dependency-update.yml)   | [link](https://github.com/bit-tasks/dependency-update)   |

  :arrow_down: [Download Files](https://github.com/bit-tasks/github-action-examples/raw/main/downloads/dependency-update.zip)

### Sync Git Branches with Bit Lanes

| Task                        | Example                         | Repo and Docs                                 |
|-----------------------------|---------------------------------|-----------------------------------------------|
| Branch Lane                 | [branch-lane.yml](/github-actions/branch-lane.yml)  |  [link](https://github.com/bit-tasks/branch-lane) |

  :arrow_down: [Download Files](https://github.com/bit-tasks/github-action-examples/raw/main/downloads/branch-lane.zip)

## Contributor Guide

To create zip files use the below commands.

```bash
chmod +x zip_files.sh
bash ./zip_files.sh
```
