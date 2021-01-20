# JsonDeserialize Interface

**Status**: Proposed

| Name      		| ID                                                                |
| :--------------------	| :---------------------------------------------------------------- |
| JsonDeserialize       | 96517b3e086fdd7dbd0fb916ab59aad1c86bcc6e18376bfa847ac91fefb083a6  |

## Description

Allows to deserialize json into the structure.

## Functions

`deserialize` - deserialize json into the structure.

arguments: 

    answerId: uint32 - function id of result callback

    json: string - json string
    
    structName: string - the name of the structure into which json will be deserialized

returns: 

     result: <structName> - struct of type structName

>Note: return type is set by structName input parameter. And input parameter of answerId function should be structType.
		
## Declaration in Solidity

```jsx


interface IJsonDeserialize {

    function deserialize(uint32 answerId, string json, string structName) external;

}
```

## Declaration in C++

```cpp
namespace tvm { namespace schema {

__interface IJsonDeserialize {

	[[internal, answer_id]]
	void deserialize(string json, string structName);
	
};

}}
```

## Code Example

### Solidity

Example.sol

### C++

TODO: add later.
