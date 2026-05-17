// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Almacen252543{
    ///252543
    struct Producto {
        uint256 id;
        string nombre;
        uint256 stock;
    }
 
     Producto[] public productos;

    constructor() {
        console.log("Ejecutado por: 252543- Bray Luigui Vargas Perez");

        //salida: contract address:  0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _stock) public {
        productos.push(Producto(_id, _nombre, _stock));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 252543 - Bray Luigui Vargas Perez");
        return productos.length;
    }
}
