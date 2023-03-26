#!/usr/bin/bash
cd ..
exec bash
#update ubuntu and install virtualenv for new users
sudo apt update
sudo apt install -y python3-virtualenv

#adds all of algo's files
git clone https://github.com/trailofbits/algo && 
cd algo

#installs the rest of algos dependencies
python3 -m virtualenv --python="$(command -v python3)" .env &&
  source .env/bin/activate &&
  python3 -m pip install -U pip virtualenv &&
  python3 -m pip install -r requirements.txt

#information letting user know it is done
echo
echo  "*algo installation complete*"
echo

exec bash