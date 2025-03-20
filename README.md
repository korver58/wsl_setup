# wsl setup

## install wsl ubuntu in windows
```powershell
wsl --update
# list available
wsl -l -o
wsl --install -d Ubuntu-24.04
# check
wsl -l -v
#   NAME            STATE           VERSION
# * Ubuntu-24.04    Running         2
```

## setup in ubuntu
```bash
bash setup.sh

sudo usermod -aG docker ${USER}

# reboot wsl

docker run hello-world

echo "export HOSTIP=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2}')" >> ~/.bashrc
echo 'export DISPLAY=${HOSTIP}:0' >> ~/.bashrc
```

## Tips
```bash
# delete :Zone.Identifier
find ./ -type f -name '*:Zone.Identifier' -exec rm {} \;
```
