contract C {
    function inspect(address account) external view returns (uint256 result) {
        assembly {
            result := recentrootrefload(0, 0)
            result := xor(result, txtrace(0, 0))
            result := xor(result, txdiff(0, account, 0))
            eventdatacopy(0, 0, 0, 0)
        }
    }
}
// ====
// EVMVersion: =@future
// ----
