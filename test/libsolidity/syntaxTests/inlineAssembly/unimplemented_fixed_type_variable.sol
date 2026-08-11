contract C {
    function f() public pure returns (fixed x) {
        assembly {
            x := 1
        }
    }
}
// ----
// UnimplementedFeatureError 1834: FixedPointType not implemented.
