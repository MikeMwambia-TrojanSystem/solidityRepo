pragma solidity >=0.5.0 <0.6.0;

contract paintingFactory {
    uint colorshades = 16;
    uint paintingDNA = 10 ** 16;//This is 10 ^ 16
    //uint paintingAddition = x + y;
    //uint paintingSubtraction = x - y;
    //uint paintingMutiplication = x * y;
    //uint paintingDivision = x / y ; 
    //uint paintingRemainder = x % y;
    //For more complex data there're structs
    struct paintingTraits {
        uint price;
        string owner;
    }

}