// SPDX-License-Identifier: MIT

// Memorias Urbanas Token (MUT) es una colección de NFTs que retrata la historia de ciudades a lo largo del tiempo. 
// Estos NFTs son creaciones únicas que representan momentos específicos de la evolución urbana. 
// Creados por artistas, los MUT fusionan arte y patrimonio cultural. Son miradas al pasado que muestran cómo las ciudades 
// han cambiado y celebran su diversidad. Los MUT son más que tokens digitales; son obras de arte históricamente valiosas 
// que permiten a los coleccionistas explorar y apreciar la historia urbana.

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract TOKEN_ERC721 is ERC721, ERC721URIStorage {

    address public owner;

     constructor()  ERC721("MEMORIAS URBANAS","MUTS") 
        {
            owner = msg.sender;
        }

    modifier onlyOwner {
            require(msg.sender == owner, "Solo el Owner puede realizar esta operacion."); 
            _;
        }

   function setOwner(address newOwner) external onlyOwner { 
            owner = newOwner;
    }

     function safeMint(address to, uint256 tokenId, string memory uri)  public  onlyOwner
    {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    // The following functions are overrides required by Solidity.
    function tokenURI(uint256 tokenId)  public  view  override(ERC721, ERC721URIStorage) returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool)
    {
     return super.supportsInterface(interfaceId);
    }
}