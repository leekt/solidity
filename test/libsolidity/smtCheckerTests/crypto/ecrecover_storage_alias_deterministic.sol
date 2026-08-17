contract C {
    struct S {
        uint256 value;
    }

    S stored;

    function bind(S storage) internal pure {}

    function checkAfterAliasBinding(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external view returns (uint256) {
        address beforeBinding = ecrecover(hash, v, r, s);
        S storage ref = stored;
        address afterBinding = ecrecover(hash, v, r, s);
        assert(beforeBinding == afterBinding);
        return ref.value;
    }

    function checkAfterParameterBinding(bytes32 hash, uint8 v, bytes32 r, bytes32 s) external view returns (uint256) {
        address beforeBinding = ecrecover(hash, v, r, s);
        bind(stored);
        address afterBinding = ecrecover(hash, v, r, s);
        assert(beforeBinding == afterBinding);
        return stored.value;
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: chc
// SMTIgnoreCex: yes
// ----
// Info 1391: CHC: 2 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
