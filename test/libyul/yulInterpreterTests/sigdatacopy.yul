{
    // Signature bytes are not modeled by the interpreter, so the copy
    // zero-fills the destination, like framedatacopy.
    mstore(0, not(0))
    sigdatacopy(0, 0, 32, 1)
}
// ====
// EVMVersion: =@future
// ----
// Trace:
//   SIGDATACOPY(0, 0, 32, 1)
// Memory dump:
// Storage dump:
// Transient storage dump:
