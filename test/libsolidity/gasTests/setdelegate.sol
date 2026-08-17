contract C {
    function run() external returns (uint256 location) {
        assembly { location := setdelegate(0, 0) }
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
//   run(): 25311
