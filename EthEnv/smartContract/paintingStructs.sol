pragma solidity >=0.5.0 <=0.6.0

/*
More complex data in solidity is represented in structs
See in code below
There's also data type of String e.g
string greeting = "Hello world";
*/

contract paintingFactory {

    uint colorVariations = 16;

    uint colorVariationsModulus = 10 ** colorVariations;

    struct Painting {
      uint age ;
      string name;
    }

}
