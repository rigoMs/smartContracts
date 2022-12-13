pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract viewPurePayable{

    //modificador de view
    string[] lista_alumno;

    function nuevo_alumno(string memory _alumno) public{
        lista_alumno.push(_alumno);
    }

    function verAlumno(uint _posicion) public view returns(string memory){
        return lista_alumno[_posicion];
    }
    uint x=10;
    function sumarX(uint _a) public view returns(uint){
        return x+_a;
    }

    //modificador de pure
    function exponen(uint _w, uint _b) public pure returns(uint){
        return _w**_b;
    }
    //modificador payable

    struct cartera{
        string nombre;
        address direccionPersona;
        uint cantidad;
    }

mapping(address => cartera)DineroCartera;

function depositar(string memory _nombre, uint _dinero) public payable {
    cartera memory mi_cartera;
    mi_cartera= cartera(_nombre,msg.sender, _dinero);
    DineroCartera[msg.sender]= mi_cartera;

}

function verSaldo()public view returns (cartera memory){
    return DineroCartera[msg.sender];
}






}