pragma solidity ^0.4.22;

import "./standard/ERC721TokenReceiver";

contract ValidReceiver is ERC721TokenReceiver {
	function onERC721Received(address _operator, address _from, uint256 _tokenId, bytes _data)
	external returns(bytes4) {
		return bytes4(keccak256("onERC721Received(address, address, uint256, bytes)"));
	}
}

