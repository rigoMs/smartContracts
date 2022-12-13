pragma solidity >=0.4.0 <0.7.0;

contract bucleFor{

    function Suma(uint _numero)public pure returns(uint){
        uint suma=0;
        for (uint i= _numero; i< (_numero+100); i++){
            suma=suma+i;
        }
        return suma;
    }

    address [] direcciones;

    function aociar()public{
        direcciones.push(msg.sender);
    }

    function comprobarAsociacion() public view returns(bool, address){
        for(uint i=0;i<direcciones.length; i++){
            if(msg.sender==direcciones[i]){
                return (true, direcciones[i]);
            }
        }
    }

    

}