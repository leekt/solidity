contract C {
    function f() external view {
        assembly { pop(setselfdelegate(1)) }
    }

    function g() external pure {
        assembly { pop(setselfdelegate(2)) }
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 8961: (69-87): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (154-172): Function cannot be declared as pure because this expression (potentially) modifies the state.
