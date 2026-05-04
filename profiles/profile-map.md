# Profile 地图

## 设计思路

本项目的目标用户不是某一个单独场景，而是长期处在“横向项目 -> 硕士论文”转换压力下的研究生。

因此 profile 分两类：

1. 宽场景 profile：描述学生所在课题组、项目类型和毕业目标。
2. 细场景 profile：处理开题、答辩、盲审等具体阶段。

## 宽场景 profile

优先使用这些：

| Profile | 适用人群 |
| --- | --- |
| `horizontal-lab-default.md` | 课题组长期做横向项目的研究生 |
| `engineering-heavy.md` | 工程系统、平台开发、后台系统为主 |
| `algorithm-application-bridge.md` | 有算法/AI，但主要是应用落地 |
| `robotics-intelligent-system.md` | 机器人、智能系统、具身智能、控制与调度 |
| `enterprise-confidential.md` | 企业合作、数据保密、项目脱敏 |
| `graduation-first.md` | 目标是稳妥毕业、降低开题/答辩风险 |

## 细场景 profile

按需叠加：

| Profile | 适用场景 |
| --- | --- |
| `advisor-strict.md` | 导师重证据、经常追问 |
| `proposal-rescue.md` | 开题救火 |
| `defense-compressed.md` | 答辩 PPT 和讲稿 |
| `blind-review-safe.md` | 盲审和论文初稿降风险 |
| `default-conservative.md` | 默认保守口径 |

## 推荐组合

### 课题组全是横向项目

读取：

1. `horizontal-lab-default.md`
2. `graduation-first.md`
3. `CUSTOMIZE.md`

### 纯工程系统项目

读取：

1. `horizontal-lab-default.md`
2. `engineering-heavy.md`
3. `CUSTOMIZE.md`

### 有算法但不是纯算法论文

读取：

1. `horizontal-lab-default.md`
2. `algorithm-application-bridge.md`
3. `CUSTOMIZE.md`

### 企业合作涉密项目

读取：

1. `horizontal-lab-default.md`
2. `enterprise-confidential.md`
3. `CUSTOMIZE.md`

### 机器人或智能系统项目

读取：

1. `horizontal-lab-default.md`
2. `robotics-intelligent-system.md`
3. `CUSTOMIZE.md`

### 快毕业救火

读取：

1. `graduation-first.md`
2. 对应项目类型 profile
3. `CUSTOMIZE.md`
