{
    // No account code is modeled, so the deterministic zero result is offset to make it visible.
    sstore(0, add(setselfdelegate(1), 1))
}
// ====
// EVMVersion: =@future
// ----
// Trace:
//   SETSELFDELEGATE(1)
// Memory dump:
// Storage dump:
//   0000000000000000000000000000000000000000000000000000000000000000: 0000000000000000000000000000000000000000000000000000000000000001
// Transient storage dump:
