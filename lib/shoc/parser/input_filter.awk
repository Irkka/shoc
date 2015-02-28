BEGIN {
  message = "Filtering out docstrings from input files"
  banner_print(message)
}

@include "shebang_filter"
@include "docstring_filter"

END {
  message = "Filtering complete!"
  banner_print(message)
}
