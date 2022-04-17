# ros-commands

### 开发背景

在学习、使用ROS的过程中，我们需要学习、记忆、使用数不胜数的ROS命令。很容易出现以下问题：

- 学习tutorial的时候自我感觉良好。离开复制粘贴，什么命令都不记得。
- 敲命令的时候，过度依赖Tab补全。然而经验表明，使用Tab补全往往未必比手动大更快
  - ROS命令的Tab补全比起linux本身命令的补全，需要搜索更多的环境变量，因此速度较慢。
  - 对于不少性能较差的电脑、或者性能很好但是操作系统是虚拟机、子系统的情况，按下一次Tab往往要4s。
  - Tab之后，发现不能补全，因为之前输入有误，这让人非常恼火。
- 命令过于长。ROS的命令允许很多参数的重新赋值、话题名的重定向等，这些导致输入的命令非常长。即使使用了roslaunch, 把部分命令关系写死在xml文件里面，输入roslaunch的一长串指令本身也是很傻的事情。

这就呼吁我们，

- 应该将命令的输入代码化，把命令的变化转变为代码的变化，用合适的IDE进行管理、配置和运行。这正是bash脚本所做的事情。
- 另一方面，对于命令的学习笔记、使用提醒，自然可以放到注释当中

本项目由此而生，旨在探索bash脚本的基础语法、将ros复制繁多的指令代码化，加速ros项目的开发，让ROS的命令的书写更加有探索性和交互性。

### 使用用法

1. 环境准备。本教程支持Ubuntu和ROS1，并在Ubuntu20.04+noetic上测试成功。

2. 下载 ros-commands

   ```bash
   cd your-ros-workspace
   git clone this
   ```

3. 体验如下命令

   ```bash
   bash ros_commands/catkin_make.bash
   ```

   ```bash
   source ros_commands/source_devel.bash
   #or
   . ros_commands/source_devel.bash
   ```

### VsCode+Code-Runner体验增强

1. 安装插件。打开VsCode，在extensions处搜索并安装`code-runner`插件。

2. 点击文件夹ros_commands， 你可以快速找到你喜欢的命令、修改命令、并且右上角点击播放键直接运行。
   - Exiting！ no more cd/tab/source anything like that

### 原理概述

- 自动source/bash 区分

  在bash脚本文件头增加一句

  ```bash
  #!source
  ```

  则Code-runner会用source而不是bash运行它

- 自动文件路径，无视终端当前文件路径

  ```bash
  str=$0 # 脚本的文件路径
  path=$(dirname $str) #获得脚本所在文件夹路径 https://www.jianshu.com/p/7e862e425d32
  cd $path 
  ```

  

