pragma solidity >=0.4.2;
contract test{

    struct crop {
        string name;
        uint type;
        uint hash;
    }

    Crop[] public crops;

    function _createCrop(string memory   _name, uint _type, uint _hash) private {
        crops.push(Crop(_name,_type,_hash));
    }

    function _generateRandomHash(string memory  _str, uint _uint) private pure returns (uint) {
          uint rand = uint(keccak256(abi.encodePacked(_str,_uint)));
          return rand;
    }

    function createCropPublic(string memory  _name, uint type) public {
        uint randHash = _generateRandomHash(_name,_type);
        _createCrop(_name,_type,randHash);
    }
    }
}
