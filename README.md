# GitHub Action: Hello Docker

[![Tests](https://github.com/nowactions/template-docker/workflows/Tests/badge.svg)](https://github.com/nowactions/template-docker/actions)
[![Release](https://img.shields.io/github/release/nowactions/template-docker.svg)](https://github.com/nowactions/template-docker/releases)
[![License](https://img.shields.io/github/license/nowactions/template-docker)](LICENSE)

This GitHub Action is a template for GitHub Action with Dockerfile.

## Usage

### Prerequisites

Create a workflow `.yml` file in your `.github/workflows` directory.
An [example workflow](#example) is available below.
For more information, reference the GitHub Help Documentation for [Creating a workflow file](https://help.github.com/en/articles/configuring-a-workflow#creating-a-workflow-file).

### Inputs

- `name`: Name to greet

## Example

```yml
name: Greet

on:
  push:
    branch:
      - master

jobs:
  greet:
    name: Greet
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1

      - name: Greet
        uses: nowactions/template-docker@master
        with:
          name: GitHub Action
```

## Development

### Release

* Bump up the version in Dockerfile
* Commit the changes
* Run `make release`
