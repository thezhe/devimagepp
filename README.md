# devimagepp

My C++ [dev container](https://containers.dev/) image.

## Usage

```jsonc
// .devcontainer.json
// Use with rootless Docker or Podman.
{
    "name": "${localWorkspaceFolderBasename}", // Current folder.
    "image": "ghcr.io/thezhe/devimagepp", // Rolling release.
    "runArgs": [
        "-v=${localEnv:HOME}/.ssh/:/root/.ssh" // Mount for tag/commit signing.
    ]
}
```
