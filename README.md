# workstation-setup

Lite scripts to setup a workstation.

## Important security warning

Remember that this is a PUBLIC Github repo, so don't commit anything sensitive here.

## Important workflow warning

Run the scripts from this folder, there are plenty of relative paths in the bash scripts that will break if you don't.

Prerequisites:

- Working internet connection
- Administrator account, for sudo requests

### Remote install everything

Remote install only supports running the 'install-all' script.

```
curl -sSL https://raw.githubusercontent.com/Equiem/workstation-setup/master/remote-install.sh | bash
```

OR (short URL version):

````
curl -sSL https://goo.gl/ij3q9f | bash
````

### Local install

To install everything in a logical order:

1.  Install command line tools (makes git work)

    ```
    xcode-select --install
    ```

2.  Clone the install scripts

    ```
    git clone https://github.com/Equiem/workstation-setup.git
    ```

3.  Run the install scripts (the `cd` is important!)

    ```
    cd workstation-setup
    ./install-all.sh
    ```

## Dev boxes

Dev boxes need an extra script run

1. Create an SSH key (you MUST add a passphrase)

`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`

`ssh-add`

`ssh-add -L`

Copy the output of the last command into your github settings for your user account under "SSH keys".

2. Run the following script

`./install-dev.sh`

If something fails, sorry, you will probably have to re-run individual scripts and do some debugging.

Please make sure to push fixes back upstream!
