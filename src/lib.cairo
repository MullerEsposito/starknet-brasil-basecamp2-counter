#[starknet::interface]
trait ICounterContract<TContractState> {
    fn get_contador(self: @TContractState) -> u32;
    fn increase_contador(ref self: TContractState);
}

#[starknet::contract]
mod CounterContract {
    #[storage]
    struct Storage {
        contador: u32,
    }

    #[constructor]
    fn constructor(
        ref self: ContractState,
        contador_inicial: u32) {
        self.contador.write(contador_inicial);
    }
    
    #[abi(embed_v0)]
    impl CounterContract of super::ICounterContract<ContractState>{
        fn get_contador(self: @ContractState) -> u32 {
            self.contador.read()
        }
        fn increase_contador(ref self: ContractState) {
            let _current_counter = self.contador.read();
            self.contador.write(_current_counter + 1);
        }
    }
}