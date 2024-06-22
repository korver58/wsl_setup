#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

# install apt-fast
# https://github.com/ilikenwf/apt-fast?tab=readme-ov-file#quick-install
/bin/bash -c "$(curl -sL https://git.io/vokNn)"

bash setup_docker.sh
bash setup_nvidia_container.sh
