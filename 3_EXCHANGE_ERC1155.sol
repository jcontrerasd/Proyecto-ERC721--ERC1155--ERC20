// SPDX-License-Identifier: MIT


// EXCHANGE ERC1155
// Este contrato corresponde a un marketplace que permite administrar compra y venta de ERC721 pagando con Token ERC20
// Consideraciones importantes son la aprobacaciones tanto del vendedor para que efectue la transacción, como el comprador para que
// el Exchange pueda retirar la cantidad de token acordada  y por tanto recibir el ERC721.

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract EXCHANGE_ERC1155  is ERC1155 {
    using Counters for Counters.Counter;
    Counters.Counter private _listingIds;

    struct Listing {
        uint256 listingId;
        address seller;
        address erc721Contract;
        uint256 tokenId;
        uint256 price;
        bool isActive;
    }

    // Este mapeo registra si un token ERC-721 ya está en venta.
    mapping(address => mapping(uint256 => bool)) public isTokenListed;
    mapping(uint256 => Listing) public listings;

    IERC20 private _erc20Token;

    event NFTListed(uint256 listingId, address indexed seller, address indexed erc721Contract, uint256 tokenId, uint256 price);
    event NFTSold(uint256 listingId, address indexed seller, address indexed buyer, address indexed erc721Contract, uint256 tokenId, uint256 price);

    constructor(string memory uri, address erc20Address) ERC1155(uri) {
        _erc20Token = IERC20(erc20Address);
    }


    function listNFT(address erc721Contract, uint256 tokenId, uint256 price) external {
        require(price > 0, "El precio debe ser mayor que cero");
        require(IERC721(erc721Contract).ownerOf(tokenId) == msg.sender, "No eres el propietario del token ERC721");
        require(!isTokenListed[erc721Contract][tokenId], "Este token ya esta en venta");

        
        _listingIds.increment();
        uint256 listingId = _listingIds.current();

        listings[listingId] = Listing({
            listingId: listingId,
            seller: msg.sender,
            erc721Contract: erc721Contract,
            tokenId: tokenId,
            price: price,
            isActive: true
        });

        // Marcar el token como "en venta".
        isTokenListed[erc721Contract][tokenId] = true;

        emit NFTListed(listingId, msg.sender, erc721Contract, tokenId, price);
    }

    function buyNFT(uint256 listingId) external {
        Listing storage listing = listings[listingId];
        require(listing.isActive, "La oferta ya no esta disponible");
        require(msg.sender != listing.seller, "No puedes comprar tu propio NFT");

        uint256 price = listing.price;
        require(_erc20Token.allowance(msg.sender, address(this)) >= price, "No has aprobado suficientes tokens ERC20");

        _erc20Token.transferFrom(msg.sender, listing.seller, price);
        IERC721(listing.erc721Contract).safeTransferFrom(listing.seller, msg.sender, listing.tokenId);

        listing.isActive = false;

        emit NFTSold(listingId, listing.seller, msg.sender, listing.erc721Contract, listing.tokenId, price);
    }
}