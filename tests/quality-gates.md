# Quality Gates

Use this checklist before releasing a new version.

## Skill Structure

- [ ] `SKILL.md` exists.
- [ ] `SKILL.md` starts with YAML frontmatter.
- [ ] `name` is `horizontal-thesis-packaging`.
- [ ] `description` is non-empty and under 1024 chars.
- [ ] `SKILL.md` is under 500 lines.
- [ ] Detailed content lives in `references/`, `templates/`, `examples/`, `profiles/`, or `docs/`.

## Open Source Readiness

- [ ] `README.md` explains quick and advanced usage.
- [ ] `CUSTOMIZE.md` supports one-file customization.
- [ ] The default flow is zero-config: users can paste one project before filling any personal profile.
- [ ] First-run onboarding exists for optional long-term personalization, not as a blocker before project assessment.
- [ ] Local memory files are ignored by git.
- [ ] `profiles/*.md` provides reusable presets.
- [ ] `profiles/local/README.md` explains private profile usage.
- [ ] `.gitignore` ignores private profile files and document artifacts.
- [ ] No sensitive company, advisor, student, or school private data is included.

## Thesis Packaging Quality

- [ ] The skill first assesses whether a project is suitable for thesis conversion before packaging it.
- [ ] The skill has a single-project minimum intake template for first-time users.
- [ ] The suitability assessment includes an 8-dimension scoring table before A/B/C/D conclusions.
- [ ] The suitability assessment labels confidence as high, medium, or low.
- [ ] The skill can return A/B/C/D suitability conclusions and alternative routes for unsuitable projects.
- [ ] The skill has common anti-patterns and safer rewrite examples.
- [ ] The skill distinguishes engineering systems, algorithm applications, AI systems, robotics systems, and confidential enterprise projects.
- [ ] The skill has a claim-evidence workflow.
- [ ] The skill has copy-paste prompt cards for quick first use.
- [ ] The skill gives proactive next-step guidance after major answers without auto-executing the next task.
- [ ] The skill can generate a thesis conversion handoff brief for downstream writing skills.
- [ ] The downstream handoff brief includes separate prompts for proposal, thesis body, and defense PPT.
- [ ] The skill assesses downstream writing route feasibility after master's thesis suitability, including master's thesis, EI, CCF-C, CCF-B, SCI, CCF-A/CVPR, and Nature-style routes.
- [ ] The skill labels downstream routes as relative feasibility, not acceptance or publication probability guarantees.
- [ ] The skill treats Nature/Nature-style as a high-difficulty route that is usually not recommended for ordinary master's horizontal projects.
- [ ] The skill has defense Q&A support.
- [ ] The skill has an advisor challenge simulator for likely advisor/defense questions.
- [ ] The skill has proposal, midterm, thesis chapter, defense PPT, and advisor meeting templates.
- [ ] The skill has end-to-end examples from messy project input to thesis output.
- [ ] The skill has concise demo input/output pairs for new users.
- [ ] The skill has golden test outputs for representative suitable and unsuitable projects.
- [ ] The skill has memory update templates for session learning and improvement backlog.
- [ ] Memory updates require user confirmation and avoid sensitive project data.

## Safety

- [ ] It forbids fabricated data.
- [ ] It forbids fabricated experiments.
- [ ] It forbids fabricated deployment effects.
- [ ] It warns against over-claiming innovation.
- [ ] It does not force small or unsuitable horizontal projects into complete thesis topics.
- [ ] It supports data desensitization for enterprise projects.
- [ ] It keeps personal memory and advisor preferences out of the public repository.
