contract C {
    ufixed32x8 y;
    function f() public {
        assembly {
            sstore(y.slot, 1)
        }
    }
}
// ----
// UnimplementedFeatureError 1834: FixedPointType not implemented.
