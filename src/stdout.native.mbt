///|
fn write_internal(s : String) -> Unit {
  write_ffi(@encoding.encode(UTF8, s))
}

///|
fn flush_internal() -> Unit {
  flush_ffi()
}

///|
#owned(bytes)
extern "c" fn write_ffi(bytes : Bytes) -> Unit = "write_ffi"

///|
extern "c" fn flush_ffi() -> Unit = "flush_ffi"
