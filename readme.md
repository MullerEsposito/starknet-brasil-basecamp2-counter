
# Starknet Counter

This is an onboarding project in Cairo Language to new Starknet smart contract developers.

## Environment

- scarb 2.6.5
- starknet-devnet 0.1.2
- starkli 0.3.4


## Environment Variables

To run this project, you will need to declare the following environment variables:

```js
export STARKNET_ACCOUNT=".c-wallets/account0_account.json"
export STARKNET_KEYSTORE=".c-wallets/account0_keystore.json"
export STARKNET_RPC="http://127.0.0.1:5050"
```


## Deployment

To deploy this project, at first run the starknet-devnet:

\> `starknet-devnet --seed 2525635640`

Now, declare the contract on the starknet-devnet to create a class in the net:

\>`starkli declare target/dev/counter_CounterContract.contract_class.json`

To finish, you can now create an instance of the class using the hash of the class declared:

\>`starkli deploy [class hash] [constructor arguments]`

\>`starkli deploy 0x01366464e49982b8fdb63f164a75690446930d7566b84baef05733029f7d0657 0x12`


## Running Tests

Making a reading call:
\>`starkli call 0x04247fba5a771ce41877feac3fa1e23e0b49511790a3b473a57a3e53207d0d1a get_contador`

Making a writing call:
\>`starkli invoke 0x04247fba5a771ce41877feac3fa1e23e0b49511790a3b473a57a3e53207d0d1a increase_contador`
In this project, you can use the password **1456** to invoke the functions.
## Screenshots

![App Screenshot](https://github.com/MullerEsposito/starknet-brasil-basecamp2-counter/blob/main/assets/image.png?raw=true)


## Authors

- [@MullerEsposito](https://www.github.com/MullerEsposito)


## Acknowledgements

 - [Preparando o Ambiente de Desenvolvimento Starknet](https://medium.com/starknet-in-brazil/preparando-ambiente-de-desenvolvimento-starknet-9e0663c1e0e5)

## 🛠 Skills
Cairo Language

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
