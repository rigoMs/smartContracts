
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;



contract hash{

    function calcularHash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encode(_cadena));
    }
    function collisionExample2(string memory _string1, string memory _string2) public pure returns (bytes32) {
         return keccak256(abi.encode(_string1, _string2));
    }


}