#!/bin/sh
## 更新源,如果源有问题的同学，请参考https://github.com/JackYang500/ubuntu-aliyun-sources
apt-get update

## 安装PPTP服务
apt-get -y install python-pip || {
  echo "无法定位软件，请检查源或依赖"
  exit 1
}

apt-get -y install python-gevent python-pip python-m2crypto python-wheel python-setuptools || {
  echo "无法定位软件，请检查源或依赖"
  exit 1
}

pip install shadowsocks || {
  echo "无法定位软件，请检查源或依赖"
  exit 1
}

ssserver -p 8388 -k qq123456 -m rc4-md5 -d start

exit 0