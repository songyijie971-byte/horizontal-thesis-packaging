# 本地私有 Profiles

这里用于放你自己的私有配置。

## 普通用户不需要使用这里

普通用户只改根目录：

```text
CUSTOMIZE.md
```

## 高级用户可以这样用

复制：

```text
profiles/custom-profile-template.md
```

到：

```text
profiles/local/my-advisor.md
```

然后填写自己的导师、学校、阶段或答辩偏好。

也可以运行：

```powershell
./scripts/new-local-profile.ps1 -Name my-advisor
```

## 示例

```text
profiles/local/my-advisor.md
profiles/local/my-school.md
profiles/local/proposal-style.md
profiles/local/defense-style.md
```

## 隐私规则

`profiles/local/*.md` 默认不会提交到 GitHub。

这里可以写：

- 导师个人偏好
- 学校内部要求
- 自己的答辩风险
- 个人项目边界

不要把这些私有文件提交到公开仓库。
