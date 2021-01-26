## Use
aosp:
```
$ sudo docker build --tag aosp-build:14.04 .
$ sudo docker run -itd --name aosp-build -v /path-to-aosp/:/root/ aosp-build:14.04
$ sudo docker exec -it aosp-build bash
```