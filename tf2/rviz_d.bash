str=$0 # 脚本的文件路径
path=$(dirname $str) #获得脚本所在文件夹路径 https://www.jianshu.com/p/7e862e425d32
cd $path 
# Let's look at our turtle frames using rviz. Let's start rviz with the turtle_tf2 configuration file using the -d option for rviz:
rosrun rviz rviz -d `rospack find turtle_tf2`/rviz/turtle_rviz.rviz
