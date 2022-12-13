pragma solidity >=0.4.0 <0.7.0;

contract Modifier{

    address public owner;

    constructor()public {
        owner=msg.sender;
    }

    modifier soloPropietario(){
        require(msg.sender==owner,"No tienes permisos para ajecutar la funcion");
        _;
    }

    function ejemplo1() public soloPropietario(){
        //codigo para la funcion que solo ejecuta el propietario
    }

    //funcion para solo los clientes
    struct cliente{
        string nombre;
        string direccion;
    }
    mapping(string => address) clientes;


    function altaCliente(string memory _nombre)public{
        clientes[_nombre] = msg.sender;
    }
//modifier solo para los clientes
    modifier soloClientes(string memory _nombre){
        require(clientes[_nombre]== msg.sender);
        _;
    }

    function ejemplo2(string memory _nombre )public soloClientes(_nombre){
        //logica de solo el cliente
    }

    //ejemplo de conduccion
    modifier MayorEdad(uint _adadMinima, uint _edadUsuario){
        require(_edadUsuario>=_adadMinima); _;
    }

    function conducir(uint _edad) public MayorEdad(18,_edad){
        //logica de edad de conducir mayores de edad
    }



}