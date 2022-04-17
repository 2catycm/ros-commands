# https://docs.microsoft.com/zh-cn/windows/wsl/connect-usb
# sudo apt install linux-tools-5.4.0-77-generic hwdata
# sudo update-alternatives --install /usr/local/bin/usbip usbip /usr/lib/linux-tools/5.4.0-77-generic/usbip 20

cmd.exe /c usbipd wsl list
read -p "Which one do you want to detach?  " busid
cmd.exe /c usbipd wsl detach  --busid $busid
cmd.exe /c usbipd wsl list
