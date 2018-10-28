pragma solidity ^0.4.0;
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/math/SafeMath.sol";
contract Bank {
    mapping (address => uint) public accounts;
    using SafeMath for uint256;
    function deposit() public payable {
        require(accounts[msg.sender] + msg.value >= accounts[msg.sender],"StackOverflow");
        accounts[msg.sender] =accounts[msg.sender].add(msg.value);
    }
    function withDrawl(uint amount) public {
        require(amount <= accounts[msg.sender]);
        accounts[msg.sender] = accounts[msg.sender].sub(amount);
        
    }
}
