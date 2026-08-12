contract C {
    // APPROVE updates the transaction-scoped approval context, so it is a state
    // change and not allowed in a view function.
    function f() public view {
        assembly { approve(0, 0, 3) }
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 8961: (194-210): Function cannot be declared as view because this expression (potentially) modifies the state.
