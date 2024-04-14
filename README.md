# devimagepp

My C++ [dev container](https://containers.dev/) image

## Features

- `.devcontainer_extra.json` - recommended config excluded from image
- `.devcontainer.json` - image build entrypoint configured for linting and building with VSCode

## Usage

```jsonc
// .devcontainer.json
{
    "name": "${localWorkspaceFolderBasename}",
    "image": "ghcr.io/thezhe/devimagepp:main"
}
```

## Versioning

- `main` branch - stable rolling release
- `develop` branch - unstable

## Exceptions

- Podman may require `Developer: Reload Window` command to finish container creation
