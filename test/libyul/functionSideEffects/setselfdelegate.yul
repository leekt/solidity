{
    function f() { pop(setselfdelegate(1)) }
}
// ====
// EVMVersion: =@future
// ----
// : movable, movable apart from effects, can be removed, can be removed if no msize
// f: writes other state
