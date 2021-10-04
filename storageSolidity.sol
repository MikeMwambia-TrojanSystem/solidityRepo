pragma solidity >=0.5.0 <0.6.0;

import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {

    function feedAndMutiply(uint _zombieId,uint _targetDna) public {
        require(msg.sender == zombieToOwner[_zombieId]);
        Zombie storage myZombie =zombies[_zombieId];
    }
}




//Smart contract storage
contract SandwichFactory {
    struct sandwich {
        string name;
        string status;
    }

    sandwich[] sandwiches;

    function eatSandWich(uint _index) public {
        //sandwich mySandwich = sandwich[_index];

        //^ Seems pretty straightforward , but soliditiy will give you a warning
        //telling you that you should declare 'storage' or 'memory' here.
        //So instead ,you should declare with the 'storage' keyword , like:
        sandwich storage mySandwich = sandwiches[_index];
        //..in which case 'mySandwich' is a pointer to 'sandwiches[_index]' on the blockchain
        //in storage, and ...
        mySandwich.status = 'Eaten';
        //.. this will permanently change 'sandwiches[_index]' on the blockchain

        //If you just want a copy you can use 'memory' :
        sandwich memory anotherSandwich = sandwiches[_index + 1];
        //..in which case 'anotherSandwich' will simply be a copy of the
        //data in memory , and ...
        anotherSandwich.status = "Eaten!";
        //..will just modify the temporary variable and have no effect
        //on 'sandwiches[index+1] but you can do this : 
        sandwich[_index+1] = anotherSandwich;
        //If you want to copy the changes back into blockchain storage
    }
}






