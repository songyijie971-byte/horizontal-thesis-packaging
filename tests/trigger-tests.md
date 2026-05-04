# Trigger Tests

Use these prompts to verify whether the skill should activate.

## Should Trigger

1. 我有个横向项目，怎么包装成硕士论文？
2. 这个小横向适不适合单独写成硕士论文？
3. 请先判断这个项目能不能转论文，不能的话给替代路线。
4. 我们课题组都是企业项目，毕业论文怎么写才不像项目说明书？
5. 老师让我做一个企业合作系统，后面开题报告怎么写？
6. 这个后台管理系统主要是工程开发，怎么体现研究内容？
7. 我的机器人巡检项目怎么设计实验？
8. 帮我把这个 AI 应用系统整理成答辩 PPT 大纲。
9. 甲方项目数据不能公开，论文里怎么脱敏表达？
10. 我只有系统截图和代码，怎么补第五章实验？
11. 导师说我这个题目太工程，帮我重构成硕士论文选题。
12. 按 CUSTOMIZE.md 的配置帮我包装这个项目。
13. 我第一次使用这个 skill，先帮我判断这个项目能不能转论文。
14. 这次结果不错，下次记住这个导师口径。
15. 生成一个论文转化交接包，后续我要交给 sciskill 继续写。
16. 这个项目后续更适合交给 EI、CCF-C、CCF-B、SCI、CCF-A、CVPR 还是 Nature 方向的 skill？
17. 我只有很少项目材料，先问我最少的问题判断能不能转论文。
18. 先判断能不能转硕士论文，再判断后续 EI、CCF-B、SCI、Nature 哪条路线概率最大。
19. 给我一组可以直接复制的提示词，让我第一次使用这个 skill。
20. 帮我模拟导师会怎么追问这个横向项目能不能写论文。
21. 这个判断你有多大把握？请标注判断置信度。
22. 每次回答后请主动告诉我下一步该做什么。

## Should Not Trigger

1. 帮我写一个 React 页面。
2. 帮我修复 Git push 报错。
3. 帮我润色小红书文案。
4. 帮我生成一张图片。
5. 帮我查 OpenAI API 文档。
6. 帮我写一个 SQL 查询。
7. 这个 Python 报错怎么修？
8. 帮我做一个商业计划书。

## Profile Routing Tests

| Prompt | Expected profile |
| --- | --- |
| 我们课题组全是横向项目，项目多但论文不知道怎么写 | `profiles/horizontal-lab-default.md` |
| 这个系统主要是后台、数据库和接口，没有算法 | `profiles/engineering-heavy.md` |
| 我有模型和 RAG，但主要是企业系统落地 | `profiles/algorithm-application-bridge.md` |
| 这是移动机器人巡检项目 | `profiles/robotics-intelligent-system.md` |
| 企业数据不能公开，论文怎么写 | `profiles/enterprise-confidential.md` |
| 时间很紧，我只想稳妥毕业 | `profiles/graduation-first.md` |
| 导师很严，经常追问证据 | `profiles/advisor-strict.md` |
| 我明天开题，老师说太工程 | `profiles/proposal-rescue.md` |
| 生成 10 分钟答辩讲稿 | `profiles/defense-compressed.md` |
| 盲审前帮我降风险 | `profiles/blind-review-safe.md` |
| 第一次使用，项目材料很少 | `templates/single-project-intake-template.md` |
| 帮我建立长期配置 | `templates/first-run-onboarding.md` |
| 本次结果不错，下次记住这个导师口径 | `templates/memory-update-template.md` |

## Expected Behavior

- The model should not invent data, experiments, citations, or deployment results.
- The model should assess suitability first and should not force unsuitable projects into thesis topics.
- The model should classify projects as A/B/C/D or provide an equivalent suitability conclusion.
- The model should use an 8-dimension scoring table when judging one project's thesis suitability.
- The model should label suitability and route confidence as high, medium, or low.
- The model should use the single-project intake template when the user's first project description is too sparse.
- The model should ask for missing materials only when needed, but should still provide a safe draft.
- The model should map engineering modules to thesis chapters.
- The model should identify the user's personal contribution.
- The model should include evidence and risk checks in complete packaging outputs.
- The model should end major answers with 2-4 proactive next-step options, such as supplement evidence, generate handoff, simulate advisor questions, or set up optional memory.
- The model should include a downstream handoff prompt when the user wants to continue with another paper-writing skill.
- The model should recommend downstream writing routes such as master's thesis, EI, CCF-C, CCF-B, SCI, CCF-A, CVPR, or Nature only as writing directions, not as publication guarantees.
- The model should assess downstream route feasibility only after thesis suitability, and should identify the most feasible route, secondary route, and routes not recommended.
- The model should avoid recommending Nature as the current main route for ordinary master's horizontal projects unless the evidence is extraordinary.
- The model should use anti-pattern rewrites when the output sounds like a project manual, overclaims innovation, or lacks evidence.
- The model should provide advisor challenge questions when asked to simulate advisor or defense pressure.
- If no meaningful customization exists, the model should still solve the current project first using the single-project intake template when needed.
- The model should run first-run onboarding only when the user asks for long-term personalization or confirms memory setup after an output.
- After major outputs, the model should suggest memory updates without committing private data to the public repo.
