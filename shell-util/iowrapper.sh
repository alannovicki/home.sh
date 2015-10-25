NORMAL=`tput sgr0`
BOLD=`tput bold`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
RED=`tput setaf 1`

printf_bold() { printf "$BOLD$*$NORMAL"; }
printf_green() { printf "$GREEN$*$NORMAL"; }
printf_yellow() { printf "$YELLOW$*$NORMAL"; }
printf_red() { printf "$RED$*$NORMAL"; }

yesno () {
  printf_yellow "$1 [y/N] "

  # Read single character in POSIX-compatible manner:
  # http://stackoverflow.com/questions/32213758/posix-alternative-to-bash-read-with-timeout-and-character-limit
  old=$(stty -g)
  stty raw -echo min 0 time 150
  eval "inputchar=\$(dd bs=1 count=1 2>/dev/null)"
  stty $old

  # did the user say yes? 0 = true
  if [[ $inputchar == "y" || $inputchar == "Y" ]]; then
    printf_green "\n[YES]\n"
    return 0
  else
    printf_red "\n[NO]\n"
    return 1
  fi
}
