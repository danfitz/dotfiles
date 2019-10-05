# cd & ls at the same time
cd () { builtin cd "$@" && ls; }
