pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    mapping (uint => address) public zombieToOwner;//Means map a specific uint to a specific address
    mapping (address => uint) ownerZombieCount;

    function _createZombie(string memory _name, uint _dna) private {
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        // start here
        zombieToOwner[id] = msg.sender;//This assigns id to msg.sender;
        ownerZombieCount[msg.sender]++//This returns an index of where the address of msg.sender is located.
        emit NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        require(ownerZombieCount[msg.sender]==0);//This requires the msg.sender does not own a zombie same as if array[1]==_1
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}



mapping (address => uint) favoriteNumber;
//In solidiy msg.sender refers to the person calling the function
function setMyNumber(uint _myNumber) public {
    //Update our 'favouriteNumber' mapping to store '_myNumber' under 'msg.sender'
    favoriteNumber[msg.sender] = _myNumber;
    // ^ The syntaxt to store data ina mapping is just like with arrays.
}

function whatIsMyNumber() public view returns (uint) {
    //Retrieve the value stored in the sender's address
    //Will be '0' if the sender hasn't called 'setMyNumber' yet
    return favoriteNumber[msg.sender];
}


