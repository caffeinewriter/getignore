#!/bin/sh
INSTALLPATH=/usr/local/bin/getignore
if [ "$(id -u)" -ne 0 ]; then
  echo "Script must be run as root or with sudo permissions.";
elif [ -f $INSTALLPATH ]; then
  echo "It looks like getignore is already installed. If you wish to reinstall it, please remove $INSTALLPATH first."
else
  echo "Installing getignore..."
  curl -Lso $INSTALLPATH https://raw.githubusercontent.com/caffeinewriter/getignore/master/getignore.sh
  chmod +x $INSTALLPATH
  echo "Installation has completed successfully."
fi
