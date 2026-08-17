object "a" {
  code {
    let location := setdelegate(0x01, 0x02)
    stop()
  }
}
// ====
// EVMVersion: =@future
// optimizationPreset: full
// outputs: Bytecode,Opcodes,SourceMappings
// ----
// Bytecode: 60026001f600
// Opcodes: PUSH1 0x2 PUSH1 0x1 SETDELEGATE STOP
// SourceMappings: 68:4:0:-:0;62;50:23;46:28
