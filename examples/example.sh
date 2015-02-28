#!/bin/bash

# Says hello to the user.
#
# @example
#   #!/bin/bash
#   say_hello
# @author Ilkka Hakkarainen <ilkka.hakkarainen@cs.helsinki.fi>
# @todo say_hello should have user name
function say_hello() {
  echo 'hello'
}

# shoc should extract this call and comment
say_hello

# Says goodbye to the user.
#
# @param $1 [String] the username of the current user
function say_goodbye() {
  username=$1

  echo "goodbye ${username}"
}

say_good_morning() {
  echo 'Good morning, sir'
}

# Says goodnight to the madame.
say_good_night() {
  echo 'Good night, ma'am'
}

# and these too
say_hello && say_goodbye $(whoami)
