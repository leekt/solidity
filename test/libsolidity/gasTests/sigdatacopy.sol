contract C {
    function run() external view {
        copyZero();
        copyWord();
        copyWordAndByte();
    }

    // Intrinsic SIGDATACOPY costs are 3, 3 + 3 + 3, and 3 + 6 + 6:
    // fixed cost, copy-word cost, then memory expansion from zero.
    function copyZero() internal view {
        assembly { sigdatacopy(0, 0, 0, 1) }
    }

    function copyWord() internal view {
        assembly { sigdatacopy(0, 0, 32, 1) }
    }

    function copyWordAndByte() internal view {
        assembly { sigdatacopy(0, 0, 33, 1) }
    }
}
// ====
// EVMVersion: =@future
// optimize: false
// optimize-yul: false
// ----
// creation:
//   codeDepositCost: 19200
//   executionCost: 67
//   totalCost: 19267
// external:
//   run(): 240
// internal:
//   copyWord(): 28
//   copyWordAndByte(): 34
//   copyZero(): 21
