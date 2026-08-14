object "a" {
  code {
    // Copies the first 65 bytes of ARBITRARY signature 1 to memory.
    sigdatacopy(1, 0x80, 0, 65)
    return(0x80, 65)
  }
}
// ====
// EVMVersion: =@future
// ----
// Assembly:
//     /* "source":70:72   */
//   0x41
//     /* "source":67:68   */
//   0x00
//     /* "source":61:65   */
//   0x80
//     /* "source":58:59   */
//   0x01
//     /* "source":46:73   */
//   verbatimbytecode_600490b4
//     /* "source":99:101   */
//   0x41
//     /* "source":93:97   */
//   0x80
//     /* "source":86:102   */
//   return
// Bytecode: 60415f60806001600490b460416080f3
// Opcodes: PUSH1 0x41 PUSH0 PUSH1 0x80 PUSH1 0x1 PUSH1 0x4 SWAP1 SIGPARAM PUSH1 0x41 PUSH1 0x80 RETURN
// SourceMappings: 70:2:0:-:0;67:1;61:4;58:1;46:27;99:2;93:4;86:16
