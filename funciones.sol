pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract funciones{

    //añadir dentro de un array de direcciones la direcion de la persona que ejecute 
    address[] public direcciones;

    function nuevaDireccion() public {
        direcciones.push(msg.sender);

    }
    //computar el hash de los datos proporcionados como parmetro
    bytes32 public hash;

    function hashs(string memory _datos) public {
        hash = keccak256(abi.encode(_datos));
    }
        //declaramos un tipo de dato complejo que es comida
        struct comida{
            string nombre;
            string ingredientes;
        }

        //vamos a crear un tipo de dsto complejo
        comida public hamburguesa;

        function hamburguesas(string memory _ingredientes)public{
            hamburguesa= comida("hamburguesa", _ingredientes);
        }
//declaramos in tipo de dato complejo
        struct alumno{
            string nombre;
            address direccion;
            uint edad;

        }
        bytes32 public hash_is_alumno;
//calcular el hash metodo privado
        function hasId(string memory _nombre, address _direccion, uint edad) private {
            hash_is_alumno = keccak256(abi.encodePacked(_nombre, _direccion, edad));
        }
        //giardamos con la funcion publica dentro de una lista los alumnos
        alumno[] public lista;
        mapping (string => bytes32) alumnoss;

        function nuevoAlumno(string memory _nombre, uint _edad)public {
            lista.push(alumno(_nombre, msg.sender, _edad ));
            hasId(_nombre, msg.sender, _edad);
            alumnoss[_nombre]= hash_is_alumno;
        }

}