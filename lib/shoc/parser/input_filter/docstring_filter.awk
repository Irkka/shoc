# Select all continuous code blocks starting with a comment and contain a function declaration, or function declarations without docstrings and print their respective filename
/^#|.*\(\)\s*\{/ {
  if (match($0, /(^#.*\n)*(function|\(\))/)) {
    gsub(/function\s*|\(\)\s*\{.*/, "")
    print FILENAME "\n" $0 "\n"
  }
  else
    next
}
