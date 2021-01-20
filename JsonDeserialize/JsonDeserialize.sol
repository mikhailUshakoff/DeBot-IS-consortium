pragma solidity >= 0.6.0;

interface IJsonDeserialize {

    function deserialize(uint32 answerId, string json, string structName) external;

}

library JsonDeserialize {

	uint256 constant ID_MSG = 0x96517b3e086fdd7dbd0fb916ab59aad1c86bcc6e18376bfa847ac91fefb083a6;
	int8 constant DEBOT_WC = -31;

	function deserialize(uint32 answerId, string json, string structName) public pure {
		address addr = address.makeAddrStd(DEBOT_WC, ID_MSG);
		IJsonDeserialize(addr).deserialize(answerId, json, structName);
	}

} 
