str=$0 # 脚本的文件路径
path=$(dirname $str) #获得脚本所在文件夹路径 https://www.jianshu.com/p/7e862e425d32
cd $path 
cd ../src
exit
catkin_create_pkg learning_tf2 tf2 tf2_ros roscpp rospy turtlesim
catkin_create_pkg learning_opencv sensor_msgs cv_bridge roscpp std_msgs image_transport


# catkin_create_pkg beginner_tutorials std_msgs rospy roscpp
# catkin_create_pkg <package_name> [depend1] [depend2] [depend3]
