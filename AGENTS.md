# AGENTS.md

## Cross-Agent File Layout

- Store skills in `.agents/skills/<name>/SKILL.md`, not `.claude/skills/`.
- Use `AGENTS.md` for agent context. When `CLAUDE.md` exists without an `AGENTS.md` in the same directory, rename it to `AGENTS.md`. If both exist, merge their instructions into `AGENTS.md` without losing distinct guidance before removing `CLAUDE.md`.
- Update references to migrated skill paths and renamed context files.

## GitHub Raw File URLs

When fetching raw file content from GitHub repos, always use `raw.githubusercontent.com` (CORS-friendly):

https://raw.githubusercontent.com/{owner}/{repo}/HEAD/{path}

This format works for all use cases (browser fetch with CORS, curl/shell scripts, direct browser links).

Do NOT use:

- `https://github.com/{owner}/{repo}/blob/HEAD/{path}?raw=1` (no CORS headers, breaks browser fetch)
- `https://api.github.com/repos/{owner}/{repo}/contents/{path}` (returns JSON, not raw content)

## Git / PR Merge Policy

- Always use **squash and merge** when merging PRs. Never use merge commits or rebase merges. This keeps the git history clean with one commit per PR.
- You may `git merge origin/main` or `git merge origin/master` locally to sync branches, but PR merges must always be squash merges.
