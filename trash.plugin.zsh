function trash() {
  mkdir -p ~/.Trash
  for file in "$@" ; do
    dst=~/.Trash/$(basename "$file")
    suffix=1
    while [ -e "$dst$suffix" ]; do
      suffix=$((suffix + 1))
    done
    command mv -v "$file" "$dst$suffix"
  done
}
