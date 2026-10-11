
## quickly start :eyes:

```bash
# 1. Fork this repo, then clone
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
cd YOUR_REPO

# 2. Install XcodeGen (once)
brew install xcodegen

# 3. Generate Xcode project
xcodegen generate

# 4. Open & run
open HelloWorld.xcodeproj
```

## whats inside???!

- SwiftUI "Hello World" app
- Launch screen + all app icon sizes (though its from another app i created [yet not published])
- XcodeGen `project.yml` (no checked-in `.xcodeproj`)
- GitHub Actions: builds IPA on push/PR, uploads as artifacts only

## what to do once ur fork/clone

you should first change the following

| Change | File |
|--------|------|
| Bundle ID / App name | `project.yml` |
| App icons | `Assets.xcassets/AppIcon.appiconset/` |
| Accent color | `Assets.xcassets/AccentColor.colorset/` |
| Capabilities | `App.entitlements` |
| iOS version | `project.yml` + `Package.swift` |

After changes: `xcodegen generate`

## CI

- **Push to main** → builds, archives, uploads `HelloWorld-ipa` + `HelloWorld-app` artifacts
- **Pull requests** → same, artifact named `pr-<NUM>-ipa-<VERSION>`
- **No external deploy** — artifacts only, download from Actions tab

## Requirements

- nothing
- you can even use codespaces in order to build swiftui apps, since CI and xcodegen takes care of everything 
---

MIT License