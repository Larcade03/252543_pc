// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Almacen252543{
    ///252543
    struct Producto {
        uint256 id;
        string nombre;
        uint256 stock;
        bool estado;
    }
 
     Producto[] public productos;
     address public dirContrato;

    modifier registrarLog() {
        console.log("Ejecutado por: 252543 - Bray Luigui Vargas Perez");
        _;
    }
    constructor() registrarLog {
        dirContrato = address(this);
    }

   function agregarElemento(uint256 _id, string memory _nombre, uint256 _stock) public registrarLog {
        
        for (uint256 i = 0; i < productos.length; i++) {
            require(productos[i].id != _id, "Producto con ese ID ya existe");
        }

        require(_stock > 0, "El stock debe ser mayor a cero");

        productos.push(Producto(_id, _nombre, _stock, true));
    }

    function contarElementos() public view registrarLog returns (uint256) {
        return productos.length;
    }
}
