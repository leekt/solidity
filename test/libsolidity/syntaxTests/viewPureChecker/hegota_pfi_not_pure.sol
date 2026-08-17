contract C {
    function recentRoot() public pure returns (uint256 result) {
        assembly { result := recentrootrefload(0, 0) }
    }

    function trace() public pure returns (uint256 result) {
        assembly { result := txtrace(0, 0) }
    }

    function diff() public pure returns (uint256 result) {
        assembly { result := txdiff(0, 0, 0) }
    }

    function copy() public pure {
        assembly { eventdatacopy(0, 0, 0, 0) }
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 2527: (107-130): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (229-242): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (340-355): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (418-443): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
