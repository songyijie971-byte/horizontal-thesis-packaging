# 使用模式说明

本 skill 面向两类用户提供两套配置方式。

## 一、傻瓜式配置：CUSTOMIZE.md

适合：

- 第一次使用这个 skill 的研究生
- 不想理解目录结构的人
- 只需要适配自己学校和导师的人
- 只想快速把项目包装成论文的人

只需要改：

```text
CUSTOMIZE.md
```

它覆盖：

- 学校/学院/专业
- 当前阶段
- 项目类型
- 本人负责模块
- 导师风格
- 学校要求
- 实验要求
- 创新点口径
- 答辩风险
- 隐私边界

## 二、深度配置：profiles/

适合：

- 想维护多套导师风格的人
- 想给不同阶段设置不同输出口径的人
- 想给课题组、学院或方向做通用预设的人
- 想参与开源贡献的人

### 1. `profiles/*.md`

这是项目内置的通用预设，会随 GitHub 仓库一起发布。

通用预设不是只覆盖“开题/答辩”这种小场景，而是优先覆盖横向课题组研究生的长期处境和项目类型。

例子：

```text
profiles/default-conservative.md
profiles/horizontal-lab-default.md
profiles/engineering-heavy.md
profiles/algorithm-application-bridge.md
profiles/robotics-intelligent-system.md
profiles/enterprise-confidential.md
profiles/graduation-first.md
profiles/advisor-strict.md
profiles/proposal-rescue.md
profiles/defense-compressed.md
profiles/blind-review-safe.md
```

作用：

- 提供开箱即用的风格模式
- 让用户不用自己写完整规则
- 让社区可以贡献新的通用 profile

使用方式：

```text
按 profiles/advisor-strict.md 的风格，帮我检查这个开题。
按 profiles/defense-compressed.md 的风格，生成答辩 PPT 大纲。
```

### 2. `profiles/local/*.md`

这是用户自己的私有多配置区。

适合：

- 一个导师一个配置
- 一个学校一个配置
- 开题、盲审、答辩分别一套配置
- 同一项目不同阶段不同风格

例子：

```text
profiles/local/my-advisor.md
profiles/local/my-school.md
profiles/local/defense-style.md
```

这些文件默认被 `.gitignore` 忽略，不会提交到 GitHub。仓库只上传 `profiles/local/README.md` 和 `.gitkeep`，让其他用户知道这里可以放自己的配置。

## 三者关系

```text
profiles/*.md
= 项目自带通用预设，上传 GitHub，所有人可用。

CUSTOMIZE.md
= 普通用户的一文件配置，上传模板，clone 后自己填写。

profiles/local/*.md
= 高级用户的私有多配置，上传目录和说明，不上传个人内容。
```

## 推荐优先级

1. 新手：只改 `CUSTOMIZE.md`
2. 熟练用户：使用内置 `profiles/*.md`
3. 高级用户：创建 `profiles/local/*.md`

## 读取优先级

当多个配置同时存在时：

1. 默认保守版
2. 宽场景 profile
3. 细场景 profile
4. `CUSTOMIZE.md`
5. 用户明确指定的 `profiles/local/*.md`

后面的规则覆盖前面的规则。
