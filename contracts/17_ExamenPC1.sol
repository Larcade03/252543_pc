// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Almacen252543 {

    struct Producto {
        uint256 id;
        string nombre;
        uint256 stock;
        bool estado; 
    }

    mapping(uint256 => Producto) public productos;

    uint256[] private historialIds;

    uint256 public cantidad;
    
    address public dirContrato;

    modifier registrarLog() {
        console.log("Ejecutado por: 252543 - Bray Luigui Vargas Perez");
        _;
    }

    constructor() registrarLog {
        dirContrato = address(this);
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _stock) public registrarLog {
        require(productos[_id].id == 0, "Producto con ese ID ya existe");
        require(_stock > 0, "El stock debe ser mayor a cero");

        productos[_id] = Producto(_id, _nombre, _stock, true);
        
        historialIds.push(_id);

        cantidad++;
    }

    function contarElementos() public view registrarLog returns (uint256) {
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public registrarLog {
        require(productos[_id].id == _id, "El producto no existe");
        productos[_id].estado = false;
    }

    function pintarElementosActivos() public view registrarLog {
        for (uint256 i = 0; i < historialIds.length; i++) {
            uint256 currentId = historialIds[i];
            if (productos[currentId].estado == true) {
                console.log("Producto activo:", productos[currentId].id, productos[currentId].nombre);
            }
        }
    }

    function pintarElementosImpares() public view registrarLog {
        for (uint256 i = 0; i < historialIds.length; i++) {
            uint256 currentId = historialIds[i];
            if (productos[currentId].id % 2 != 0) {
                console.log("Producto ID impar:", productos[currentId].id, productos[currentId].nombre);
            }
        }
    }
}