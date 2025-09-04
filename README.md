# oboard/stdout

A complete stdout package for MoonBit with cross-platform support (Native C, JavaScript, and WebAssembly).

## API Methods

- `write(s)` - Write content without newline
- `writeln(s)` - Write content with newline
- `print(s)` - Alias for writeln (common convention)
- `flush()` - Force flush output buffer

## Usage

```moonbit
test {
  // Basic writing
  write("Hello")
  write(", ")
  writeln("world!")  // Adds newline
  
  // Print with newline
  print("This is a line")
  print(42)
  print(true)
  
  // Force flush buffer
  write("Buffered output")
  flush()
  
  // Works with any Show type
  let numbers = [1, 2, 3]
  print(numbers)
}
```

## Cross-Platform Support

- **Native (C)**: Uses `putchar()` and `fflush(stdout)`
- **JavaScript**: Uses `process.stdout.write()` and `process.stdout.flush()`
- **WebAssembly**: Basic implementation (requires host environment support for actual output)

### WASM Implementation Notes

The WASM implementation provides a minimal interface that satisfies the API contract. However, actual output functionality depends on the host environment:

- In a browser environment, you'll need to provide host functions for stdout operations
- In a WASI-compatible runtime, additional WASI bindings would be needed
- The current implementation serves as a foundation that can be extended based on your specific WASM deployment target
