{
    // Signature bytes are not modeled by the interpreter, so the copy
    // zero-fills the destination, like framedatacopy.
    mstore(0, not(0))
    sigdatacopy(1, 0, 0, 32)
}
// ====
// EVMVersion: =@future
// ----
// Trace:
// Memory dump:
// Storage dump:
// Transient storage dump:
