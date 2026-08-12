contract C {
    // Not view: approve() updates the transaction-scoped approval context.
    function verify(uint256 scope) public {
        assembly {
            // Read the canonical signature hash, the resolved signer of
            // signature 0 and the resolved target of frame 0, then approve the
            // requested scope. APPROVE exits the frame, so the revert below is
            // only reached when the check fails.
            let sigHash := txparam(0x08)
            let signer := sigparam(0, 0x00)
            let target := frameparam(0, 0x00)
            let word := framedataload(1, 0)
            framedatacopy(0, 0, 32, 1)
            if eq(signer, target) { approve(0, 0, scope) }
            revert(0, 0)
        }
    }
}
// ====
// EVMVersion: =@future
// ----
