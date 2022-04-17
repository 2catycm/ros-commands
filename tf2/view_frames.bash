str=$0 # 脚本的文件路径
path=$(dirname $str) #获得脚本所在文件夹路径 https://www.jianshu.com/p/7e862e425d32
cd $path 
rosrun tf2_tools view_frames.py
code frames.pdf