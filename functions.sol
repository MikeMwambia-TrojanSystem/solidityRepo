pragma solidity >=0.5.0 <0.6.0;

contract ungaFactory {
    uint mixGrades = 16;
    uint gradeLevel = 10 ** colorShades;

    struct unga {
        string name;
        uint price;
        uint grade;
    }
    unga [] public ungaArray;

    //Functions Declarations in Solidity
    //Public function
    //Memory means the variable is stored in memory
    //Always use _ to differentiate the local variables and global
    function mixUnga(string memory _name,uint _price,uint _gradeLevel) public {

        //Create a new unga struct
        unga ujimix = unga('new unga label',45,90);
        ungaArray.push(ujimix);

        //Short would be : - 
        ungaArray.push(unga(_name,_price,_gradeLevel));

    }

    //Private function
    //NB:- In solidity functions are public by default
    //Private function means that only the functions within the contract can call them
    //Public means anyone or any contract can call the functions
    //And as with function parameters, it's convention to start private function names with an underscore (_).
    function _privateUnga (string memory _name,uint _price,uint _gradelevel) private {

        //Create a new unga mix privately
        unga privateUnga = unga(_name,_price,_gradelevel);
        //Push to array
        unga [] private privateUngaArray;
        privateUngaArray.push(privateUnga);

    }
}