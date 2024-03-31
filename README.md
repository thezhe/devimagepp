# devimagepp

My C++ [dev container](https://containers.dev/) image

## Features

- `.devcontainer_extra.json` - recommended config excluded from image
- `.devcontainer.json` - build entrypoint
- `Dockerfile` - image definition with configured Git, linters, and build tools

## Usage

```jsonc
// .devcontainer.json
{
    "name": "${localWorkspaceFolderBasename}",
    "image": "ghcr.io/thezhe/devimagepp:main"
}
```

## Versioning

- Rolling release
- `main` is stable
- `develop` is unstable
