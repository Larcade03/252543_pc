// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Almacen{
    ///252543
    struct Producto {
        uint256 id;
        string nombre;
        uint256 stock;
    }
 
     Producto[] public productos;

    constructor() {
        // Esto pintará en la terminal exactamente el formato solicitado
        console.log("Ejecutado por: 252543- Bray Luigui Vargas Perez");
    }
}
