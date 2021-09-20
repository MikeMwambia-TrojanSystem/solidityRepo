pragma solidity >=0.5.0 <0.6.0;

contract paintingFactory {
    //This variables will be stored permanently on blockchain - On chain
    uint colorshades = 16;
    uint paintingDNA = 10 ** 16;//This is 10 ^ 16
    uint paintingAddition = x + y;//Addition
    uint paintingSubtraction = x - y;//Subtraction
    uint paintingMutiplication = x * y;//Mutiplication
    uint paintingDivision = x / y ; //Division
    uint paintingRemainder = x % y;//Remainder

    //For more complex data there're structs
    struct paintingTraits {
        uint price;
        string owner;
    }

    //Arrays i.e Fixed Array , Dynamic Array
    uint[2] fixedArray;//Fixed Array
    string[5] stringArray;//Fixed array of 5 strings
    uint[] dynamicArray; //Dynamic Array has no fixed size can keep growing

    paintingTraits[] PaintingTraits;//Dynamic array of paintingTraits structs

    //When you declare an array public like this it means 
    //Solidity automatically creates a getter method for it
    //NB:- Notice the arrangement structs,array sign,public,Name of array
    paintingTraits[] public PaintingTraits;
}