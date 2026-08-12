contract C {
    function f() public pure {
        assembly { pop(txparam(0x08)) }
    }
    function g() public pure {
        assembly { pop(sigparam(0, 0x00)) }
    }
    function h() public pure {
        assembly { pop(frameparam(0, 0x00)) }
    }
}
// ====
// EVMVersion: =@future
// ----
// TypeError 2527: (67-80): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (144-161): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
// TypeError 2527: (225-244): Function declared as pure, but this expression (potentially) reads from the environment or state and thus requires "view".
