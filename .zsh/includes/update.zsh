update() {
    is_bin_in_path apt && sudo apt update || echo "skipping apt"
    is_bin_in_path apt && sudo apt upgrade -y || echo "skipping apt"
    is_bin_in_path brew && brew update || echo "skipping brew"
    is_bin_in_path brew && brew upgrade || echo "skipping brew"
}
# https://stackoverflow.com/questions/6569478/detect-if-executable-file-is-on-users-path
function is_bin_in_path {
  if [[ -n $ZSH_VERSION ]]; then
    builtin whence -p "$1" &> /dev/null
  else  # bash:
    builtin type -P "$1" &> /dev/null
  fi
}


