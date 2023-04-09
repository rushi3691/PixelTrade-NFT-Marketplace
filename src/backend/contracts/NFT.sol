// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint public tokenCount; // acts as nft's id
    constructor() ERC721("DApp NFT", "DAPP"){}
    function mint(string memory _tokenURI) external returns(uint) {
        tokenCount++; // incremented total number of nfts on platform
        _safeMint(msg.sender, tokenCount); // checks if the id is not already taken, if not then attaches it to a address
        _setTokenURI(tokenCount, _tokenURI);
        return(tokenCount);
    }
}