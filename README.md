# flarum-docker

Build [flarum](https://github.com/flarum/flarum.git) running environment with docker.

> Inspired by [wanghaiwei/xiuno-docker](https://github.com/wanghaiwei/xiuno-docker.git).

## Installation

First of all, be sure *docker* and *docker-compose* are installed.

Next, copy `.env.example` file to `.env`, and change it to your own circumstance.

> **Attention**:
>
> When set the `MYSQL_USER` variable, please make sure user in `mysql/init-db.sql` is consistent with this.

## Up

Before this, make sure you've already fetch the [flarum](https://github.com/flarum/flarum.git) repo content to local.

```bash
docker-compose up -d
```

Visit `YOUR-IP:NGINX_PORT` in the browser, you'll get the installation page.

## LICENSE

[MIT](./LICENSE)

Please feel free to use it at your convenience.
