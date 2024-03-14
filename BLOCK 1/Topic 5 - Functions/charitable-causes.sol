// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract causesBeneficial{

    //Statements required
    struct Causa{
        uint Id;
        string name;
        uint precio_objectivo;
        uint cantidad_recaudada;
    }

    uint contador_causas=0;
    mapping (string => Causa) causas;

    //Allows you to register a new case
    function nuevaCausa(string memory _nombre, uint _precio_objectivo) public payable{
        contador_causas = contador_causas++;
        causas[_nombre] = Causa(contador_causas, _nombre, _precio_objectivo, 0);
    }

    //This function returns true if we can donate to a cause and false otherwise.

    function objetivoCumplido(string memory _nombre, uint _donar) private view returns(bool){

        bool flag = false;
        Causa memory causa = causas[_nombre];

        if(causa.precio_objectivo >= (causa.cantidad_recaudada+_donar)){
            flag=true;
        }
        return flag;

    }


    //This function allows us to donate to a cause
    function donar(string memory _nombre, uint _cantidad) public returns(bool){

        bool aceptar_donacion=true;

        if(objetivoCumplido(_nombre, _cantidad)){
            causas[_nombre].cantidad_recaudada = causas[_nombre].cantidad_recaudada + _cantidad;
        }else{
            aceptar_donacion = false;
        }
        return aceptar_donacion;
    }

    //This function tells us if we have reached the target price.
    function comprobar_causa(string memory _nombre) public view returns(bool, uint){

        bool limite_alcanzado = false;
        Causa memory causa = causas[_nombre];

        if(causa.cantidad_recaudada>=causa.precio_objectivo){
            limite_alcanzado = true;
        }

        return (limite_alcanzado, causa.cantidad_recaudada);

    }

}