# 记忆与自我进化机制

## 目标

让 skill 在不污染开源仓库的前提下，逐步适配每个研究生的学校、导师、课题组、项目类型和答辩风险。

## 三层机制

### 1. 开源模板层

随仓库发布：

```text
CUSTOMIZE.md
profiles/*.md
memory/*-template.md
templates/first-run-onboarding.md
templates/memory-update-template.md
```

作用：给所有用户一个默认起点。

### 2. 本地个性化层

默认不提交 GitHub：

```text
CUSTOMIZE.local.md
memory/user-context.md
profiles/local/*.md
```

作用：记录用户自己的学校、导师、项目、输出风格和长期偏好。

### 3. 自我改进层

默认不提交 GitHub：

```text
memory/session-learnings.md
memory/improvement-backlog.md
```

作用：记录真实使用中反复出现的问题、有效表达和可改进点。

## 首次使用流程

如果用户没有填写 `CUSTOMIZE.md`，也没有 `CUSTOMIZE.local.md`、`profiles/local/*.md` 或 `memory/user-context.md`，Agent 应主动进入 onboarding。

最少问 5 个问题：

1. 当前阶段
2. 项目类型
3. 本人负责模块
4. 导师最在意什么
5. 当前最担心什么风险

然后生成或建议生成：

```text
CUSTOMIZE.local.md
memory/user-context.md
```

## 初始化本地记忆

可以运行：

```powershell
./scripts/bootstrap-memory.ps1
```

它会创建：

```text
CUSTOMIZE.local.md
memory/user-context.md
memory/session-learnings.md
memory/improvement-backlog.md
```

这些文件已被 `.gitignore` 忽略。

## 会话后学习

每次完成一次项目包装后，Agent 应总结：

- 用户确认的信息
- 导师偏好
- 有效表达
- 下次不要重复问的问题
- 可以改进 skill 的地方

可以追加到：

```text
memory/session-learnings.md
memory/improvement-backlog.md
```

也可以运行：

```powershell
./scripts/append-session-learning.ps1 -Title "RAG 开题包装" -Summary "确认用户导师重视实验，后续默认补问答评价集和引用准确性。"
```

## 什么能进开源仓库

可以开源：

- 通用 profile
- 脱敏 example
- 通用模板
- 通用检查清单
- 不含个人信息的改进建议

不要开源：

- 真实导师偏好
- 学校内部要求
- 企业数据
- 个人项目细节
- 未脱敏会话记录
