// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract basicSolidity {
    uint public numero;
    uint public numeroSomado;
    address private owner;

    // constructor
    constructor(uint numeroInicial) {
        numero = numeroInicial;
        owner = msg.sender;
    }

    modifier onlyOwner {
        if (msg.sender == owner) {
            _;
        }
    }

    // getters e setters
    // visibilidade: public, private, internal, external
    // view e pure

    function setNumero(uint new_number) public onlyOwner {
        numero = new_number;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function somarAoNumero(uint somar) public returns (uint) {
        numeroSomado = numero + somar;
        return numeroSomado;
    }
}