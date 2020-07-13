pragma solidity >=0.4.22 <0.6.0;
contract bid {
//    string public constant name = "ERC20Basic";
    //to set at construction
    string public constant itemDescription = "Description of the item to bid";
    uint256 public constant itemPrice = 2500;
    uint256 public numbloq=0
    uint256 public expireTime = numbloq+50;
//    uint8 public constant decimals = 18;  


//    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
//    event Transfer(address indexed from, address indexed to, uint tokens);
    event Expired(address indexed winner, uint tokens);


    mapping(address => uint256) bids;
    
    uint256 maxBid=0;

    using SafeMath for uint256;

   function bid(address bidder, uint256 bidPrice) public{
        require(bidPrice>maxBid)
        maxBid=bidPrice;
        bids[bidder]=bidPrice;
   } 
   


//owner
//expirar la subasta
//otros pujadores puedan recuperar su dinero




}

library SafeMath { 
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
      assert(b <= a);
      return a - b;
    }
    
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
      uint256 c = a + b;
      assert(c >= a);
      return c;
    }
    
    
}
