// SPDX-License-Identifier: MIT

// SwapTrust Token (STT):
// Nombre del Token: SwapTrust Token (STT).
// Significado: SwapTrust combina las palabras "swap" (intercambio) y "trust" (confianza). 
// Este nombre sugiere que el token se utiliza para respaldar y registrar intercambios confiables entre los miembros de una comunidad comercial.
// Descripción: El SwapTrust Token (STT) es la moneda digital que respalda la economía colaborativa en de una comunidad de emprendedores.

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";


contract TOKEN_ERC20 is ERC20, ERC20Permit {
     // Dirección del dueño del contrato
    address public owner;

    constructor() ERC20("SwapTrustToken", "STT") ERC20Permit("SwapTrustToken") {
        _mint(msg.sender, 1000 * 10 ** 18);
        owner = msg.sender; //Set the owner of the contract. The only address that can register evidences.
    }

    modifier onlyOwner {
            require(msg.sender == owner, "Solo el Owner puede realizar esta operacion."); //Only the owner can register evidences.
            _;
        }

   function setOwner(address newOwner) external onlyOwner { 
            owner = newOwner;
    }


   function mint( uint256 amount)  external  onlyOwner {
        _mint(msg.sender, amount * 10 ** 18);
    }
}