# rubyshit

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Load RVM function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# solves issues with rake having mismatched versions with what Gemfile.lock expects
rake() {
  if [[ -e ./Gemfile ]] && which bundle; then
    bundle exec rake "$@"
  else
    command rake "$@"
  fi
}
