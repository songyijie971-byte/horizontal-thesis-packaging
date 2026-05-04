# GitHub 发布检查清单

## 发布前

- [ ] 运行 `./scripts/validate-skill.ps1`。
- [ ] 检查 `SKILL.md` 行数小于 500。
- [ ] 检查 `CUSTOMIZE.md` 是通用模板，不包含个人信息。
- [ ] 检查 `profiles/local/` 只包含 `README.md` 和 `.gitkeep`。
- [ ] 检查 examples 和 end-to-end examples 已脱敏。
- [ ] 检查 README 能让第一次使用的人看懂。
- [ ] 检查 `.gitignore` 已忽略私有 profile 和文档产物。
- [ ] 决定开源许可证。

## 推荐仓库描述

```text
Agent Skill for turning horizontal industry projects, engineering systems, AI applications, and robotics projects into master's thesis materials.
```

## 推荐 Topics

```text
agent-skill
codex
cursor
master-thesis
graduate-thesis
engineering-project
ai-application
robotics
thesis-writing
chinese-thesis
```

## 首次提交建议

```powershell
git init
git add .
git commit -m "Initial release of horizontal thesis packaging skill"
```

## 发布后

- [ ] 在 README 里确认安装路径。
- [ ] 新开一个会话测试触发。
- [ ] 用 `tests/trigger-tests.md` 测试触发和不触发句子。
- [ ] 发一个 example issue，说明如何请求新增 profile。
- [ ] 后续每次 PR 都跑 validation。

## 许可证提醒

如果你希望别人自由使用、修改和再发布，可以选择 MIT。

如果你希望别人修改后也必须开源，可以选择 GPL。

如果你还没决定，可以先不要发布为 public，或先添加 license 选择说明。
