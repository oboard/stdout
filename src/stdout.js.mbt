///|
extern "js" fn write_internal(s : String) -> Unit =
  #|s => process.stdout.write(s)

///|
extern "js" fn flush_internal() -> Unit =
  #|() => { if (process.stdout.flush) process.stdout.flush(); }
