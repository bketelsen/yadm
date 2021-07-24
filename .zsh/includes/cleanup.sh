cleanup () {
    find ~/src -name 'node_modules' -type d -prune -exec rm -rf '{}' +
    find ~/src -name '.next' -type d -prune -exec rm -rf '{}' +
    cargo sweep -r -t 30 ~/src
    brew cleanup
    is_bin_in_path docker && docker system prune -a -f --volumes || echo "skipping docker"
    is_bin_in_path nix && nix-collect-garbage -d || echo "skipping nix"
}
# https://stackoverflow.com/questions/6569478/detect-if-executable-file-is-on-users-path
function is_bin_in_path {
  if [[ -n $ZSH_VERSION ]]; then
    builtin whence -p "$1" &> /dev/null
  else  # bash:
    builtin type -P "$1" &> /dev/null
  fi
}


