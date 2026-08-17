contract C {
    uint256 value;

    function checkBranch(
        bool mutate,
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        address beforeBranch = ecrecover(hash, v, r, s);
        if (mutate)
            value = 1;
        address afterBranch = ecrecover(hash, v, r, s);
        assert(mutate || beforeBranch == afterBranch);
        assert(!mutate || beforeBranch == afterBranch);
    }
}
// ====
// EVMVersion: =@future
// SMTEngine: bmc
// SMTIgnoreCex: yes
// ----
// Warning 3993: The BMC engine of the SMTChecker is deprecated and will be removed in a future release. Please use the CHC engine instead.
// Warning 4661: (384-430): BMC: Assertion violation happens here.
// Info 6002: BMC: 1 verification condition(s) proved safe! Enable the model checker option "show proved safe" to see all of them.
