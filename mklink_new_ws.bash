str=$0 # 脚本的文件路径
path=$(dirname $str) #获得脚本所在文件夹路径 https://www.jianshu.com/p/7e862e425d32
cd $path
# cd "${path}"
cd ../..   #回到工作空间的父路径
# echo $path
read -p "What is the name of your new project? " name

#创建新工作空间
# cmd.exe /c mkdir "$name\commands"
cmd.exe /c mkdir "$name\src"
#创建commands软链接
# echo "${name}\commands" "lab4_ws\commands" 
# exit
# sudo.exe cmd.exe /c mklink /D ".\${name}\commands" ".\lab4_ws\commands" 
# powershell.exe -Command "Start-Process powershell -Verb runAs -ArgumentList 'cmd.exe /c mklink /D ".\${name}\commands" ".\lab4_ws\commands"'
# powershell.exe -Verb runAs -ArgumentList 'cmd.exe /c mklink /D ".\${name}\commands" ".\lab4_ws\commands"'
# powershell.exe -Command "Start-Process powershell -Verb runAs -ArgumentList 'cmd.exe /c echo a'"
# powershell.exe -Command "Start-Process cmd -Verb runAs -ArgumentList '/c echo a'"
# powershell.exe -Command "Start-Process cmd -Verb runAs -ArgumentList '/k','echo', 'hello world'"
# powershell.exe -Command "Start-Process cmd -WorkingDirectory '.' -Verb runAs -ArgumentList '/k','mklink','/D','${name}\commands', 'lab4_ws\commands'"
# TODO still doesn't work.
# new-Item -Path .\lab7_ros_opencv\commands -ItemType SymbolicLink -Value ".\lab4_ws\commands\"
pause.exe
bash "./${name}/commands/catkin_make.bash"
