// SPDX-Liceanse-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counter.sol";
//import "@openzeppelin/contracts/access/Ownable.sol";

contract Deploy is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Testing", "NFT") {}

    function mint(address receiver, string memory tokenURI) public returns (uint256){
        uint256 newTokenID = _tokenIds.current();
        _mint(receiver, newTokenID);
        _setTokenURI(newTokenID, tokenURI);
        _tokenIds.increment();
        return newTokenID;
    }
}
