 ### [jsproxy](https://gxggsrmyy.github.io/jsproxy/)，推荐使用 chrome 浏览器。

 ### [m3u8-downloader](https://gxggsrmyy.github.io/m3u8-downloader/)，[油猴插件](https://gxggsrmyy.github.io/m3u8-downloader/m3u8-downloader.user.js)，[油猴插件cn](https://gxggsrmyy.github.io/m3u8-downloader/m3u8-downloader-cn.user.js),[油猴插件m3u8-downloader-cn-notitle](https://gxggsrmyy.github.io/m3u8-downloader/m3u8-downloader-cn-notitle.user.js)

 ### [cxwithyxy-m3u8-downloader](https://gxggsrmyy.github.io/cxwithyxy-m3u8-downloader/)，推荐使用 chrome 浏览器。

  ### [media-source-extract](https://gxggsrmyy.github.io/media-source-extract)，[油猴插件media-source-extract.user.js](https://gxggsrmyy.github.io/media-source-extract/media-source-extract.user.js), [油猴插件media-source-extract-stream.user.js](https://gxggsrmyy.github.io/media-source-extract/media-source-extract-stream.user.js),[样例](https://gxggsrmyy.github.io/media-source-extract/example/),[播放器](https://gxggsrmyy.github.io/media-source-extract/player/player-offline.html)

  
 ### 
go to https://www.wintun.net and download the latest release, copy the right wintun.dll into Clash home directory，
Clash home directory 是  C:\Users\Administrator\.config\clash
要用系统管理员身份 运行

```
tun:
  enable: true
  stack: system # gvisor # or system
  dns-hijack:
    - 198.18.0.2:53 # when `fake-ip-range` is 198.18.0.1/16, should hijack 198.18.0.2:53
  auto-route: true # auto set global route for Windows
  # It is recommended to use `interface-name`
  auto-detect-interface: true # auto detect interface, conflict with `interface-name`
```

### 
go to https://www.wintun.net and download the latest release, copy the right wintun.dll into hysteria.exe home directory，

config-tun.json

```
"tun": {
    "name": "wintun",    
    //timeout 必须设置
    "timeout": 300
  },



C:\WINDOWS\system32>route print
===========================================================================
接口列表
 51...........................WireGuard Tunnel
 21...08 00 58 00 00 05 ......SSL VPN Client Virtual Network Adapter
 11...14 f6 d8 f3 54 77 ......Microsoft Wi-Fi Direct Virtual Adapter
  6...16 f6 d8 f3 54 76 ......Microsoft Wi-Fi Direct Virtual Adapter #2
 20...14 f6 d8 f3 54 76 ......Intel(R) Wireless-AC 9462
  1...........................Software Loopback Interface 1
===========================================================================


```

### 
wintun.cmd

要用系统管理员身份 运行

```

CD /D "%~dp0"

start    hysteria-windows-amd64  -c   config-tun.json

@echo on
choice /C 123 /T 15 /D 3 /M "1、ip1更新  2、ip2更新  3、跳过"
if errorlevel 3 goto startfq
if errorlevel 2 goto startfq
if errorlevel 1 goto startfq

:startfq
netsh interface ip set address name="wintun" source=static addr=192.168.123.1 mask=255.255.255.0 gateway=none

netsh interface ip add dns "wintun"   223.5.5.5   
netsh interface ip add dns "wintun"   223.6.6.6 

route add 0.0.0.0 mask 0.0.0.0 192.168.123.1    metric 5  
route add 51.158.54.46 mask 255.255.255.255 192.168.1.1  
pause 
```