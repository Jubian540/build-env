## Use

### aosp:

```shell
$ cd aosp
$ sudo docker build --tag aosp-build:14.04 .
$ sudo docker run -itd --name aosp-build -v /path-to-aosp/:/root/ aosp-build:14.04
$ sudo docker exec -it aosp-build bash
```
### rk3399

```shell
$ cd rk3399
$ sudo docker build --tag rk3399-build:18.04 .
$ sudo docker run -itd --name rk3399-build -v /path-to-rk3399SDK/:/root/ rk3399-build:18.04
$ sudo docker exec -it rk3399-build bash
```

### openwrt

```shell
$ cd openwrt
$ sudo docker build --tag openwrt-build:18.04 .
$ sudo docker run -itd --name openwrt-build -v /path-to-openwrt_source_path/:/root/ openwrt-build:18.04
$ sudo docker exec -it openwrt-build bash
```

### rk356x

The password of rk356x was '1'.

```shell
$ cd rk356x_android
$ sudo docker build --tag rk356x-build:18.04 .
$ sudo docker run -itd --name openwrt-build -v /path-to-rk356x_source_path/:/home/rk356x/sdk rk356x-build:18.04
$ sudo docker exec -it rk356x-build bash
```

If you want to build lean's lede project you just run `sudo openwrt/lean.sh <target path>`, it will auto clone source code and build image and container, you just run `sudo docker exec -it openwrt-build bash` to use it.
