// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract Ejemplos_enumeraciones {

    //Switch enumeration
    enum estado {ON, OFF}

    //Variable of type enum (status)
    estado state;

    function encender() public {
        state = estado.ON;
    }

    function fijarEstado(uint _k) public {
        state = estado(_k);
    }

    function Estado() public view returns (estado){
        return state;
    }

    //Address Listing
    enum addresses {ARRIBA, ABAJO, DERECHA, IZQUIERDA}

    //Variable of type enum (addresses)
    addresses addresse = addresses.ARRIBA;

    function arriba() public {
        addresse = addresses.ARRIBA;
    }

    function abajo() public {
        addresse = addresses.ABAJO;
    }

    function derecha() public {
        addresse = addresses.DERECHA;
    }

    function izquierda() public {
        addresse = addresses.IZQUIERDA;
    }

    function fijarDirecciones(uint _k) public {
        addresse = addresses(_k);
    }

    function Addresses() public view returns (addresses){
        return addresse;
    }
}