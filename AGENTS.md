# AI Agent Development Guide

LFGRegion is a World of Warcraft addon that displays realm-region badges in the Premade Groups interface.

## Workflow

- Use 4-space indentation in Lua.
- Keep realm mappings in `Regions.lua` and UI hooks in `Main.lua`.
- Update `CHANGELOG.md` and the version in `LFGRegion.toc` for releases.
- Do not run `git add`, `git commit`, `git push`, or `git tag`; the user owns Git operations.
- Test both Find a Group search rows and Start a Group applicant rows in game.

## Versioning

Use Semantic Versioning. Feature releases increment the minor version and fixes increment the patch version.
