# devimagepp

C++ [dev container](https://containers.dev/overview) image

## Usage

```json
// .devcontainer.json
{
    "name": "${localWorkspaceFolderBasename}",
    "image": "ghcr.io/thezhe/devimagepp:main"
}
```

## Features

Linters (below) are core to this devimage. Included dotfiles configure linters such that any two are mostly orthogonal. The develop should still fix warnings, build, and use common sense before committing.

### C++

- [clangd](https://clangd.llvm.org/)
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