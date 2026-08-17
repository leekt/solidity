contract C {
    uint256 value;

    function checkAfterStateWrite(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external {
        address beforeWrite = ecrecover(hash, v, r, s);
        value = 1;
        address afterWrite = ecrecover(hash, v, r, s);
        assert(beforeWrite == afterWrite);
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: chc
// SMTIgnoreCex: yes
// ----
// Warning 6328: (261-294): CHC: Assertion violation happens here.
