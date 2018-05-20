# Truffle-examples

## 1. TRUFFLE是什么？
Truffle是一个世界级的开发环境，测试框架，以太坊的资源管理通道，致力于让以太坊上的开发变得简单，
Truffle有以下功能：

  - 内置的智能合约编译，链接，部署和二进制文件的管理。
  - 快速开发下的自动合约测试。
  - 脚本化的，可扩展的部署与发布框架。
  - 部署到不管多少的公网或私网的网络环境管理功能
  - 使用EthPM&NPM提供的包管理，使用ERC190标准。
  - 与合约直接通信的直接交互控制台（写完合约就可以命令行里验证了）。
  - 可配的构建流程，支持紧密集成。
  - 在Truffle环境里支持执行外部的脚本。


### TRUFFLE的安装

    sudo npm install -g truffle


#### Truffle客户端
有许多的以太坊客户端可以选择。我们推荐在开发和部署时使用不同客户端。

###### 开发的客户端 

EtherumJS TestRPC

现在官方已经推荐使用 ganache-cli了

官方地址： (ganache-cli)[https://github.com/trufflesuite/ganache-cli]


###### 正式发布的客户端

  - Geth (go-ethereum)
  - WebThree(cpp-ethereum)
  - More

在开发环境中测试完成之后，再发布到正式节点上。
这些是完整的客户端实现，包括挖矿，网络，块及交易的处理，Truffle可以在不需要额外配置的情况下发布到这些客户端。

## 下载TRUFFLE 官方粟子 MetaCoin样例

### 初始化项目

原来使用truffle init，但现在官方已经改用unbox。

##### unbox

Truffle boxs盒子模版。官方地址： http://truffleframework.com/boxes/
可以选择想要的模版。

我们取最简单的metacoin模板。

    mkdir MetaCoin
    cd MetaCoin
    truffle unbox metacoin

#### 未完待续 .... 

