pragma solidity >= 0.6.0;
pragma AbiHeader expire;
pragma AbiHeader time;
pragma AbiHeader pubkey;
import JsonDeserialize from "JsonDeserialize.sol";


contract ExampleContract {
    struct Info{
      string name;
      string city;
    }

    function test() public {
        string json = "{\"name\":\"Joe\",\"city\":\"York\"}"
	JsonDeserialize.deserialize(tvm.functionId(setResult), json, "Info");
    }

    function setResult(Info res) public pure {
        require(res.name=="Joe",100);
        require(status.city == "York",101);
    }

} 
