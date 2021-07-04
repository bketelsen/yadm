cleanup () {
    find ~/src -name 'node_modules' -type d -prune -exec rm -rf '{}' +
    find ~/src -name '.next' -type d -prune -exec rm -rf '{}' +
    cargo sweep -r -t 30 ~/src
}


