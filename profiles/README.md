# 风格 Profile 说明

本目录用于存放学校、导师、学院或答辩场景的可替换风格配置。

普通用户请优先修改根目录 `CUSTOMIZE.md`，不需要理解本目录。

如果想更深入使用这个 skill，可以使用本目录的 profile 机制。

## 设计原则

- `profiles/` 下的通用 profile 适合开源共享。
- 通用 profile 应优先覆盖“横向课题组研究生的长期处境”，再覆盖具体开题、答辩、盲审场景。
- `profiles/local/` 下的 profile 用于个人导师、学院、学校模板等私有适配。
- 不要把真实导师姓名、学院内部要求、企业敏感信息写入公开 profile。
- 公开仓库建议保留 `profiles/local/README.md` 和 `profiles/local/.gitkeep`，不要提交个人私有 profile。

## 三种配置的定位

```text
CUSTOMIZE.md
= 普通用户的一文件配置。

profiles/*.md
= 项目自带的通用预设，适合上传 GitHub 供所有研究生使用。

profiles/local/*.md
= 高级用户自己的私有多配置，目录和说明上传 GitHub，个人内容不上传。
```

## 通用 profile 分类

宽场景 profile：

- `horizontal-lab-default.md`：课题组长期做横向项目。
- `engineering-heavy.md`：工程系统和平台开发为主。
- `algorithm-application-bridge.md`：有算法或 AI，但主要是应用落地。
- `robotics-intelligent-system.md`：机器人、智能系统、控制与调度。
- `enterprise-confidential.md`：企业合作、数据保密和项目脱敏。
- `graduation-first.md`：稳妥毕业、降低风险。

细场景 profile：

- `advisor-strict.md`：导师严厉、重证据。
- `proposal-rescue.md`：开题救火。
- `defense-compressed.md`：答辩 PPT 和讲稿。
- `blind-review-safe.md`：盲审安全。
- `default-conservative.md`：默认保守口径。

## 推荐优先级

当多个 profile 同时适用时，按顺序叠加：

1. `profiles/default-conservative.md`
2. 宽场景 profile，例如 `horizontal-lab-default.md`、`engineering-heavy.md`
3. 细场景 profile，例如 `advisor-strict.md`、`proposal-rescue.md`
4. 根目录 `CUSTOMIZE.md`
5. 用户本地 profile，例如 `profiles/local/my-advisor.md`

后面的要求优先覆盖前面的要求。

## 自定义方法

复制模板：

```text
profiles/custom-profile-template.md
```

到：

```text
profiles/local/my-advisor.md
```

然后填写学校要求、导师偏好、禁用表达、输出格式和风险重点。
