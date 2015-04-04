getignore
=========

A simple script to fetch language-specific `.gitignore` files from [Github's repository of them](https://github.com/github/gitignore).

##Installing

Installing can be handled automatically by running this command:

```sh
curl http://git.io/jgNS | sudo sh
```

Manual installation can also be done by cloning this repository and executing `install.sh`. You may need to run `chmod +x ./install.sh` to ensure that `install.sh` is executable.

Also, [getignore.sh](https://raw.githubusercontent.com/caffeinewriter/getignore/master/getignore.sh) may simply be added to any directory in your `PATH`, as long as it's given executable permissions.

##Usage

You may run `getignore` with no arguments for basic instructions.

This script fetches the language-specific `.gitignore` files from Github's repository of them via name. For example, to get the Node.js `.gitignore` file, you would run:

```sh
getignore Node
```

**Note:** Getting these files is case-sensitive. The style of the repository always has the first letter capitalized, but some have additional capital letters. Check the aforementioned repository for exact names. 
