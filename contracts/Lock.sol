// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract NftMarket is ERC721URIStorage {
     using Counters for Counters.Counter;
    Counters.Counter private _tokenIDs;

    
    constructor() ERC721("Audou 's NFT" , "gg"){}
    event lastEvent(uint256 testID);
    function createNft(string calldata tokenURI) public returns(uint256){
        _tokenIDs.increment();
        uint256 currenID = _tokenIDs.current();
        _safeMint(msg.sender,currenID);
        _setTokenURI(currenID, tokenURI);
        await lastEvent(123);
        return currenID;
    }




}