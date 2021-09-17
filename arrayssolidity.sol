pragma >=0.5.0 < 0.6.0

/*
When you want a collection of something in solidity you can use an array.
They fall under two types i.e fixed arrays and dynamic arrays.
*/

uint [2] fixedArray; //Declares array of 2 int element fixed length;

string [5] stringArray; //Declares a fixed array of 5 elements  of string;

uint [] dynamicArray ; //Declares a dynamic array xz

Person [] people ; // This creates a dynamic array of structs
Person [3] people ; //Creates a fixed array of people struct

/*
You can declare an array public , and solidity will automatically create
a gettr method for it.The syntax looks like : 
Person [] public people;
Other contracts would then read from , but not write to , this array.So this 
is a useful pattern for storing public data in your contract.
*/
Person[]public people;

contract PaintingFactory {
    uint colorshades = 16;
    uint paintingDNA = 10 ** colorshades;//This is 10 ^ 16
    struct paintingTraits {
        uint price;
        string owner;
    }
    //This is a public array to get information about the painting called Paintings
    paintingTraits[]public Paintings;
}