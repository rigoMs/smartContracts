pragma solidity >=0.4.4 <0.7.0;

contract Estructuras{
   //cliente de una pagina web de pago
   struct cliente{
       uint id;
       string name;
       string dni;
       string email;
       uint phone_number;
       uint credit_number;
       uint secret_number;

   }
   //declaramos una variable de tipo cliente
    cliente cliente_1= cliente(1, "rigo", "123456B","rigo@gmail.com",123456789,1234,11);

   //amazon o cualquier pagina de compra venta de productos
   struct producto{
       string nombre;
       uint precio;

   }
   //declaramos una variable de tipo producto
   producto producto_1= producto("telefono",1200);
   
   //ong para diversas causas
   struct ong{
       address ong;
       string nombre;

   }
    //declaramos una variable de tipo ong
    ong unisef= ong(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,"caritas");

   struct Causa{
       uint id;
       string nombre;
       uint precio_objetivo;
   }
    //variable tipo causa
   Causa medicina= Causa(1,"medicina", 1000);


}

