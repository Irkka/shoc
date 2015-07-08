@include "shoc-utilities.awk"

BEGIN {
  message = "Initiating comment block parsing sequence"
  banner_print(message)
  # Records are continuous blocks of text separated by an empty line
  RS=""
  # Fields are code lines
  FS="\n"
}

@include "shoc-parser-input_filter.awk"

END {
  message = "Code block parsing sequence complete!"
  banner_print(message)
}
