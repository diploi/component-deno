<img alt="icon" src=".diploi/icon.svg" width="32">

# Deno Component for Diploi

[![launch with diploi badge](https://diploi.com/launch.svg)](https://diploi.com/component/deno)
[![component on diploi badge](https://diploi.com/component.svg)](https://diploi.com/component/deno)
[![latest tag badge](https://badgen.net/github/tag/diploi/component-deno)](https://diploi.com/component/deno)

A generic Deno component that can be used to run any Deno app.

Uses the official [Deno](https://hub.docker.com/r/denoland/deno) Docker image.

## Operation

### Getting started

1. In the Dashboard, click **Create Project +**
2. Under **Pick Components**, choose **Deno**
3. In **Pick Add-ons**, you can add one or multiple databases to your app
4. Choose **Create Repository**, which will generate a new GitHub repo
5. Lastly, click **Launch Stack**

Link to guide, explains how to add a custom domain and launch to production
https://diploi.com/blog/hosting_deno_apps

### Development

Runs `deno task dev` when deployment is started, which executes your app in watch mode with network and environment variable access:
```sh
deno run --watch --allow-net --allow-env src/main.ts
```
No `deno install` is required, as new import in TypeScript files will trigger Deno to automatically download and cache those modules as needed.

### Production

Builds a production-ready image. Runs `deno task prod` to start your app with network and environment variable access:
```sh
deno run --allow-net --allow-env src/main.ts
```
Dependencies are cached during the build stage using `deno cache .`.

## Links

- [Adding Deno to a project](https://docs.diploi.com/building/components/deno)
- [Deno documentation](https://docs.deno.com/runtime/)
