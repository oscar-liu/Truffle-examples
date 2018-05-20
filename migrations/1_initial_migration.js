var Migrations = artifacts.require("./Migrations.sol");

//部署Migrations智能合约文件。
module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
