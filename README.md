## Usage

```
docker run -it -d --name=baidupcs-go-web \
-v <path to downloads>:/mnt \
-p 9999:9999 \
-e PUID=<uid> \
-e PGID=<gid> \
ywjdlq/baidupcs-go-web
```

### User / Group Identifiers

Sometimes when using data volumes (`-v` flags) permissions issues can arise between the host OS and the container. We avoid this issue by allowing you to specify the user `PUID` and group `PGID`. Ensure the data volume directory on the host is owned by the same user you specify and it will "just work" ™.

In this instance `PUID=1000` and `PGID=1000`. To find yours use `id user` as below:

```
  $ id <dockeruser>
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup)
```

### Setting

登录后打开设置，必须修改下载目录为 /mnt