function reset_all() {
  return escape_code(0)
}

function escape_code(code) {
  return "\033[" code "m"
}

function underline(string) {
  return escape_code(4) string reset_all()
}

function bold(string) {
  return escape_code(1) string reset_all()
}

function blink(string) {
  return escape_code(5) string
}

function colorize(string, color) {
  color_code = ""

  switch(color) {
    case "red":
      color_code = "31"
      break
    default:
      return string
  }

  return escape_code(color_code) string reset_all()
}
