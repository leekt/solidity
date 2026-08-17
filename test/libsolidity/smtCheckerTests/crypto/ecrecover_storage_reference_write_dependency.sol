contract C {
    struct S {
        uint256 value;
    }

    S stored;

    function checkAfterReferenceWrite(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external {
        address beforeWrite = ecrecover(hash, v, r, s);
        S storage ref = stored;
        ref.value = 1;
        address afterWrite = ecrecover(hash, v, r, s);
        assert(beforeWrite == afterWrite);
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: chc
// SMTIgnoreCex: yes
// ----
// Warning 6328: (341-374): CHC: Assertion violation happens here.
