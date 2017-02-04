---
title: 'VPN搭建:亚马逊EC2+Shadowsocks'
categories:
  - 工具
tags:
  - VPN
  - EC2
  - Shadowsocks
date: 2017-02-04 15:46:22
---
![](http://cdn.tyrion.wang/shadowsocks_title.jpg)
<!-- more -->
## 在之前你需要知道的

* 这种方法应该是目前性价比最高的一种搭建VPN的方式了，亚马逊的EC2小型配置可以免费使用1年。也就是说，你的vpn<font color="#FF0000">第一年完全免费</font>。
* 注册一年免费的EC2需要<font color="#FF0000">绑定信用卡</font>，期间一般不会产生额外费用。实在不放心你可以对账户设置$0的账单报警，一旦产生费用，你可以及时知道。如果你没有信用卡或者介意绑定信用卡，请不要使用这种方法。
* 这篇文章会写得很啰嗦，目的是让尽可能多的人能搭建成功。如果你有AWS的经验，可以选择性的跳过某些部分。
* 文章的步骤有一定的时效性，随着AWS升级，步骤可能会有部分调整，如果有步骤走不通请[邮件联系](mailto:tyrion_wang@163.com)我。

## 申请AWS账号
* 在[AWS官网](http://aws.amazon.com)进入注册页面
* 注册过程中会绑定信用卡
* 之后注意在“支持方案“选择时勾选”基本（免费）“，之后完成AWS账号创建
![](http://cdn.tyrion.wang/shadowsocks_1_1_select_plan.png)

## 创建一个EC2
1. 进入AWS管理控制台，左上角创建EC2，如果需要改变服务器节点的话，右上角可以操作。
![](http://cdn.tyrion.wang/shadowsocks_2_1_create_EC2.png)

2. 启动实例
![](http://cdn.tyrion.wang/shadowsocks_2_2_run_EC2.png)

3. 选择ubuntu映像
![](http://cdn.tyrion.wang/shadowsocks_2_3_select_ubuntu.png)

4. 选择符合免费条件的实例类型，点击“审核和启动”
![](http://cdn.tyrion.wang/shadowsocks_2_4_get_free_plan.png)

5. 创建新密钥对，输入密钥名称，点击“下载密钥对”，将这个*.pem文件保存到电脑上，点击“启动实例”
![](http://cdn.tyrion.wang/shadowsocks_2_5_save_key.png)

## 连接AWS远程服务器
1. 控制台查看连接步骤，写得很清楚，这里就不赘述了
![](http://cdn.tyrion.wang/shadowsocks_3_1_link.png)
![](http://cdn.tyrion.wang/shadowsocks_3_2_link.png)

## 安装和配置Shadowsocks
* ssh连接到服务器之后
{% codeblock lang:shell %}
$ sudo -s //获取超级管理员权限
$ apt-get update //更新apt-get
$ apt-get install python-pip //安装pip工具，用于安装shadowsocks
$ pip install shadowsocks //安装shadowsocks
$ vim ~/shadowsocks_conf.json //编辑shadowsocks配置，见后文
$ ssserver -c ~/shadowsocks_conf.json -d start //启动shadowsocks
{% endcodeblock %}

* shadowsocks_conf.json配置内容：
{% codeblock lang:json %}
{
    "server":"0.0.0.0",
    "port_password": {
        "[这里写你的端口号，通常为8388]": "[密码1]",
        "[其他端口号]": "[密码2]"
    },
    "local_address": "127.0.0.1",
    "local_port":1080,
    "timeout":600,
    "method":"aes-256-cfb",
    "auth": true
}
{% endcodeblock %}

## 编辑EC2入站规则
1. 回到EC2控制台，实例列表最右边点击进入“安全组”（需要滑动一下，“安全组”在窗口外）
![](http://cdn.tyrion.wang/shadowsocks_4_1_edit_rule.png)

2. 点击“操作”->“编辑入站规则”
![](http://cdn.tyrion.wang/shadowsocks_4_2_edit_rule.png)

3. “添加规则”，类型为“自定义TCP规则”，端口填入shadowsocks_conf.json配置的“server_port”，这里为8388，之后“保存”
![](http://cdn.tyrion.wang/shadowsocks_4_3_edit_rule.png)

4. 到这里VPN服务器就搭建完毕了

## 使用Shadowsocks客户端
这里以mac为例

1. 到[Shadowsocks官网](https://shadowsocks.org)下载客户端
![](http://cdn.tyrion.wang/shadowsocks_5_1_download_clint.jpg)

2. 安装好以后配置客户端，如下图（服务器公有IP在EC2控制台查询）
![](http://cdn.tyrion.wang/shadowsocks_5_2_input_server_info.png)
![](http://cdn.tyrion.wang/shadowsocks_5_3_info.png)

3. 到这里，整个VPN就可以正常使用了

## 后记
整个VPN搭建和使用教程到这里就结束啦，啰啰嗦嗦写了一大堆，其实搭建起来很快的，熟悉步骤了半个小时搞定绰绰有余。写得这么啰嗦还是为了各位同学能顺利的搭建属于自己的VPN服务器，<font color="#FF0000">第一年免费哦！</font>

好啦，就到这里吧，感谢各位同学的耐心阅读~~~^_^