//Started choose the version
pragma solidity >=0.4.4 <0.7.0;

contract globalFunctions {

    //Function msg.sender
    function MsgSender() public view returns (address){
        return msg.sender;
    }

     //Function now
    function Now() public view returns (address){
        return now;
    }

    //Function block.coinbase
    function BlockCoinbase() public view returns (address){
        return block.coinbase;
    }

    //Function block.difficulty
    function BlockDifficulty() public view returns (uint){
        return block.difficulty;
    }


    //Function block.number
    function BlockNumber() public view returns (uint){
        return block.number;
    }

    //Function msg.sif
    function MsgSif() public view returns (bytes4){
        return msg.sig;
    }

    //Function tx.gasprice
    function TxGasPrice() public view returns (uint){
        return tx.gasprice;
    }
}