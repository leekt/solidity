object "a" {
  code {
    pop(recentrootrefload(0x01, 0x02))
    pop(txtrace(0x03, 0x04))
    pop(txdiff(0x05, 0x06, 0x07))
    eventdatacopy(0x08, 0x20, 0x09, 0x0a)
    stop()
  }
}
// ====
// EVMVersion: =@future
// ----
// Assembly:
//     /* "source":74:78   */
//   0x02
//     /* "source":68:72   */
//   0x01
//     /* "source":50:79   */
//   recentrootrefload
//     /* "source":46:80   */
//   pop
//     /* "source":111:115   */
//   0x04
//     /* "source":105:109   */
//   0x03
//     /* "source":97:116   */
//   txtrace
//     /* "source":93:117   */
//   pop
//     /* "source":153:157   */
//   0x07
//     /* "source":147:151   */
//   0x06
//     /* "source":141:145   */
//   0x05
//     /* "source":134:158   */
//   txdiff
//     /* "source":130:159   */
//   pop
//     /* "source":204:208   */
//   0x0a
//     /* "source":198:202   */
//   0x09
//     /* "source":192:196   */
//   0x20
//     /* "source":186:190   */
//   0x08
//     /* "source":172:209   */
//   eventdatacopy
//     /* "source":222:228   */
//   stop
// Bytecode: 60026001b65060046003b750600760066005b850600a600960206008b900
// Opcodes: PUSH1 0x2 PUSH1 0x1 RECENTROOTREFLOAD POP PUSH1 0x4 PUSH1 0x3 TXTRACE POP PUSH1 0x7 PUSH1 0x6 PUSH1 0x5 TXDIFF POP PUSH1 0xA PUSH1 0x9 PUSH1 0x20 PUSH1 0x8 EVENTDATACOPY STOP
// SourceMappings: 74:4:0:-:0;68;50:29;46:34;111:4;105;97:19;93:24;153:4;147;141;134:24;130:29;204:4;198;192;186;172:37;222:6
