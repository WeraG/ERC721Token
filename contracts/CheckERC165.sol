pragma solidity ^0.4.22;

import "./standard/ERC165.sol";

contract CheckERC165 is ERC165 {
	mapping (bytes4 => bool) internal supportedInterfaces;

	constructor() public {
		supportedInterfaces[this.supportsInterface.selector] = true;
	}

	function supportsInterface(bytes4 interfaceID) external view returns (bool) {
		return supportedInterfaces[interfaceID];
	}
}