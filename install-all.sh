# This must be done in the right order.
. install-xcode.sh;
. install-homebrew.sh;
. install-git.sh;
. install-ruby.sh;
# Everything below this point can be installed in any order
. install-browsers.sh;
. install-sublime.sh;
. install-sourcetree.sh;
. install-google-drive.sh;
. install-hipchat.sh;
. install-office.sh;
. install-sequel-pro.sh;
. install-xscope.sh;
. set-mac-defaults.sh