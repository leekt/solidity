contract C {
    function recentRoot() external view returns (uint256 result) {
        assembly { result := recentrootrefload(0, 0) }
    }

    function trace() external view returns (uint256 result) {
        assembly { result := txtrace(0, 0) }
    }

    function diff() external view returns (uint256 result) {
        assembly { result := txdiff(0, 0, 0) }
    }

    function copy() external view {
        assembly { eventdatacopy(0, 0x100, 0, 33) }
    }
}
// ====
// EVMVersion: =@future
// optimize: false
// optimize-yul: false
// ----
// creation:
//   codeDepositCost: 48200
//   executionCost: 97
//   totalCost: 48297
// external:
//   copy(): 183
//   diff(): infinite
//   recentRoot(): 314
//   trace(): infinite
