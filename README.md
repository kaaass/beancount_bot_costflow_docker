# beancount_bot_costflow_docker
包含 beancount_bot 与 Costflow 插件的 Docker 镜像。

## 使用

### 通过 Docker

```shell
docker run -d \
  -v ./bean:/bean \
  -v ./config:/config \
  kaaass/beancount_bot_costflow_docker
```

### 通过 Dockerfile

1. 下载 `docker-compose.yml`
2. 执行 `docker-compose up -d`

## 参数

环境变量：

- **BEANCOUNT_BOT_CONFIG**：beancount_bot 的配置文件路径，默认 `/config/beancount_bot.yml`

目录：

- **/init.d**：初始脚本。所有 `.sh` 文件会在容器启动时通过 `sh xx.sh` 执行

## See also

- [kaaass/beancount_bot](https://github.com/kaaass/beancount_bot)：Bot 核心
- [kaaass/beancount_bot_costflow](https://github.com/kaaass/beancount_bot_costflow)：Costflow 语法插件

