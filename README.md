# nginx_transcode_265

#### 介绍
以下项目的编译的编译， 以用于 265 的转码。  
编译环境:  

```
# cat /proc/version
Linux version 3.10.0-1062.4.1.el7.x86_64 (mockbuild@kbuilder.bsys.centos.org) (gcc version 4.8.5 20150623 (Red Hat 4.8.5-39) (GCC) ) 
```

- nginx-rtmp-265: https://github.com/adwpc/nginx-rtmp-module.git   
- ffmpeg-ksvc: https://github.com/ksvc/FFmpeg   
- x264-20171106   
- x265-8c2a1669525f3

#### 安装教程

```
./install.sh -o dir_to_install
```

安装后更新配置文件里面 ffmpeg 的绝对路径
