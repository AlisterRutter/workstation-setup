# Borrowed from https://github.com/monfresh/laptop/blob/master/mac
# I'll give it back when I'm done with it, i swear!
fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\n$fmt\n" "$@"
}

if ! command -v rbenv >/dev/null; then
  if ! command -v rvm >/dev/null; then
    fancy_echo 'Installing RVM and the latest Ruby...'
    curl -L https://get.rvm.io | bash -s stable --ruby --auto-dotfiles --autolibs=enable
    . ~/.rvm/scripts/rvm
  else
    local_version="$(rvm -v 2> /dev/null | awk '$2 != ""{print $2}')"
    latest_version="$(curl -s https://raw.githubusercontent.com/wayneeseguin/rvm/stable/VERSION)"
    if [ "$local_version" != "$latest_version" ]; then
      fancy_echo 'Upgrading RVM...'
      rvm get stable --auto-dotfiles --autolibs=enable --with-gems="bundler"
    else
      fancy_echo "Already using the latest version of RVM. Skipping..."
    fi
  fi
fi

# Specific to local portal dev
rvm install ruby-2.0.0-p643
gem install rake -v 10.4.2
