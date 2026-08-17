contract C {
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external view returns (address) {
        return ecrecover(hash, v, r, s);
    }
}
// ====
// EVMVersion: =@future
// ----
