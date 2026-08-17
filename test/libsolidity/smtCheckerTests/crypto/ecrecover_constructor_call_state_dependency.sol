contract C {
    constructor(
        address target,
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) {
        address beforeCall = ecrecover(hash, v, r, s);
        (bool success,) = target.call("");
        require(success);
        address afterCall = ecrecover(hash, v, r, s);
        assert(beforeCall == afterCall);
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: chc
// SMTIgnoreCex: yes
// ----
// Warning 6328: (316-347): CHC: Assertion violation happens here.
