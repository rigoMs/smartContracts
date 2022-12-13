pragma solidity >=0.4.0 <0.7.0;

contract causasBeneficas{

    struct Causa{
        string nombre;
        uint ide;
        uint precio_objetivo;
        uint cantidad_recaudada;

    }

    uint contador_causas =0;
        mapping (string => Causa) causas;

//permite dar de alta una nueva causa
        function AltaCausa(string memory _nombre, uint _objetivo) public payable{
            contador_causas = contador_causas++;
            //causa memory Causa =causa(contador_causas, _nombre, _objetivo,0);
            causas[_nombre]= Causa(_nombre, contador_causas,  _objetivo,0);

        }
    //avisa si ya se recaudo el dinero nencesario true o false
    function objetivoCumplido(string memory _nombre, uint _donar)private view returns (bool){
        bool flag=false;
        Causa memory cau= causas[_nombre];
        if(cau.precio_objetivo >= (cau.cantidad_recaudada+_donar)){
                flag=true;
        }
        return flag;

    }



        //permite donar a una causa
    function donar(string memory _nombre, uint _donativo)public returns(bool){
     bool acepta_donacion=true;

     if(objetivoCumplido(_nombre,_donativo)){
         causas[_nombre].cantidad_recaudada= causas[_nombre].cantidad_recaudada +_donativo;
     }else {
         acepta_donacion=false;
     }
     return acepta_donacion;

    }

    //esta funcion nos dice si emos llegado al precio objetivo
    function comprobar_causa(string memory _nombre) public view returns(bool, uint){
        bool limiteAlcanzado=false;
        Causa memory caus=causas[_nombre];
        if(caus.cantidad_recaudada>=caus.precio_objetivo){
            limiteAlcanzado=true;
        }
        return (limiteAlcanzado, caus.cantidad_recaudada);
    }


}