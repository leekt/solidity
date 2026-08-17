{
    let root := recentrootrefload(2, 1)
    let trace := txtrace(3, 4)
    let diff := txdiff(5, 6, 7)
    mstore(0, not(0))
    eventdatacopy(8, 0, 0, 32)
}
// ====
// EVMVersion: =@future
// ----
// Trace:
//   RECENTROOTREFLOAD(2, 1)
//   TXTRACE(3, 4)
//   TXDIFF(5, 6, 7)
//   EVENTDATACOPY(8, 0, 0, 32)
// Memory dump:
// Storage dump:
// Transient storage dump:
