// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Strings {
    string public texto1;
    string public texto2;
    string public textoConcatenado;

    constructor(string memory texto) {
        texto1 = texto;
    }

    function setTexto2(string memory textoNovo) public {
        texto2 = textoNovo;
    }

    function concatenaView() public view returns (string memory) {
        return string.concat(texto1, texto2);
    }

    function concatenaStorage() public {
        textoConcatenado = string.concat(texto1, texto2);
    }

    function osTextosSaoIguais() public view returns (bool) {
        return keccak256(abi.encodePacked(texto1)) == keccak256(abi.encodePacked(texto2));
    }
}
