contract C {
    // sigdatacopy reads transaction-scoped context (the raw bytes of an
    // ARBITRARY signature entry), so it needs view, like the other frame
    // transaction introspection builtins.
    function f() public pure {
        assembly { sigdatacopy(0, 0, 65, 0) }
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 2527: (253-277): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
