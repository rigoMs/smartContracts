pragma solidity >=0.4.0 <0.7.0;

contract valoresRetorno{

//declaramos una funcion que nos devielba un saludo

    function saludo() public returns(string memory){
        return "hola mundo solidity";
    }
    //funcion que devuelva una multiplicacion
    function Multiplica(uint _a, uint _b) public returns (uint){
        return _a*_b;
    }

//funcion que devuelve true o false si un numero es par
    function ParoImpar(uint _numero) public returns (bool){
        bool flag;
        if(_numero%2==0){
            flag=true;

        }else {
            flag=false;
        }
        return flag;
    }
//funcion que devuelve el cociente, el residuo, y el multiplo de dos numeros
function Division(uint _a, uint _b) public returns(uint, uint, bool){
    uint q = _a/_b;
    uint r= _a%_b;
    bool mutiplo=false;
    if(r==0){
        mutiplo=true;
    }
    return (q,r,mutiplo);
}
//practica para el manejo de los valores devueltos
    function nuemero()public returns (uint, uint, uint, uint, uint, uint){
        return (1,2,3,4,5,6);
    }
//asignacion multiple
    function todosLosNumeros()public{
        //declaramos las variables donde se guardan valores de retorno de la funcion numero
        uint a;
        uint b; 
        uint c;
        uint d;
        uint e;
        uint f;

        (a,b,c,d,e,f)= nuemero();
    }

    function ultimovalor()public{
        (,,,,,uint ultimo)=nuemero();
    }


}