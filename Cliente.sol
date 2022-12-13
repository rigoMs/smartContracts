pragma solidity >=0.4.0 <0.7.0;
//importa solo un contrato
import "./Banco.sol";

//importa un subcobjunto de todos los archivos
//import {Banco, Banco1..} from "./Banco.sol";

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