contract C {
    function inspect() external view returns (uint256 result) {
        assembly { result := txtrace(0, 0) }
    }
}
// ====
// EVMVersion: =osaka
// ----
// DeclarationError 4619: (106-113): Function "txtrace" not found.
// DeclarationError 8678: (96-119): Variable count for assignment to "result" does not match number of values (1 vs. 0)
