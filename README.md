 ### [jsproxy](https://gxggsrmyy.github.io/jsproxy/)，推荐使用 chrome 浏览器。

 ### [m3u8-downloader](https://gxggsrmyy.github.io/m3u8-downloader/)，[油猴插件](https://gxggsrmyy.github.io/m3u8-downloader/m3u8-downloader.user.js)

 ### [cxwithyxy-m3u8-downloader](https://gxggsrmyy.github.io/cxwithyxy-m3u8-downloader/)，推荐使用 chrome 浏览器。

  ### [media-source-extract]，[油猴插件](https://gxggsrmyy.github.io/media-source-extract.user.js)

  tun:
  enable: true
  stack: system # gvisor # or system
  dns-hijack:
    - 198.18.0.2:53 # when `fake-ip-range` is 198.18.0.1/16, should hijack 198.18.0.2:53
  auto-route: true # auto set global route for Windows
  # It is recommended to use `interface-name`
  auto-detect-interface: true # auto detect interface, conflict with `interface-name`