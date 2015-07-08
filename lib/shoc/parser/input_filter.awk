BEGIN {
  message = "Filtering out docstrings from input files"
  banner_print(message)
}

@include "shoc-parser-input_filter-shebang_filter"
@include "shoc-parser-input_filter-docstring_filter"

END {
  message = "Filtering complete!"
  banner_print(message)
}
