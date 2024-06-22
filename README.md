# wsl setup

## install wsl ubuntu in windows
```powershell
wsl --update
wsl --set-default-version 2
wsl -l -o
wsl --install -d Ubuntu-24.04
```

## setup in ubuntu
```bash
bash setup.sh

sudo usermod -aG docker ${USER}

# reboot wsl

docker run hello-world

# ~/.bashrc
# export HOSTIP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
# export DISPLAY=${HOSTIP}:0
```

## Tips
```bash
# delete :Zone.Identifier
find ./ -type f -name '*:Zone.Identifier' -exec rm {} \;
```
