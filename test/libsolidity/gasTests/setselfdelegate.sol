contract C {
    function run() external returns (uint256 success) {
        // The opcode's estimate is the EIP-7851 fixed cost of 9500 gas.
        assembly { success := setselfdelegate(1) }
    }
}
// ====
// EVMVersion: =@future
// optimize: false
// optimize-yul: false
// ----
// creation:
//   codeDepositCost: 24400
//   executionCost: 73
//   totalCost: 24473
// external:
//   run(): 9810
