contract C {
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external pure returns (address) {
        return ecrecover(hash, v, r, s);
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 2527: (128-152): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
