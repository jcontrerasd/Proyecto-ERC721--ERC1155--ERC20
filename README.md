# Proyecto-ERC721--ERC1155--ERC20
# Creación de Contratos NFT ERC72 (MUTS), Token ERC20(STT), y Exchange ERC1155

El despliegue de los 3 contratos permite la operación en conjunto, cada uno tomando un rol. 

**1_TOKEN_ERC721.sol :** Permite crear un NFT (MUTS), el cual será transando en por 3_EXCHANGE_ERC1155.sol, previa aprobación

**2_TOKEN_ERC20.sol :** Permite crear un Token que se utilizará para realizar el pago del NFT, pervia apobración de 3_EXCHANGE_ERC1155.sol.

**3_EXCHANGE_ERC1155.sol :** Contrato encargado de realizar la comercializacón del Token MUTS a un precio STT acordado, transfiereonc los STT al vendedor y el MUTS al comprador.

### * **¿Qué caso de uso pretende resolver tu (colección) NFT?**

  ** Memorias Urbanas Token (MUTS) es una colección de NFTs que retrata la historia de ciudades a lo largo del tiempo.**
  
    Estos NFTs son creaciones únicas que representan momentos específicos de la evolución urbana. Creados por artistas, los MUTs fusionan arte y patrimonio cultural. 
    Son miradas al pasado que muestran cómo las ciudades han cambiado y celebran su diversidad. 
    Los MUTS son  más que  tokens digitales; son **obras de arte históricamente valiosas que permiten a los coleccionistas explorar y apreciar la historia urbana**.
  
  ### Casos de Uso ###
  
  * **Colección de Arte Urbano:** Un coleccionista apasionado por la historia de las ciudades adquiere varios Memorias Urbanas Tokens (MUT) que representan momentos icónicos   de diferentes urbes a lo largo del tiempo. Estos NFTs incluyen imágenes de antiguos edificios, calles, y cambios arquitectónicos a lo largo de los años. A medida que         expande su colección, el coleccionista se sumerge en la narrativa visual de la evolución urbana, apreciando la fusión de arte y **patrimonio cultural**.
  
  * **Exposición Digital**: Un museo de arte urbano organiza una exposición digital titulada "Memorias Urbanas: Ciudades en Transformación". Utilizan MUT para mostrar cómo las ciudades han cambiado con el tiempo a través de obras de artistas locales e internacionales. Los visitantes pueden explorar estas representaciones visuales de la historia urbana a través de NFTs en una plataforma en línea. La exposición ofrece una experiencia inmersiva que resalta la importancia de preservar y apreciar el patrimonio urbano. Los MUT se convierten en una forma única de conectar a las personas


### * **¿Qué valor añadido aporta esta (colección) NFT a las existentes?**

  La colección de NFT Memorias Urbanas Token (MUTS) se destaca al fusionar el arte con el patrimonio cultural, representando momentos específicos y únicos en la evolución      de las ciudades. 
  Cada MUTS es una obra de arte históricamente valiosa, creada por artistas, lo que garantiza autenticidad y unicidad. Lo que distingue a esta colección de otras radica en     su capacidad para ofrecer una experiencia inmersiva y educativa.
  Permite a los coleccionistas explorar y apreciar la historia urbana, conectándolos emocionalmente con el pasado de las ciudades y su diversidad artística.

  ### Esto añade un valor significativo, haciendo que MUTS sea más que una simple colección de tokens digitales; se convierte en una ventana al pasado y al patrimonio cultural urbano. con el pasado de las ciudades y su diversidad artística. ###


  
### * **¿Cómo crees que podría mejorarse técnicamente?**

     * Si bien parece natural unificar algunos contratos, es un ambito técnico que se se debería revisar a fin de definir claramente al arquitectura de la solución, en              terminos de una solución desacoplada con sus pros y contras.
     * Como mejora o complemento aportaría valor el tratar de dar mayor visiblidad a los NFT a fin de que la comunidad pueda disfrutar de la colección mediante una                  plataforma que los exponga y permita contar la "historia" enlazandola con acontencimientos historicos. 
     * Asegurar interoperatibilidad con distintos NFTS, aprovechando las ventanjas de ERC1155 
     * Construir una aplicación Web3 que permita tener una mejor experiencia de usuario 
     * Conectar con opensea, manteniendo independencia a fin de evolucionar según las necesidades propias del proyecto 
     * Definir y Transparentar el modelo Tokenomics para sustentar todo el modelo 

A continuación se reflejan los pasos que se deben seguir para un escenario de simulación, además de las Address de cada contrato para tener la trazabilidad.

### PASO 1 : CREAR TOKEN MUTS (1_TOKEN_ERC721.sol : 0x7Cd3119EF33C45BB72e11B2fD314f8099A336a89)

* Transaction Hash: 0xf85ef24281710595168350bfeb57b572d9261ec02c204d6084c9ccb100ebfc7a

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/c3e55c0a-ab62-4e2c-856d-5cf901b0d8b0">

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/a7a86ad3-8091-4142-8ac8-282279ee1a08">

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/a746b4c0-38af-4443-8f36-f644a4eccf92">


## Aprobación a Exchange
* Transaction Hash: 0x288567cf2afec2dda9e3fadfe7e7a3c7f5caa9601226e99b7865453042fd4fd5 

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/688366a7-3b6f-444d-822b-831740ffcc5c">

<img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/22890c8c-b8c7-47cb-939f-0bbb8ebed5d8">




### PASO 2 : CREAR FONDOS DE STT PARA COMPRAR TOKEN MUTS (2_TOKEN_ERC20.sol : 0x429edd3882335de0c8193a866cdfca821d2b2df3)

* Transaction Hash:0x5ed0122a06f3b48703c7fe1ca0004a526330263abd0a2a90bddc2b4c83e4d607 

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/818cbf7a-91b3-468f-93ee-c8d0b9ae0f6d">

<img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/4eaceb6a-676c-4ad7-b656-b1129f84c688">


### PASO 3 : PONER EN VENTA (3_EXCHANGE_ERC1155.sol : 0xAa306058A50b82EE5D2e3A7b6b426247F519be59)

* Transaction Hash:0x5aa3bf657633a309c3d36ef58eaf77b8a85023529b69633586abd2875a22a071 

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/0db29054-aa87-408a-a4e5-7373ee58e62a">


### PASO 4: DAR APROBACIÓN DE ERC20 PARA QUE EXCHANGE PUEDA REALIZAR LA COMPRA Y POSTERIOR TRANSFERENCIA DE ERC721 (2_TOKEN_ERC20.sol :  0x429edd3882335de0c8193a866cdfca821d2b2df3)

* Transaction Hash: 0xf5db319f19f7feddc907d934d2cb38a041eae7d33d9b50e70d14685c39096eda

<img width="800" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/26c98c98-5e81-4432-9e69-1fc861a40bee">

<img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/b6542020-8048-4149-b22e-73d0a3263e11">
<img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/6588dec7-706b-4db5-afb2-897b76bfdd1c">

### PASO 5: COMPRAR (3_EXCHANGE_ERC1155.sol : 0xAa306058A50b82EE5D2e3A7b6b426247F519be59)
    * Nota : Los NFT se debe importar con  la dirección del contrato más el TokenId. *
* Transaction Hash:0xbb661e99accef0ffcfe88d7c32dc65fcdeb173a64b567449d54215877a4893cf

  * PREVIA COMPRA - DATOS COMPRADOR
    
    <img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/901ae995-3372-4d6e-9c21-630058a17c1e">
    <img width="300" height="500"  alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/5b9bde7e-95dd-4d8d-b59b-890443cbf549">

  * PREVIA COMPRA - DATOS VENDEDOR

    <img width="300" height="500"  alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/9c14a468-6d30-4813-86d2-a672f813efca">
    <img width="300" height="500"  alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/47350a07-de15-4a48-be5e-eacef1409888">

  * POST COMPRA - DATOS COMPRADOR

    <img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/5769be50-55c6-4d85-9a43-dd85a95db105">
    
    <img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/ae4c6fe4-a5b0-4ff3-947c-5cf878d4c441">

   * POST COMPRA - DATOS VENDEDOR
 
     <img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/136e833c-a67e-448a-9338-45d77d4b523f">
  
     <img width="300" height="500" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/d2c800f9-aa03-4bc0-bdcd-e9ff46e48582">
  

## OPEN SEA : https://testnets.opensea.io/assets/goerli/0x7Cd3119EF33C45BB72e11B2fD314f8099A336a89/1

   <img width="1000" height="800" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/8c2d95cb-18ba-4a41-a8db-bfde00cdc173">
    
##Se utilizo NFT.storage para almacenar el NFT y crear su IPFS URL (uri)

   <img width="1228" alt="image" src="https://github.com/jcontrerasd/Proyecto-ERC721--ERC1155--ERC20/assets/27821228/40d9fb7f-93ea-4158-acdc-abe0155fd9b9">
