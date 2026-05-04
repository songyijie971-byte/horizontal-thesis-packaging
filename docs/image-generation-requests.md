# 图片生成需求清单

> 本文件列出 README 中需要的图片资源，供 ChatGPT / DALL-E / Midjourney 等工具生成。
> 所有图片风格统一为：**专业、简洁、学术科技感**，不要像培训广告或论文代写广告。

---

## 图片 1：README 顶部 Banner

- **文件名**：`banner.png`
- **保存路径**：`./assets/banner.png`
- **尺寸**：1280 x 320 px
- **用途**：README 顶部主视觉 banner，第一眼传达项目定位
- **放在 README 的位置**：最顶部，居中显示
- **画面风格**：
  - 深色背景（深蓝或深灰渐变），科技感
  - 左侧或中央有一个简化的流程图/转化箭头图标
  - 整体干净、学术感，不要花哨
  - 可以有淡淡的网格线或节点连线作为背景装饰
- **需要出现的文字**：
  - 主标题：`Horizontal Thesis Packaging`
  - 副标题：`横向项目 → 硕士论文主线`
- **不要出现的内容**：
  - 任何真实学校名称、校徽
  - 任何真实导师姓名
  - 任何真实企业 logo
  - "包过""代写""保证毕业"等文字
  - 人脸、真人照片
  - 论文代写广告风格的元素
- **给 ChatGPT 的图片生成提示词**：

```
A professional banner image for a GitHub repository README, 1280x320 pixels. Dark blue gradient background with subtle grid lines and connected node dots as decoration. On the left side, a minimalist flowchart icon showing a transformation arrow from a code/terminal symbol to a graduation cap symbol. Clean, academic, tech-style aesthetic. Include the text "Horizontal Thesis Packaging" as the main title in white, and "横向项目 → 硕士论文主线" as a subtitle in light gray below. No real university logos, no real company logos, no human faces. Style: professional, minimal, academic technology feel. Not a marketing ad, not an education service ad.
```

- **alt 文本**：`Horizontal Thesis Packaging - 横向项目转硕士论文诊断系统`

---

## 图片 2：论文转化工作流图

- **文件名**：`workflow.png`
- **保存路径**：`./assets/workflow.png`
- **尺寸**：800 x 500 px
- **用途**：展示从项目材料到论文蓝图的完整转化流程
- **放在 README 的位置**：「它解决什么问题」部分，替换或补充现有的纯文本流程图
- **画面风格**：
  - 浅色背景（白色或浅灰），适合 GitHub 深色/浅色主题
  - 垂直流程图，4 个节点 + 箭头连接
  - 每个节点用圆角矩形，带图标
  - 配色使用蓝紫色系（与 badge 风格统一）
- **需要出现的文字**：
  - 节点 1：`项目材料`（带文档图标）
  - 节点 2：`A/B/C/D 适配度判断`（带评分/仪表盘图标）
  - 节点 3：`论文主线 + 章节映射 + 证据台账`（带结构/列表图标）
  - 节点 4：`实验补全 + 答辩风险 + 下游路线评级`（带检查/路线图标）
- **不要出现的内容**：
  - 任何真实项目名称
  - 过多装饰性元素
  - 3D 效果或拟物风格
- **给 ChatGPT 的图片生成提示词**：

```
A clean vertical workflow diagram on a white/light gray background, 800x500 pixels. Four rounded rectangle nodes connected by downward arrows, in a blue-purple color scheme. Node 1 (top): "项目材料" with a document icon. Node 2: "A/B/C/D 适配度判断" with a dashboard/gauge icon. Node 3: "论文主线 + 章节映射 + 证据台账" with a structured list icon. Node 4 (bottom): "实验补全 + 答辩风险 + 下游路线评级" with a checklist/route icon. Minimalist flat design, academic tech style. No 3D effects, no real project names, no decorative elements beyond the flow structure.
```

- **alt 文本**：`论文转化工作流：从项目材料到论文蓝图的四步流程`

---

## 图片 3：A/B/C/D 项目适配度判断卡片

- **文件名**：`abcd-rating.png`
- **保存路径**：`./assets/abcd-rating.png`
- **尺寸**：800 x 400 px
- **用途**：直观展示四类项目适配度等级，替代纯文字说明
- **放在 README 的位置**：「先判生死：A/B/C/D 论文适配度」部分
- **画面风格**：
  - 四张横向排列的卡片
  - 每张卡片用不同颜色区分：
    - A 类：绿色（适合）
    - B 类：蓝色（可转但需补证）
    - C 类：橙色（不建议单独转）
    - D 类：红色（不建议转）
  - 卡片内包含等级字母、一句话描述
  - 浅色背景，卡片有轻微阴影
- **需要出现的文字**：
  - A 类卡片：`A · 适合单独转论文`
  - B 类卡片：`B · 可以转，但必须补证据`
  - C 类卡片：`C · 不建议单独转，先降级为模块/案例`
  - D 类卡片：`D · 不建议转论文，建议换主线或重找证据`
- **不要出现的内容**：
  - 任何真实项目案例
  - 百分比或具体分数（避免暗示"保证"）
  - 过于乐观的表述
- **给 ChatGPT 的图片生成提示词**：

```
Four horizontal cards arranged side by side on a light background, 800x400 pixels. Each card represents a project suitability rating level. Card A (green): "A · 适合单独转论文". Card B (blue): "B · 可以转，但必须补证据". Card C (orange): "C · 不建议单独转，先降级为模块/案例". Card D (red): "D · 不建议转论文，建议换主线或重找证据". Each card has a large letter grade, a brief description, and a subtle shadow. Flat design, academic tech style. No real project names, no percentage scores, no overly optimistic language. Clean and professional.
```

- **alt 文本**：`A/B/C/D 四级论文适配度判断卡片`

---

## 图片 4：证据台账示意图（可选）

- **文件名**：`evidence-ledger.png`
- **保存路径**：`./assets/evidence-ledger.png`
- **尺寸**：800 x 350 px
- **用途**：直观展示"每个结论都要有来源"的核心理念
- **放在 README 的位置**：「证据台账：每个结论都要有来源」部分
- **画面风格**：
  - 表格样式，3-4 行示例数据
  - 列头：论文 claim | 证据来源 | 当前状态 | 风险
  - 用颜色标注状态：已有（绿）、缺失（红）、部分（黄）
  - 浅色背景，表格线条清晰
- **需要出现的文字**：
  - 列头和 2-3 行示例（使用 README 中已有的示例数据，但脱敏）
  - 底部一行小字：`没有证据的结论，不建议写成论文结论。`
- **不要出现的内容**：
  - 真实企业名称
  - 真实系统名称
  - 真实导师评价
- **给 ChatGPT 的图片生成提示词**：

```
A clean evidence ledger table diagram on a light background, 800x350 pixels. Four columns: "论文 claim", "证据来源", "当前状态", "风险". Three example rows with color-coded status: green for "已有", yellow for "部分已有", red for "缺失". At the bottom, a small note: "没有证据的结论，不建议写成论文结论。" Flat design, academic tech style. Table with clear borders and subtle row alternating colors. No real university or company names. Professional and minimal.
```

- **alt 文本**：`证据台账示例：论文结论与证据来源的对应关系`

---

## 生成优先级

| 优先级 | 图片 | 理由 |
| --- | --- | --- |
| P0 必须 | Banner | README 第一眼印象 |
| P1 重要 | 工作流图 | 替代纯文本，提升可读性 |
| P1 重要 | A/B/C/D 卡片 | 核心概念可视化 |
| P2 可选 | 证据台账 | 锦上添花，表格已够用 |

---

## 注意事项

- 所有图片使用本地引用 `./assets/xxx.png`，不用外部 URL
- 生成后将图片保存到 `assets/` 目录
- 图片风格保持统一：深蓝/紫色系、扁平化、学术科技感
- 不要在图片中出现任何真实个人信息
- 不要在图片中出现"保证""包过""代写"等敏感文字
