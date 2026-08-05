# ACL4SSR - MGX 个人配置

这是从 ACL4SSR fork 的个人 Clash 分流规则仓库。**核心配置在 `Clash/config/`**，其余规则文件都是为该配置服务的数据文件。

## 核心文件

| 文件 | 说明 |
|------|------|
| `Clash/config/MGX_yaml.ini` | 主配置（yaml 规则集版本） |
| `Clash/config/MGX_list.ini` | 主配置（list 规则集版本） |

两个配置结构完全相同，只有 ruleset URL 后缀不同（`.yaml` vs `.list`）。选择哪个取决于 subconverter 支持的格式。

## 规则文件位置

每条规则同时维护两个格式：

- `Clash/*.yaml` 和 `Clash/*.list` — 顶层规则
- `Clash/Ruleset/*.yaml` 和 `Clash/Ruleset/*.list` — 细分规则

## 修改规则时注意

- ruleset URL 格式：`https://raw.githubusercontent.com/MGX-LJY/ACL4SSR/master/Clash/...`
- 新增规则文件后，需同步在 **两个** ini 文件中添加对应的 `ruleset=` 和 `custom_proxy_group=` 条目
- 新规则文件需同时提供 `.yaml`（`payload:` 格式）和 `.list`（纯文本格式）两个版本

## Steam 规则说明

Steam 拆分为三个文件，用途不同：

| 文件 | 条数 | 用途 | 策略 |
|------|------|------|------|
| `Clash/Ruleset/Steam.list/yaml` | 16 | 商店/平台域名（steampowered.com 等） | 🎮 Steam商店（代理） |
| `Clash/Ruleset/SteamDownload.list/yaml` | 24 | 全球 CDN 下载节点（Akamai 等） | 🎮 Steam下载（默认直连） |
| `Clash/Ruleset/SteamCN.list/yaml` | 17 | 中国 CDN 节点（steamchina.com 等） | 🎯 全球直连 |

## 文件格式说明

- `.yaml` 格式：以 `payload:` 开头，每行 `  - DOMAIN-SUFFIX,xxx`
- `.list` 格式：纯文本，每行 `DOMAIN-SUFFIX,xxx`
