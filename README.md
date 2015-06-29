# workstation-setup
Lite scripts to setup a workstation

IMPORTANT: Run the scripts from this folder, there are plenty of relative paths in the bash scripts that will break if you don't.

Prerequisites:

- Working internet connection
- Administrator account, for sudo requests
- Setup an SSH Key and attach it to your Github account

To install everything in a logical order:

1. Install command line tools (makes git work)

`xcode-select --install`

2. Clone the install scripts

`git clone git@github.com:Equiem/workstation-setup.git`

3. Run the install scripts (the `cd` is important!)

`cd workstation-setup`
`install-all.sh`

If something fails, sorry, you will probably have to re-run individual scripts and do some debugging.

Please make sure to push fixes back upstream!
