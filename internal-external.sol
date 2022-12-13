pragma solidity >=0.4.0 <0.7.0;

contract Comida{

    struct plato{
        string nombre;
        string ingredientes;
        uint timepo;
    }
//declaramos un arrreglo de platos
    plato[] platos;
//relacionamos el nombre del plato con sus ingredientes
    mapping (string => string) ingre;

function NuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal {
    platos.push(plato(_nombre, _ingredientes, _tiempo));
    ingre[_nombre] = _ingredientes;
} 

function ingredientes(string memory _nombre) internal view returns(string memory){
    return ingre[_nombre];
}

}

contract Sandwitch is Comida{

    function sandwitch(string memory _ingredien, uint _tiempo) public {
        NuevoPlato("Sandwitch", _ingredien , _tiempo);
    }
    function verIngredientes()external view returns(string memory){
        return ingredientes("Sandwitch");
    }

}