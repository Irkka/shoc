function banner_print(message) {
  banner_border = ""
  for (i=0; i < length(message)+4; i++)
    banner_border = banner_border "#"
  { print "\n" banner_border "\n| " toupper(message) " |\n" banner_border "\n" }
}
