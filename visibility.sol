//--In solidity public function can be accessed from any other contract.
//--Private can only be accessed from within the contract
//--Internal same as private but can also be accessed by contracts that inherit
//from this contract.
//--External similar to public except this functions can only be called outside the contract--functions inside the 
//contract can't call this functions.

contract Sandwich {
    uint private sandwicheaten = 0;

    function eat() internal {
        sandwicheaten ++;
    }

    function eatPrivate() private {
        sandwicheaten --;
    }

    eatPrivate();//Will work coz it's private within the contract

    eat();//Will not work
}


contract breadEater is Sandwich {
    uint private baconSandwichEaten = 0;

    function eatWithBacon() public return (string memory) {
        baconSandwichEaten++;
        //We can call this here because it's internal
        eat();
    }
}
