pragma solidity ^0.4.18;

import "./ConvertLib.sol";

// This is just a simple example of a coin-like contract.
// It is not standards compatible and cannot be expected to talk to other
// coin/token contracts. If you want to create a standards-compliant
// token, see: https://github.com/ConsenSys/Tokens. Cheers!

contract MetaCoin {
	// 定义了一个映射类型变量balances，key为address类型，值为无符整型，应该是用来存储每个账户的余额，可以存多个。
	mapping (address => uint) balances;

	//事件 交易动作
	event Transfer(address indexed _from, address indexed _to, uint256 _value);

  // 构造函数，tx.origin查查上面，找到它会返回交易发送方的地址，也就是说合约实例创建时会默认为当前交易发送方的余额塞10000，单位应该是你的仿币。
	function MetaCoin() public {
		balances[tx.origin] = 10000;
	}

  // 函数声明: 方法名，参数列表，函数可见性，返回值类型定义。
	function sendCoin(address receiver, uint amount) public returns(bool sufficient) {

		// 如果余额小于发送值，则返回发送币失败
		if (balances[msg.sender] < amount) return false;
		// 否则从发送方余额中减去发送值，注意Solidity也有 “-=”，“+=” 的运算符哦
		balances[msg.sender] -= amount;
		// 然后在接收方的余额中加入发送值数量。
		balances[receiver] += amount;
		// 使用以上event关键字声明的方法
		Transfer(msg.sender, receiver, amount);
		return true;
	}

  // 获取币的余额
	function getBalanceInEth(address addr) public view returns(uint){
		//调用ConvertLib包的函数
		return ConvertLib.convert(getBalance(addr),2);
	}

  // 获取当前账户的币余额
	function getBalance(address addr) public view returns(uint) {
		return balances[addr];
	}
}
