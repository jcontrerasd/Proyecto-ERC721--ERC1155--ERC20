# Proyecto-ERC721--ERC1155--ERC20
# Creación de Contratos NFT ERC72 (MUTS), Token ERC20(STT), y Exchange ERC1155

El despliegue de los 3 contratos permite la operación en conjunto, cada uno tomando un rol. 

**1_TOKEN_ERC721.sol :** Permite crear un NFT (MUTS), el cual será transando en por 3_EXCHANGE_ERC1155.sol, previa aprobación

**2_TOKEN_ERC20.sol :** Permite crear un Token que se utilizará para realizar el pago del NFT, pervia apobración de 3_EXCHANGE_ERC1155.sol.

**3_EXCHANGE_ERC1155.sol :** Contrato encargado de realizar la comercializacón del Token MUTS a un precio STT acordado, transfiereonc los STT al vendedor y el MUTS al comprador.

* **¿Qué caso de uso pretende resolver tu (colección) NFT?**

  ** Memorias Urbanas Token (MUTS) es una colección de NFTs que retrata la historia de ciudades a lo largo del tiempo.**
  
    Estos NFTs son creaciones únicas que representan momentos específicos de la evolución urbana. Creados por artistas, los MUTs fusionan arte y patrimonio cultural. 
    Son miradas al pasado que muestran cómo las ciudades han cambiado y celebran su diversidad. 
    Los MUTS son  más que  tokens digitales; son **obras de arte históricamente valiosas que permiten a los coleccionistas explorar y apreciar la historia urbana**.
  
  ### Casos de Uso ###
  
  * **Colección de Arte Urbano:** Un coleccionista apasionado por la historia de las ciudades adquiere varios Memorias Urbanas Tokens (MUT) que representan momentos icónicos   de diferentes urbes a lo largo del tiempo. Estos NFTs incluyen imágenes de antiguos edificios, calles, y cambios arquitectónicos a lo largo de los años. A medida que         expande su colección, el coleccionista se sumerge en la narrativa visual de la evolución urbana, apreciando la fusión de arte y **patrimonio cultural**.
  
  * **Exposición Digital**: Un museo de arte urbano organiza una exposición digital titulada "Memorias Urbanas: Ciudades en Transformación". Utilizan MUT para mostrar cómo las ciudades han cambiado con el tiempo a través de obras de artistas locales e internacionales. Los visitantes pueden explorar estas representaciones visuales de la historia urbana a través de NFTs en una plataforma en línea. La exposición ofrece una experiencia inmersiva que resalta la importancia de preservar y apreciar el patrimonio urbano. Los MUT se convierten en una forma única de conectar a las personas


* **¿Qué valor añadido aporta esta (colección) NFT a las existentes?**

  La colección de NFT Memorias Urbanas Token (MUTS) se destaca al fusionar el arte con el patrimonio cultural, representando momentos específicos y únicos en la evolución      de las ciudades. 
  Cada MUTS es una obra de arte históricamente valiosa, creada por artistas, lo que garantiza autenticidad y unicidad. Lo que distingue a esta colección de otras radica en     su capacidad para ofrecer una experiencia inmersiva y educativa.
  Permite a los coleccionistas explorar y apreciar la historia urbana, conectándolos emocionalmente con el pasado de las ciudades y su diversidad artística.

  ### Esto añade un valor significativo, haciendo que MUTS sea más que una simple colección de tokens digitales; se convierte en una ventana al pasado y al patrimonio cultural urbano. con el pasado de las ciudades y su diversidad artística. ###


  
* **¿Cómo crees que podría mejorarse técnicamente?**
    * Asegurar interoperatibilidad con distintos NFTS, aprovechando las ventanjas de ERC1155 
    * Construir una aplicación Web3 que permita tener una mejor experiencia de usuario 
    * Conectar con opensea, manteniendo independencia a fin de evolucionar según las necesidades propias del proyecto 
    * Definir y Transparentar el modelo Tokenomics para sustentar todo el modelo 

A continuación se reflejan los pasos que se deben seguir para un escenario de simulación :
