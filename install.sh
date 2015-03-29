#!/bin/sh
if [ $(id -u) -eq 0 ]; then
  curl -Lo /usr/local/bin/getignore https://raw.githubusercontent.com/caffeinewriter/getignore/master/getignore.sh
  chmod +x /usr/local/bin/getignore
  echo "Installation has completed successfully."
else
  echo "This script should be run as root, or with sudo permissions in order to write to /usr/bin/local."
fi

