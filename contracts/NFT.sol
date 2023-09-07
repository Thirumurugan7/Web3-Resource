// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract Nft is ERC721URIStorage, Ownable{
constructor() ERC721("Thirumurugan", "TS"){}

function mint(address _to, uint _tokenId, string memory _uri) payable external onlyOwner{
    require(msg.value == 0.01 ether, "insufficient funds");
    _mint(_to, _tokenId);
    _setTokenURI(_tokenId, _uri);

}


}