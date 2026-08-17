// NON-NORMATIVE: EIP-7851 leaves the opcode TBD; this toolkit provisionally uses 0xf7.
object "a" {
  code {
    let success := setselfdelegate(0x02)
    stop()
  }
}
// ====
// EVMVersion: =@future
// optimizationPreset: full
// outputs: Bytecode,Opcodes,SourceMappings
// ----
// Bytecode: 6002f700
// Opcodes: PUSH1 0x2 SETSELFDELEGATE STOP
// SourceMappings: 66:4:0:-:0;50:21;46:26
