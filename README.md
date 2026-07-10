# MGX Clash 配置

基于 [ACL4SSR](https://github.com/ACL4SSR/ACL4SSR) fork 的个人 Clash 分流规则配置。

## 订阅链接

```
https://raw.githubusercontent.com/MGX-LJY/ACL4SSR/main/Clash/config/MGX.ini
```

## 规则说明

| 策略组 | 说明 |
|--------|------|
| 🎮 Steam商店 | steampowered.com、steamcommunity.com 等平台域名，走代理 |
| 🎮 Steam下载 | Akamai CDN、各地 ISP Steam 节点等下载域名，默认直连 |
| 🎯 全球直连（SteamCN） | Steam 中国 CDN 节点，直连 |

## 文件结构

```
Clash/
├── config/MGX.ini          # 主配置文件
├── Ruleset/
│   ├── Steam.list          # Steam 商店（16条）
│   ├── SteamDownload.list  # Steam 下载 CDN（24条）
│   └── SteamCN.list        # Steam 中国直连（17条）
└── *.list                  # 其他分流规则
```
