/**
 * 这个文件是meatcoin智能合约的部署文件，里面约定了部署顺序，依赖关系。
 * MetaCoin智能合约是要依赖于库ConvertLib的，所以要先部署ConvertLib，然后link他们，再部署MetaCoin。
 * 这部分js的写法可以参照官方文档DEPLOYER API，主要就是介绍了一下deploy、link以及then三个方法的详细用法，不难这里不再赘述。
 * http://truffleframework.com/docs/getting_started/migrations
 */

var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
};
