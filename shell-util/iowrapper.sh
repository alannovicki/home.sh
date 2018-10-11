#!/bin/sh
# Author - Alan Novicki (https://github.com/alannovicki)

NORMAL=`tput sgr0`
BOLD=`tput bold`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
RED=`tput setaf 1`

printf_bold() { printf "$BOLD$*$NORMAL"; }
printf_green() { printf "$GREEN$*$NORMAL"; }
printf_yellow() { printf "$YELLOW$*$NORMAL"; }
printf_red() { printf "$RED$*$NORMAL"; }

# $1: Prompt message (question)
# $2: Affirmative response prints "YES - $2"
# $3: Negative response prints "NO - $3"
prompt() {
  printf_yellow "$1 [y/N]: " # [YES] or [NO] will appear on the same line for readability

  # Read single character in POSIX-compatible manner:
  # http://stackoverflow.com/questions/32213758/posix-alternative-to-bash-read-with-timeout-and-character-limit
  old=$(stty -g)
  stty raw -echo min 0 time 150
  eval "inputchar=\$(dd bs=1 count=1 2>/dev/null)"
  stty $old

  # did the user say yes? 0 = true
  if [[ $inputchar == "y" || $inputchar == "Y" ]]; then
    printf_green "[YES - $2]\n"
    return 0
  else
    printf_red "[NO - $3]\n"
    return 1
  fi
}
