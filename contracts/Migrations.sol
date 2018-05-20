pragma solidity ^0.4.2;

contract Migrations {
  //声明变量，地址类型变量owner，存储于storage，公共可访问
  address public owner;
  //声明变量， uint类型，公共可访问
  uint public last_completed_migration;

  //modifier函数
  modifier restricted() {
    if (msg.sender == owner) _;
  }

  //构造函数，赋初始值
  function Migrations() public {
    owner = msg.sender;
  }

  //setCompleted赋值方法，赋值给last_completed_migration，其中该方法被声明为restricted
  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  //调用当前合约自己的方法，得到合约的实例upgraded，然后通过该是咧调用setCompleted赋值方法。
  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);
    upgraded.setCompleted(last_completed_migration);
  }
}
