contract C {
    function f() external view {
        assembly { pop(setdelegate(0, 1)) }
    }

    function g() external pure {
        assembly { pop(setdelegate(2, 3)) }
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 8961: (69-86): Function cannot be declared as view because this expression (potentially) modifies the state.
// TypeError 8961: (153-170): Function cannot be declared as pure because this expression (potentially) modifies the state.
