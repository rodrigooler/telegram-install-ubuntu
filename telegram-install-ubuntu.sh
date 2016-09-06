#!/bin/sh
{
    echo "This script requires superuser access to install apt packages."
    echo "You will be prompted for your password by sudo."

    # clear any previous sudo permission
    sudo -k

    # run inside sudo
    sudo sh <<SCRIPT

  # add PPA atareao/telegram
  sudo add-apt-repository ppa:atareao/telegram

  # update your sources
  apt-get update

  # install telegram
  apt-get install -y telegram

  # install telegram if needed
  # if ! type telegram >/opt/telegram/null 2>&1; then
    apt-get install -y telegram
  # fi

SCRIPT
}
