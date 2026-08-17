{
    let root := recentrootrefload(0, 0)
    let trace := txtrace(0, 0)
    let diff := txdiff(0, 0, 0)
}
// ====
// EVMVersion: =@future
// ----
// step: unusedPruner
//
// {
//     {
//         pop(recentrootrefload(0, 0))
//         pop(txtrace(0, 0))
//         pop(txdiff(0, 0, 0))
//     }
// }
