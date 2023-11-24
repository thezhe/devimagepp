# devimagepp

My C++ [dev container](https://containers.dev/) image.

## Usage

Add the following file to the project root directory:
```jsonc
// .devcontainer.json
{
    "name": "${localWorkspaceFolderBasename}",
    "image": "ghcr.io/thezhe/devimagepp",
    "runArgs": [
        "-v",
        "${localEnv:HOME}/.ssh/:/root/.ssh"
    ]
}
```
