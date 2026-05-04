# Manual Flow Test

本文件记录一次人工流程测试，用于确认 skill 是否真的适合“第一次使用 -> 判断单项目能不能转论文 -> 给蓝图 -> 推荐下游路线”的主链路。

## 测试场景

| 场景 | 输入入口 | 期望行为 | 结果 |
| --- | --- | --- | --- |
| 第一次使用，材料不足 | `templates/single-project-intake-template.md` | 不先问学校/导师背景，只问 8 个项目事实；缺信息时给低置信度初判或追问最关键 3 个问题 | 通过 |
| RAG 企业知识库项目 | `demo/rag-project-input.md` | 先给 8 项评分、B 类结论、判断置信度；再给论文主线、补证据清单和下游路线 | 通过 |
| 小型后台管理系统 | `demo/engineering-system-input.md` | 判为 C/D 类，不强行生成完整论文蓝图；给单项目内部补救路线 | 通过 |
| 下游路线判断 | `references/downstream-paper-route-assessment.md` | 先判断硕士论文是否稳，再评估 EI、CCF-C/CCF-B、SCI、CCF-A/CVPR、Nature；不承诺发表 | 通过 |
| 下游交接包 | `templates/thesis-conversion-handoff-template.md` | 包含适配度、判断置信度、研究主线、证据台账、本人工作量、实验补全、下游提示词 | 通过 |
| 导师追问模拟 | `templates/advisor-challenge-simulator.md` | 输出追问、当前风险、建议回答口径和需要补的证据 | 通过 |
| 主动下一步引导 | `templates/next-step-guidance-template.md` | 每次主要回答后给 2-4 个下一步选项；提示下游 skill 已安装可交接，未安装可用 find-skills/找技能 | 通过 |
| 可选记忆 | `templates/memory-update-template.md` | 只在任务完成后建议记忆，必须用户确认，不记录未脱敏敏感信息 | 通过 |

## 发现并修复的问题

- 交接包模板缺少“判断置信度”和“路线判断置信度”字段，已补。
- 下游提示词卡缺少 `ccfc`、`ccfa`、`nature`，已补。
- 不适合项目 demo 的下游路线缺少置信度，已补。
- 用户需要 GPT 网页版式的主动引导，已新增下一步引导模板。

## 回归命令

```powershell
./scripts/validate-skill.ps1
```
