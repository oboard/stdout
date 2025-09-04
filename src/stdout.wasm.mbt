// WASM implementation for stdout package
// Uses proper MoonBit FFI syntax for WASM

// Import print_char function from spectest module (standard for WASM testing)
///|
fn print_char(c : Int) -> Unit = "spectest" "print_char"

// Write string by printing each character

///|
fn write_internal(s : String) -> Unit {
  let len = s.length()
  for i = 0; i < len; i = i + 1 {
    let char_code = s[i]
    print_char(char_code)
  }
}

// Flush is a no-op in basic WASM environment

///|
fn flush_internal() -> Unit {
  // No flush operation needed for character-by-character output
  ()
}
