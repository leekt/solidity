contract C {
    function checkAfterCodeWrite(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external {
        address beforeWrite = ecrecover(hash, v, r, s);
        assembly { pop(setselfdelegate(1)) }
        address afterWrite = ecrecover(hash, v, r, s);
        assert(beforeWrite == afterWrite);
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: chc
// SMTIgnoreCex: yes
// ----
// Warning 7737: (166-202): Inline assembly may cause SMTChecker to produce spurious warnings (false positives).
// Warning 6328: (266-299): CHC: Assertion violation happens here.
