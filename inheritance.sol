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

    // declare mappings here
    //Mapping are a way of organizing data in solidity ot retrieve and store
    //As shown below
    mapping(uint => address) public zombieToOwner;//Maps who is the owner of what zombie through ID and address of owner
    mapping(address => uint) ownerZombieCount;//Maps the owner's address to the no. of zombies he owns
    function _createZombie(string memory _name, uint _dna) private {
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        emit NewZombie(id, _name, _dna);
    } 

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}


//Inheritance works like this in solidity
//This means that all the PUBLIC functions available in Zombie Factory
//Will be available in ZombieFeeding contract.
contract ZombieFeeding is ZombieFactory {
        
}