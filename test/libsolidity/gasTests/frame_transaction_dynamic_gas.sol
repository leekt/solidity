contract C {
    function copyZero() external view {
        assembly { framedatacopy(0, 0, 0, 1) }
    }

    function copyWord() external view {
        assembly { framedatacopy(0, 0, 32, 1) }
    }

    function copyWordAndByte() external view {
        assembly { framedatacopy(0, 0, 33, 1) }
    }

    function approveZero() external {
        assembly { approvetx(0, 0, 1) }
    }

    function approveWord() external {
        assembly { approvetx(0, 32, 1) }
    }

    function approveWordAndByte() external {
        assembly { approvetx(0, 33, 1) }
    }
}
// ====
// EVMVersion: =@future
// optimize: false
// optimize-yul: false
// ----
// creation:
//   codeDepositCost: 37800
//   executionCost: 85
//   totalCost: 37885
// external:
//   approveWord(): 142
//   approveWordAndByte(): 186
//   approveZero(): 163
//   copyWord(): 225
//   copyWordAndByte(): 250
//   copyZero(): 133
