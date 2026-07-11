# MGX Clash 配置

基于 [ACL4SSR](https://github.com/ACL4SSR/ACL4SSR) fork 的个人 Clash 分流规则配置。

## 订阅链接

YAML 规则集版本（推荐）：
```
https://raw.githubusercontent.com/MGX-LJY/ACL4SSR/main/Clash/config/MGX_yaml.ini
```

LIST 规则集版本：
```
https://raw.githubusercontent.com/MGX-LJY/ACL4SSR/main/Clash/config/MGX_list.ini
```

## 配置版本说明

| 文件 | 规则集格式 | 适用场景 |
|------|-----------|---------|
| `MGX_yaml.ini` | `.yaml` | 支持 yaml 格式的 subconverter |
| `MGX_list.ini` | `.list` | 只支持纯文本 list 格式的 subconverter |

## 策略组说明

| 策略组 | 默认策略 | 说明 |
|--------|---------|------|
| 🚀 节点选择 | 手动 | 主出口，其余组默认跟随此组 |
| 🤖 Claude | 代理 | Claude AI 服务 |
| 🤖 OpenAI | 代理 | OpenAI 服务 |
| 🍎 苹果服务 | 直连 | iCloud、App Store、iTunes 等 |
| Ⓜ️ 微软服务 | 直连 | Microsoft 服务 |
| Ⓜ️ 微软云盘 | 直连 | OneDrive |
| 🌍 Google服务 | 代理 | Google 全系服务 |
| 🎸 Rockstar | 代理 | Rockstar Games |
| 🎮 Steam商店 | 代理 | steampowered.com 等平台域名 |
| 🎮 Steam下载 | 直连 | Akamai CDN 等下载节点 |
| 📺 哔哩哔哩 | 直连 | B站（支持港澳台解锁） |
| 🎬 Netflix | 代理 | Netflix |
| 📱 Telegram | 代理 | Telegram |
| 🌍 国外媒体 | 代理 | 其他境外流媒体 |
| 🎯 全球直连 | 直连 | 中国大陆域名/IP |
| 🛑 广告拦截 | 拒绝 | 广告域名 |
| 🍃 应用净化 | 拒绝 | 应用内广告 |
| 🐟 漏网之鱼 | 代理 | 未匹配流量 |

## 文件结构

```
Clash/
├── config/
│   ├── MGX_yaml.ini        # 主配置（yaml 规则集）
│   └── MGX_list.ini        # 主配置（list 规则集）
├── Ruleset/
│   ├── Steam.list/yaml     # Steam 商店（16条）
│   ├── SteamDownload.list/yaml  # Steam 下载 CDN（24条）
│   ├── SteamCN.list/yaml   # Steam 中国直连（17条）
│   ├── Bilibili.list/yaml
│   ├── BilibiliHMT.list/yaml
│   └── Netflix.list/yaml
├── Apple.list/yaml         # 苹果服务
├── google.list/yaml        # Google 服务
├── claude.list/yaml        # Claude AI
├── openai.list/yaml        # OpenAI
├── rockstar.list/yaml      # Rockstar Games
├── Telegram.list/yaml
├── Microsoft.list/yaml
├── OneDrive.list/yaml
├── ChinaDomain.list/yaml   # 中国域名直连
├── ChinaCompanyIp.list/yaml
├── ChinaMedia.list/yaml
├── ProxyGFWlist.list/yaml  # GFW 代理
├── ProxyMedia.list/yaml    # 境外媒体
├── BanAD.list/yaml         # 广告拦截
├── BanProgramAD.list/yaml  # 应用广告
├── Download.list/yaml
├── LocalAreaNetwork.list/yaml
└── UnBan.list/yaml
```
