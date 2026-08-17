object "a" {
  code {
    // Copies the first 65 bytes of ARBITRARY signature 1 to memory.
    sigdatacopy(0x80, 0, 65, 1)
    return(0x80, 65)
  }
}
// ====
// EVMVersion: =@future
// ----
// Assembly:
//     /* "source":71:72   */
//   0x01
//     /* "source":67:69   */
//   0x41
//     /* "source":64:65   */
//   0x00
//     /* "source":58:62   */
//   0x80
//     /* "source":46:73   */
//   sigdatacopy
//     /* "source":99:101   */
//   0x41
//     /* "source":93:97   */
//   0x80
//     /* "source":86:102   */
//   return
// Bytecode: 600160415f6080b560416080f3
// Opcodes: PUSH1 0x1 PUSH1 0x41 PUSH0 PUSH1 0x80 SIGDATACOPY PUSH1 0x41 PUSH1 0x80 RETURN
// SourceMappings: 71:1:0:-:0;67:2;64:1;58:4;46:27;99:2;93:4;86:16
