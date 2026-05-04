# 傻瓜式一文件适配

## 最简单用法

只改一个文件：

```text
CUSTOMIZE.md
```

改完后，在对话里说：

```text
请读取 CUSTOMIZE.md，按我的学校和导师风格，帮我把这个项目包装成硕士论文。
```

## 为什么只改这一个文件

`CUSTOMIZE.md` 已经覆盖：

- 学校/学院/专业
- 学位类型
- 当前阶段
- 项目类型
- 本人负责模块
- 导师风格
- 学校要求
- 创新点口径
- 实验要求
- 答辩风险
- 隐私边界
- 输出风格

普通用户不需要理解 `profiles/`。如果只想快速适配自己，停在 `CUSTOMIZE.md` 就够了。

## 和 profiles 的关系

`CUSTOMIZE.md` 是新手入口。

`profiles/` 是深度入口，适合想维护多套风格或参与开源贡献的人，例如：

- 一个导师一个 profile
- 一个学校一个 profile
- 开题、盲审、答辩分别一个 profile
- 给其他研究生共享“导师严厉版”“盲审安全版”等通用预设

默认优先级：

1. `profiles/default-conservative.md`
2. 场景 profile
3. `CUSTOMIZE.md`
4. 用户明确指定的 `profiles/local/*.md`

也就是说，`CUSTOMIZE.md` 会覆盖大多数默认风格。

## 两套方案都可以开源

建议公开仓库同时保留：

- `CUSTOMIZE.md`：给普通用户一文件配置。
- `profiles/*.md`：给所有用户开箱即用的通用预设。
- `profiles/local/README.md` 和 `.gitkeep`：告诉高级用户这里可以放私有多配置。

不要提交：

- `profiles/local/my-advisor.md`
- `profiles/local/my-school.md`
- 任何包含私人导师、学校内部要求、企业敏感信息的文件

## 开源时怎么处理

公开仓库可以保留一个通用的 `CUSTOMIZE.md` 模板。  
用户 clone 后直接改这个文件即可。

如果用户不想污染 git，可以自己创建：

```text
CUSTOMIZE.local.md
```

然后在对话里明确说：

```text
请读取 CUSTOMIZE.local.md。
```

## 推荐 README 文案

```md
## Quick Customization

For most users, edit only one file:

`CUSTOMIZE.md`

Fill in your university, advisor style, thesis stage, project type, evidence requirements, and defense risks.

Then ask the agent:

"Read CUSTOMIZE.md and adapt this project to my thesis style."
```
