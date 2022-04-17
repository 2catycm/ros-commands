str=$0 # 脚本的文件路径
path=$(dirname $str) #获得脚本所在文件夹路径 https://www.jianshu.com/p/7e862e425d32
cd $path 
cd .. # 回到工作空间的路径
catkin_make #编译工作空间