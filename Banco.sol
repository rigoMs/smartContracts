pragma solidity >=0.4.0 <0.7.0;

contract banco{

//definimos un tipo de datps complejo
    struct cliente{
        string nombre;
        uint dinero;
        address direccion;
    }

    //relacionamos el tipo de dato 
    mapping(string => cliente) clientes;

//funcion que nos permita dar de alta un cliente

    function nuevoCliente(string memory _nombre) public {
            clientes[_nombre]=cliente(_nombre, 0, msg.sender);
    }
    }

