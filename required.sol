pragma solidity >=0.4.0 <0.7.0;
pragma experimental ABIEncoderV2;

contract Require{

    //funcion que verifique la contraseña
    function password(string memory _pass)public pure returns(string memory){
        require(keccak256(abi.encode(_pass))==keccak256(abi.encode("12345")), "Contraseña Incorrecta");
        return "Contraseña correcta";
    }

    //funcion para pagar
    uint tiempo=0;
    uint public cartera =0;
    
    
    function Pagar(uint _cantidad)public returns(uint){
        require(now > tiempo + 5 seconds, "Aun no puedes pagar");
        tiempo = now;
        cartera= cartera + _cantidad;
        return cartera;
    }
//funcion para actualizar una lista

string []nombres;

    function nuevoNombre(string memory _nombre)public{
        for(uint i=0; i < nombres.length; i++){
            require(keccak256(abi.encode(_nombre))!=keccak256(abi.encode(nombres[i])),"ya esta en la lista");

        }
        nombres.push(_nombre);
    }














}