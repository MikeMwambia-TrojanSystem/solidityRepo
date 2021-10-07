//Smart cotnract talk to each other through interface
contract luckNumber {
    mapping (address => uint) numbers ;
    function setNum(uint _num) public {
        numbers[msg.sender] = _num;
    }

    function getNum (address _myAddress) public view returns (uint) {
        return numbers[_myAddress];
    }
}

//The interface for the above function would be : - 
contract NumbInterface {
    function getNum(address _myAddress) public view returns (uint);
}