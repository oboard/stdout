///|
pub fn[T : Show] write(s : T) -> Unit {
  write_internal(s.to_string())
}

///|
pub fn[T : Show] writeln(s : T) -> Unit {
  write_internal(s.to_string() + "\n")
}

///|
pub fn flush() -> Unit {
  flush_internal()
}
