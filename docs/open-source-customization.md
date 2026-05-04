# 开源个性化指南

## 目标

本 skill 的核心能力保持通用，同时提供两套面向开源用户的适配方式：

1. 普通用户：只改根目录 `CUSTOMIZE.md`
2. 深度用户：使用 `profiles/*.md` 和 `profiles/local/*.md`

这样别人 clone 或 fork 后，不需要改 `SKILL.md` 主流程。

## 普通用户最快用法

只改：

```text
CUSTOMIZE.md
```

然后对 agent 说：

```text
请读取 CUSTOMIZE.md，按我的学校和导师风格处理这个项目。
```

## 推荐目录

```text
horizontal-thesis-packaging
├── SKILL.md
├── CUSTOMIZE.md
├── references
├── templates
├── examples
├── checklists
├── profiles
│   ├── default-conservative.md
│   ├── horizontal-lab-default.md
│   ├── engineering-heavy.md
│   ├── algorithm-application-bridge.md
│   ├── robotics-intelligent-system.md
│   ├── enterprise-confidential.md
│   ├── graduation-first.md
│   ├── advisor-strict.md
│   ├── proposal-rescue.md
│   ├── defense-compressed.md
│   ├── blind-review-safe.md
│   ├── custom-profile-template.md
│   └── local
│       ├── README.md
│       └── .gitkeep
└── docs
    └── open-source-customization.md
```

## 哪些文件适合开源

适合提交：

- `SKILL.md`
- `references/`
- `templates/`
- `examples/`
- `checklists/`
- `profiles/default-conservative.md`
- `profiles/horizontal-lab-default.md`
- `profiles/engineering-heavy.md`
- `profiles/algorithm-application-bridge.md`
- `profiles/robotics-intelligent-system.md`
- `profiles/enterprise-confidential.md`
- `profiles/graduation-first.md`
- `profiles/advisor-strict.md`
- `profiles/proposal-rescue.md`
- `profiles/defense-compressed.md`
- `profiles/blind-review-safe.md`
- `profiles/custom-profile-template.md`
- `profiles/local/README.md`
- `profiles/local/.gitkeep`
- `docs/`

不建议提交：

- 真实导师姓名
- 学校内部模板
- 企业项目真实需求书
- 未脱敏数据
- 个人答辩记录
- `profiles/local/*.md`

## 个性化方式

### 方式 0：只改 CUSTOMIZE.md

这是推荐给大多数用户的方式。

打开根目录：

```text
CUSTOMIZE.md
```

填写学校、导师风格、项目类型、本人负责模块、实验要求、输出偏好和风险点。

### 方式 1：本地 profile

复制：

```text
profiles/custom-profile-template.md
```

到：

```text
profiles/local/my-advisor.md
```

填写导师偏好、学校要求、禁用表达和实验要求。

### 方式 2：项目 fork

如果你希望把某一类学校或学院要求共享给别人，可以新增：

```text
profiles/engineering-master-conservative.md
profiles/computer-science-thesis.md
profiles/robotics-lab-style.md
```

这些文件不要包含个人隐私和内部敏感信息。

### 方式 3：临时指定风格

用户可以在对话中说：

```text
按导师严厉版帮我检查这个开题。
按盲审安全版改写创新点。
按答辩压缩版生成 PPT 大纲。
读取 profiles/local/my-advisor.md 的要求来处理。
```

## Profile 叠加规则

建议按这个顺序：

1. 默认保守版：`profiles/default-conservative.md`
2. 宽场景 profile：如 `horizontal-lab-default.md`
3. 细场景 profile：如 `advisor-strict.md`
4. 一文件配置：`CUSTOMIZE.md`
5. 用户本地 profile：如 `profiles/local/my-advisor.md`

后读取的 profile 优先级更高。

## 写 profile 的原则

好的 profile 应该写：

- 导师偏好
- 学校格式要求
- 创新点口径
- 实验最低要求
- 禁用表达
- 输出格式偏好
- 风险检查重点

不要写：

- 大段通用论文知识
- 和主 skill 重复的工作流
- 无法公开的内部信息
- 真实企业数据
- 具体导师隐私评价

## 开源 README 建议

公开仓库 README 可以写：

```md
## Customization

This skill supports profile-based customization.

Copy `profiles/custom-profile-template.md` to `profiles/local/my-advisor.md`,
then describe your advisor, university, defense, and thesis writing preferences.

Do not commit private files under `profiles/local/`.
```

## .gitignore 建议

建议仓库根目录加入：

```gitignore
profiles/local/*.md
!profiles/local/.gitkeep
!profiles/local/README.md
CUSTOMIZE.local.md
private/
*.docx
*.pptx
*.xlsx
```
