#!source
# shebang 可以让code runner识别，改成source

# source下可以工作的脚本：https://www.cnblogs.com/congbo/archive/2013/04/25/3043617.html
#获得该文件的位置
echo "$0" | grep -q "$0"
if [ $? -eq 0 ]; then
        cd "$(dirname "$BASH_SOURCE")"
        CUR_FILE=$(pwd)/$(basename "$BASH_SOURCE")
        CUR_DIR=$(dirname "$CUR_FILE")
        cd - > /dev/null
else
        if [ ${0:0:1} = "/" ]; then
                CUR_FILE=$0
        else
                CUR_FILE=$(pwd)/$0
        fi
        CUR_DIR=$(dirname "$CUR_FILE")
fi
#去掉路径中的相对路径，如a/..b/c
cd "$CUR_DIR"
CUR_DIR=$PWD
cd - > /dev/null

echo $CUR_DIR

cd $CUR_DIR
cd ..

# If there is an initros function defined, call it to init ros.
# 加载ros环境变量。
funcname="initros"
if [ "$(type -t $funcname)" = "function" ] ; then
        initros
        echo "source_devel.bash: ros env initialized."
fi
source devel/setup.bash