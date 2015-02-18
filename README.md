Docker Image for [Infrataster](https://github.com/ryotarai/infrataster)
====

これは何？
----

Infrataster と plugin を詰め込んだ docker image

#### 現在追加している plugin

- [otahi/infrataster-plugin-dns](https://github.com/otahi/infrataster-plugin-dns)
- [Kazuma/infrataster-plugin-ssl_certificates](https://github.com/Kazuma/infrataster-plugin-ssl_certificates)
- [ryotarai/infrataster-plugin-mysql](https://github.com/ryotarai/infrataster-plugin-mysql)
- [dyninc/infrataster-plugin-chef](https://github.com/dyninc/infrataster-plugin-chef)
- [dyninc/infrataster-plugin-ldap](https://github.com/dyninc/infrataster-plugin-ldap)
- [SnehaM/infrataster-plugin-pgsql](https://github.com/SnehaM/infrataster-plugin-pgsql)

今後追加予定の plugin
- [rahulkhengare/infrataster-plugin-memcached](https://github.com/rahulkhengare/infrataster-plugin-memcached)

使い方
----

1. イメージの作成 または pull
2. テストを作成
3. infrataster を実行

### 1. イメージの作成

**build する場合**

```console
$ git clone https://github.com/yokogawa-k/docker-infrataster.git
$ cd docker-infrataster
$ docker build -t yokogawa/infrataster .
```

**docker pull する場合**

```console
$ docker pull yokogawa/infrataster
```

### 2. テストの作成

頑張ってください。

### 3. infrataster の実行

```console
$ docker run -t -v $spec_dir:/opt/app/spec/ --name "infrataster" yokogawa/infrataster -c 
```

`docker run` の `COMMAND` を指定しない場合 rspec のヘルプが出ます。

```console
$ docker run -t -v $spec_dir:/opt/app/spec/ --name "infrataster" yokogawa/infrataster -c 
```

### use bash

```console
$ ./run bash
```
