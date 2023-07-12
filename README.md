<h1 align="center">  Supply-Chain-Dapp
</h1>

## Description
Managing a supply chain is challenging and requires extensive administrative infrastructure. Smart contracts on the blockchain have the potential to streamline supply chain management by minimizing administrative tasks and reducing paperwork.
By implementing a supply chain dApp, which leverages blockchain technology, the process of transferring products from manufacturers to customers through online e-commerce platforms becomes more transparent, secure, and efficient. This not only reduces paperwork but also enhances transparency and establishes a reliable Root of Trust within the supply chain.

## Architecture
The smart contract is being written with Solidity which is then compiled, migrated and deployed using Truffle.js on the local blockchain network created using Ganache-cli.The frontend uses Web3.js to communicate with the smart contract and local blockchain network and is written using React.js framework for better component and state lifecycle management.

## Flow
<p align="centre">  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/flow.png" width="300">  
</p>

## Screenshots
<p align="centre">
	Home Page  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/Homepage.png">  
</p>
<br />

<p align="centre">
	The admin adds accounts to their respective roles  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/AddingRoles.png">  
</p>
<br />

<p align="centre">  
	Manufacturer adds different manufactured products' data in the blockchain
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/AddingProduct.png">  
</p>
<br />

<p align="centre">  
	List of all the manufactured products
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/ManufacturedProducts.png">  
</p>
<br />

<p align="centre">  
    Third party(e.g. E-commerce websites) can view and buy the products from different manufacturers
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/ThirdPartyViewProducts.png">  
</p>
<br />

<p align="centre">
	After a third party buys a product, manufacturer ships the product to third party  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/Manufacturer_ShipProducts.png">  
</p>
<br />

<p align="centre">  
	Third party recieves the shipped product
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/ThirdParty_receive.png">  
</p>
<br />

<p align="centre">  
    Customers can view and buy products from different third parties  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/Customer_Purchase.png">
</p>
<br />

<p align="centre">  
	After a customer buys a product, third party ships the product to local delivery hub
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/ThirdParty_Ship.png">  
</p>
<br />

<p align="centre">  
	Delivery hub receives the product from third party
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/delivery_receive.png">  
</p>
<br />

<p align="centre">
	Delivery hub ships the product to the customer who purchased it  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/delivery_ship.png">  
</p>
<br />

<p align="centre">
	Customer receives the product from delivery hub  
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/customer_receive.png">  
</p>
<br />

<p align="centre"> 
	Customer views all the purchased products till date 
    <img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/customer_Allproducts.png">  
</p>



## Working
<img src="https://github.com/bsandipan99/supplyChain_blockchain/blob/main/images/Working.png" />

<p>
  The lifecycle of a product starts after it is manufactured and the product and manufacturer details are entered in the blockchain. The current product data is stored as product history with the current owner being the manufacturer.
</p>
<p>
  Now this product shall be available to the Third Party for purchase. On being purchased by a Third Party seller, the owner is set to Third Party and the present data gets pushed to the blockchain. Simultaneously, the product is shipped by the manufacturer and is received by the Third Party and the details of the Third Party seller are entered. Each of these checkpoint's data is stored in product history with the state being updated at each step. 
</p>
<p>
  The online purchase of the product takes place from the Third Party. When the customer orders the product, it is shipped by the Third Party and received by the delivery hub. Here the customer address is stored, owner is set to Delivery Hub, details of the Delivery Hub are fed and the current data state gets pushed to the blockchain. Finally the product is shipped by the Delivery Hub  and received by the customer and the current and final state gets pushed to the blockchain
</p>
<p>
  All of these steps are carried out only after complete verification of product history while entering a checkpoint. (eg:- Customer accepts and confirms the product by clicking the receive button from his account only after it verifies the product). 
</p>

## Installation and Setup
Prerequisites : `npm, git`

Clone the repository 
```Bash
git clone https://github.com/bsandipan99/supplyChain_blockchain.git && cd supplyChain_blockchain
```
Install dependencies
```Bash
npm i
```
Install ganache-cli
```Bash
npm i -g ganache-cli
```
Configure ganache-cli for 10 accounts and extend gasLimit to 6721975000 and beyond, so as to have enough gas for migrating the smart contracts.
```Bash
ganache-cli --accounts 10 --gasLimit 6721975000
```
Migrate the contracts
```Bash
truffle migrate --network=develop --reset
```
Open a second terminal and enter the client folder
```Bash
cd client
```
Install all packages in the package.json file
```Bash
npm i
```
Setup an .env file using the `nano .env` command and enter the google maps api key and set the react rpc port to 8545 since the ganache-cli runs on the same port by default.
The final .env file must look like this
```Bash
REACT_APP_GOOGLE_MAP_API_KEY=*************************
REACT_APP_RPC=http://127.0.0.1:8545/

```
Run the app
```Bash
npm start
```
The app gets hosted by default at port 3000.

## License
This project uses an [MIT](https://opensource.org/licenses/MIT) license.
