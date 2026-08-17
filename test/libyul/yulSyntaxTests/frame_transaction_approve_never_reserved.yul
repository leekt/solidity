{
    // EIP-8141 calls opcode 0xaa APPROVE, but solc spells the builtin
    // "approvetx" so that "approve" -- the ERC-20 method name -- stays usable as
    // an ordinary identifier even on VMs that have the opcode.
    function approve() {}
}
// ====
// EVMVersion: =@future
// ----
