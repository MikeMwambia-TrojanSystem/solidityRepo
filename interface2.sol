pragma solidity >=0.5.0 < 0.6.0

contract NumberInterface {
    function getNum(address _myAddress) public view returns (uint);
}

contract MyContract {
    address NumberInterfaceAddress = 0xab38...
   //The address of the above NumberInterface contract 
   NumberInterface numberContract = NumberInterface(NumberInterfaceAddress);
   // Now 'numberContract' is pointing to the other contract

   function someFunction() public {
       //Now we can call 'getNum' from that contract
       uint num = numberContract.getNum(msg.sender);
       //...and do something with 'num' here
   }
}

//In this way your contract can interact with any other contract on the
//ethereum blockchain ,as long as they expose those functions as public or external
