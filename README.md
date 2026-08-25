# LFG Region

LFG Region adds compact region badges to the World of Warcraft Premade Groups interface. It identifies the realm of each group leader in **Find a Group** and each applicant in **Start a Group**.

## Supported regions

The addon currently supports realms in the Americas game region:

- Oceanic (`OCE`)
- US Pacific (`USP`)
- US Mountain (`USM`)
- US Central (`USC`)
- US East (`USE`)
- Latin America (`LTN`)
- Brazil (`BZL`)

Unknown realms are left unmarked. Other global game regions are not currently supported.

## Installation

Copy the `LFGRegion` folder into:

`World of Warcraft/_retail_/Interface/AddOns/`

Restart World of Warcraft or run `/reload`.

## Commands

- `/lfgr` - show help
- `/lfgr leaders on|off` - toggle badges in Find a Group
- `/lfgr applicants on|off` - toggle badges in Start a Group

Settings are saved account-wide.

## Development Process

1. Create a feature branch:
   ```bash
   git checkout -b TASK-your-feature-name
   ```

2. Make your changes to the code

3. Update [CHANGELOG.md](CHANGELOG.md) with your changes

4. Commit your changes:
   ```bash
   git add .
   git commit -m "Description of changes"
   ```

5. Push your branch:
   ```bash
   git push origin TASK-your-feature-name
   ```

6. Create a Pull Request on GitHub

7. Merge the PR to `main`

### Creating Releases

After merging your changes to `main`:

1. Update version number in [LFGRegion.toc](LFGRegion.toc):
   ```
   ## Version: 1.1.0
   ```

2. Update [CHANGELOG.md](CHANGELOG.md) with version details:
   ```markdown
   ## [1.1.0] - 2026-XX-XX

   ### Added
   - Your new features

   ### Fixed
   - Your bug fixes
   ```

3. Commit the version bump:
   ```bash
   git add LFGRegion.toc CHANGELOG.md
   git commit -m "Release v1.1.0"
   git push origin main
   ```

4. Create and push the release tag:
   ```bash
   git tag v1.1.0
   git push origin v1.1.0
   ```

5. GitHub Actions will automatically:
   - Package the addon
   - Upload to CurseForge
   - Create a GitHub release

### Version Numbering

Follow [Semantic Versioning](https://semver.org/):
- **Major** (X.0.0): Breaking changes, major rewrites
- **Minor** (1.X.0): New features, new season dungeons
- **Patch** (1.0.X): Bug fixes, minor improvements

## Credits

Based on the Premade Regions WeakAura by [0xbs](https://github.com/0xbs).

## License

MIT
