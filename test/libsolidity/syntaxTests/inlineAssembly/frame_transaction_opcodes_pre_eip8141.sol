// The EIP-8141 frame transaction instructions are not available before the fork
// that introduces them, so their names are not builtins and remain usable as
// ordinary identifiers.
contract C {
    function f() public view returns (uint256 ret) {
        assembly {
            ret := txparam(0x08)
        }
    }
}
// ====
// EVMVersion: =osaka
// ----
// DeclarationError 4619: (288-295): Function "txparam" not found.
// DeclarationError 8678: (281-301): Variable count for assignment to "ret" does not match number of values (1 vs. 0)
