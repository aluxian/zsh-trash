function trash() {
  mkdir -p ~/.Trash
  command mv -v "$@" ~/.Trash
}
