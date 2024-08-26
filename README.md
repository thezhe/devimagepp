# devimagepp

C++ [dev container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) image

## Usage

```json
// .devcontainer.json
{
    "name": "${localWorkspaceFolderBasename}",
    "image": "ghcr.io/thezhe/devimagepp:main"
}
```

## Features

Linters (below) are core. Dotfiles configure linters as mostly orthogonal. Developer should fix warnings, build, and use common sense before committing.

### C++

- [clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
- [cppcheck](https://cppcheck.sourceforge.io/)
- [cpplint](https://github.com/cpplint/cpplint)
- [SonarLint](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarlint-vscode)

### CMake

- [cmake-lint](https://github.com/cheshirekow/cmake_format)
- [osv-scanner](https://google.github.io/osv-scanner/)

### GitHub

- [actionlint](https://github.com/rhysd/actionlint)

### Documentation

- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

## Versioning

- `main` branch - stable rolling release
- `develop` branch - unstable
