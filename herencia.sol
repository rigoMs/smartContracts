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


contract Cliente is banco{

    function AltaCliente(string memory _nombre)public{
        nuevoCliente(_nombre);
    }

    function Ingresadinero(string memory _nombre, uint _cantidad)public{
        clientes[_nombre].dinero=clientes[_nombre].dinero+ _cantidad;
    }

    function RetiraDinero(string memory _nombre, uint _cantidad)public returns (bool){
        bool flag=true;
        //se castea de uint a int para que almacene valores son signo
        if(int(clientes[_nombre].dinero)-int(_cantidad) >0){
         clientes[_nombre].dinero=clientes[_nombre].dinero - _cantidad;   
        }else{
            flag=false;
        }
        return flag;
    }

    function ConsultaDinero(string memory _nombre)public view returns(uint){
        return clientes[_nombre].dinero;
    }

}