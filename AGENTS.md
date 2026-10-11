# Overview

## Challenge Response

**"한국 문화 및 대학 생활을 경험하기 위해 한국 대학에 온 국제학생이 인증된 대학생이 주최한 한국 대학 문화 기반 대면 모임에 참여할 수 있도록 하여 한국 대학생 친구와 함께 한국 문화 및 대학생활을 더 깊이 경험할 수 있는 기회를 만들어주자"**

# Git Strategy

Follow rules/GIT.md

#  Design Rules

When implementing UI from Figma, follow: rules/FIGMA.md and use design system tokens and components defined in rules/DESIGN.md

# SwiftUI Rules

When writing, modifying, or reviewing SwiftUI code under `Earthu/`, follow the `swiftui-pro` skill.

- Claude Code: `.claude/skills/swiftui-pro/SKILL.md`
- Codex: `.codex/skills/swiftui-pro/SKILL.md` (symlink to the same directory)

Load its `references/*.md` as the skill directs. Where it conflicts with rules/DESIGN.md, this project's design tokens win.
