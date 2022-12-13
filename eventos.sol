pragma solidity >=0.4.0 <0.7.0;

contract eventos{

    event nombre_evento1 (string _nombrePersona);
    event nombre_evento2 (string _nombrePErsona, uint _edad);


    function EmitirEvento1(string memory _nombre) public{
        emit nombre_evento1(_nombre);
    }
    function EmitirEvento2(string memory _nombre, uint _edad)public{
        emit nombre_evento2(_nombre, _edad);
    }
}