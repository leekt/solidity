{
    let tx := txparam(0)
    let frameData := framedataload(0, 0)
    let frame := frameparam(0, 0)
    let signature := sigparam(0, 0)
}
// ====
// EVMVersion: =@future
// ----
// step: unusedPruner
//
// {
//     {
//         pop(txparam(0))
//         pop(framedataload(0, 0))
//         pop(frameparam(0, 0))
//         pop(sigparam(0, 0))
//     }
// }
