 ### [jsproxy](https://gxggsrmyy.github.io/jsproxy/)，推荐使用 chrome 浏览器。

 ### [m3u8-downloader](https://gxggsrmyy.github.io/m3u8-downloader/)，[油猴插件](https://gxggsrmyy.github.io/m3u8-downloader/m3u8-downloader.user.js)

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