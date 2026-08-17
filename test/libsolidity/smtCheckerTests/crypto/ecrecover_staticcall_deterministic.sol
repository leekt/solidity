contract C {
    function checkAfterStaticCall(
        address target,
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external view {
        address beforeCall = ecrecover(hash, v, r, s);
        assembly { pop(staticcall(gas(), target, 0, 0, 0, 0)) }
        address afterCall = ecrecover(hash, v, r, s);
        assert(beforeCall == afterCall);
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: chc
// SMTIgnoreCex: yes
// ----
// Warning 7737: (233-288): Inline assembly may cause SMTChecker to produce spurious warnings (false positives).
// Info 1391: CHC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
