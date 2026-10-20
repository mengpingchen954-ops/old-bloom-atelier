# GitHub Pages 发布

- 独立公开仓库：https://github.com/mengpingchen954-ops/old-bloom-atelier
- 浏览器试玩：https://mengpingchen954-ops.github.io/old-bloom-atelier/
- 使用当前已有认证的 GitHub 账号；没有把凭据写入项目或仓库。
- GitHub Actions 运行 `npm ci`、规则测试、Vite 生产构建，再用官方 Pages Actions 发布。
- 首次成功工作流：https://github.com/mengpingchen954-ops/old-bloom-atelier/actions/runs/39422179041
- 使用免费公开 GitHub Pages，无后端、无自定义域名或付费服务。
- 所有资源相对当前仓库路径加载。初次公开浏览器通关 39 项检查通过，包括实际制作、试戴、修改、三订单交付、刷新恢复、照片和保存失败。
- 补充浏览器验证见 QA.md；最终部署的 Actions 记录在仓库 Actions 页。
- 发布白名单仅包含源码、配置、原创 SVG、第三方许可、文档及测试代码。排除 node_modules、dist、缓存、research 脚本、研究下载、本地存档、备份、截图、测试产物、凭据与其他游戏内容。

本地的 `artifacts/` 保存验收证据，不会上传。存档属于当前网站来源，本地与 Pages 之间需要使用游戏内“手作札记 → 下载存档备份 / 从备份恢复”。

最终资源核验：公开页面的 JS、CSS、favicon 均为 HTTP 200，与本地生产构建逐字节一致；构建换行以 `.gitattributes` 统一，支持 Windows 本地与 Linux Actions 可复现资产输出。裸资源核验脚本：`node tests/public-assets.mjs`。
