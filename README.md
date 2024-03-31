# devimagepp

My C++ [dev container](https://containers.dev/) image

## Features

- `.devcontainer_extra.json` - recommended config excluded from image
- `.devcontainer.json` - build entrypoint with configured linters and build tools

## Usage

```jsonc
// .devcontainer.json
{
    "name": "${localWorkspaceFolderBasename}",
    "image": "ghcr.io/thezhe/devimagepp:main"
}
```

## Versioning

- `main` branch - stable rolling release on
- `develop` branch - unstable

## Known Issues

- Running with Podman/VSCode sometimes requires `Developer: Reload Window` command to finish dev container creation
