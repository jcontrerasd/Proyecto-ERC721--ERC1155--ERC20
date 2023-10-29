# Proyecto-ERC721--ERC1155--ERC20
Creación de Token ERC20(STT), Creación de NFT ERC721 y Exchange ERC1155
El despliegue de los 3 contratos permite la operación en conjunto, cada uno tomando un rol. 

1_TOKEN_ERC721.sol : Permite crear un NFT (MUTS), el cual será transando en por 3_EXCHANGE_ERC1155.sol, previa aprobación

2_TOKEN_ERC20.sol : Permite crear un Token que se utilizará para realizar el pago del NFT, pervia apobración de 3_EXCHANGE_ERC1155.sol.

3_EXCHANGE_ERC1155.sol : Contrato encargado de realizar la comercializacón del Token MUTS a un precio STT acordado, transfiereonc los STT al vendedor y el MUTS al comprador.

