@echo off

rem uses the putty pscp command https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

pscp    -pw password Dockerfile                      soconnor@centos:/home/soconnor/CoreDockerRemoteDebug
pscp -r -pw password bin/debug/netcoreapp1.1/publish soconnor@centos:/home/soconnor/CoreDockerRemoteDebug
