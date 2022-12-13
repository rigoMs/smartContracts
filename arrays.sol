pragma solidity >=0.4.0 <0.7.0;

contract Arrays{
    
    //arrays de enteros de longitud fija
    uint[5] public arrayEntero =[2,5,8];

    //arrays de entero de 32 bits fija 
    uint32[7] arrayEntero32bits;

    //arrays de string longitud fija 
    string[5] arrayString;

    //array dinamico de entero
    uint[] arrayDenteros;

    struct Persona{
        string nombre;
        uint edad;
    }

    //array dinamico persona
    Persona[] public personas;

    

    function modificarArray(string memory _nombre, uint _edad) public{
        //arrayDenteros.push(_numero);
        personas.push(Persona(_nombre, _edad));

    }


}