# ACL4SSR - MGX 个人配置

这是从 ACL4SSR fork 的个人 Clash 分流规则仓库。**只有 `Clash/config/MGX.ini` 是自定义配置**，其余规则文件都是为该配置服务的数据文件。

## 核心文件

- `Clash/config/MGX.ini` — 唯一的主配置，定义所有 ruleset 和 proxy group

## 规则文件位置

- `Clash/*.list` — 顶层规则（BanAD、ChinaDomain、Telegram 等）
- `Clash/Ruleset/*.list` — 细分规则（Bilibili、Netflix、Steam 系列）

## Steam 规则说明

Steam 拆分为三个文件，用途不同：

| 文件 | 条数 | 用途 | 策略 |
|------|------|------|------|
| `Clash/Ruleset/Steam.list` | 16 | 商店/平台域名（steampowered.com 等） | 🎮 Steam商店（代理） |
| `Clash/Ruleset/SteamDownload.list` | 24 | 全球 CDN 下载节点（Akamai 等） | 🎮 Steam下载（默认直连） |
| `Clash/Ruleset/SteamCN.list` | 17 | 中国 CDN 节点（steamchina.com 等） | 🎯 全球直连 |

## 修改规则时注意

- MGX.ini 中的 ruleset URL 格式：`https://raw.githubusercontent.com/MGX-LJY/ACL4SSR/master/Clash/...`
- 新增规则文件后，需同步在 MGX.ini 中添加对应的 `ruleset=` 和 `custom_proxy_group=` 条目
- 不需要维护 `Clash/Providers/` 下的 yaml 文件（已删除）
