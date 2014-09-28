# 使用nsenter进入Docker容器

-----------------------


## 安装nsenter

    wget -c https://www.kernel.org/pub/linux/utils/util-linux/v2.25/util-linux-2.25.tar.gz
    tar zxvf util-linux-2.25.tar.gz
    cd util-linux-2.25
    ./configure --without-ncurses
    make nsenter
    sudo cp nsenter /usr/local/bin
  
## 使用nsenter进入Docker容器

### 获取容器Pid

    PID=$(docker inspect --format {{.State.Pid}} <container_name_or_ID>)
  
### 进入容器

    nsenter --target $PID --mount --uts --ipc --net --pid
  
  
## 建立快捷脚本　docker-enter.sh

    wget  https://raw.githubusercontent.com/warningrc/my-docker/master/docs/_local/docker-enter.sh
    mv docker-enter.sh /usr/local/bin/docker-enter
    chmod +x /usr/local/bin/docker-enter
    
    
    ## 进入docker容器
    docker-enter　<container_name_or_ID>

