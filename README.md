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