defaults write -g com.apple.mouse.scaling -float 3.0;

defaults write com.apple.finder AppleShowAllFiles YES;

# Some things do not need a log out and in.
killall Finder;

echo "Defaults set! you will need to log out and back in again for them to take effect";
