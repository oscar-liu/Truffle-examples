/**
 * Solidity智能合约版本的单元测试
 * 文件的命名规则是Test加待测智能合约的名字拼串组成
 * 官方文档： http://truffleframework.com/docs/getting_started/solidity-tests
 */
pragma solidity ^0.4.2;

//引入truffle的必备类库
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/MetaCoin.sol";

//建立单元测试智能合约
contract TestMetacoin {

  function testInitialBalanceUsingDeployedContract() public {
    MetaCoin meta = MetaCoin(DeployedAddresses.MetaCoin());

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 MetaCoin initially");
  }

  function testInitialBalanceWithNewMetaCoin() public {
    MetaCoin meta = new MetaCoin();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 MetaCoin initially");
  }

}
