BEGIN {
  print "Initiating comment block parsing sequence\n"
  # Records are continuous blocks of text separated by an empty line
  RS=""
  # Fields are code lines
  FS="\n"
}

# Ignore shebang line
/^#!.*/ { next }

# Select all continuous code blocks starting with a comment and contain a function declaration, or function declarations without docstrings and print their respective filename
/^#|.*\(\)\s*\{/ {
  if (match($0, /(^#.*\n)*(function|\(\))/)) {
    gsub(/function\s*|\(\)\s*\{.*/, "")
    print FILENAME "\n" $0 "\n"
  }
  else
    next
}

END { print "Code block parsing sequence complete!" }
