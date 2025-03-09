# Yet another anime game launcher (Yaagl)

## Building on Apple Silicon (M-series) Macs

If you want to build Yaagl yourself on an Apple Silicon Mac, follow these steps to ensure compatibility:

### Prerequisites

1. **Install Node.js and npm**:
   ```bash
   # Install Homebrew if you don't have it
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   
   # Install Node.js
   brew install node
   
   # Verify installation
   node --version
   npm --version
   ```

2. **Install pnpm**:
   ```bash
   npm install -g pnpm
   ```

### Building Steps

1. **Clone the repository**:
   ```bash
   git clone https://github.com/3Shain/yet-another-anime-game-launcher.git
   cd yet-another-anime-game-launcher
   ```

2. **Prepare native ARM version of aria2**:
   ```bash
   # Make the script executable
   chmod +x download-arm-aria2.sh
   
   # Run the script to download native ARM aria2
   ./download-arm-aria2.sh
   ```

3. **Configure the project**:
   ```bash
   # Install dependencies
   pnpm install
   
   # Run configuration script
   ./configure.sh
   
   # Update Neutralino
   pnpm exec neu update
   ```

4. **Build the app**:
   ```bash
   # For Genshin Impact (Global Server)
   YAAGL_CHANNEL_CLIENT=hk4eos node ./build-app.js
   
   # For other games:
   # YAAGL_CHANNEL_CLIENT=hkrpgos node ./build-app.js  # Honkai Star Rail
   # YAAGL_CHANNEL_CLIENT=napos node ./build-app.js    # Zenless Zone Zero
   # YAAGL_CHANNEL_CLIENT=bh3glb node ./build-app.js   # Honkai Impact 3rd
   ```

5. **Install the app**:
   - Copy the resulting `.app` file (e.g., `Yaagl OS.app`) to your `/Applications` folder

### Troubleshooting

If you encounter "Failed to load aria2" errors:
- Make sure you ran the `download-arm-aria2.sh` script before building
- Alternatively, install aria2 via Homebrew: `brew install aria2`

## Current Supported Game Version: 
### GI: 5.3.0+ OS/CN **
### HSR: 3.1.0 OS/CN
### ZZZ: 1.5.0 OS/CN

#### **: For Apple Silicon users: Sonoma 14.4 is required

## For Linux users
[Anime Games Launcher](https://github.com/an-anime-team/anime-games-launcher) is a universal linux launcher for anime games

<!-- ## Policy

Please don't link to this repository. If you really want to share it with people, just tell the project name __Yaagl__ and where to find (Github!) but __don't share/disclose the link__ unless it's a private message.

Do __not__ provide any forms of tutorial for _how to use Yaagl_ on public channels. (If you really want to do that, ask the project owner for permission first.)

Do __not__ mention the real name of the game or the game company, in code commits, issues, pr or dicussions. Use _The Anime Game_ or _The Anime Company_ instead.

Just follow these, or share and ruin this project for all other macOS (including Linux as well) players. -->

<!-- ### Hall of Shame

This is a list of people/organization violating Yaagl policies -->

## Is it safe?

Use it at your own risk. Or enjoying it with a new f2p account.

## Support

[Our Discord server](https://discord.gg/HrV52MgSC2) is the **ONLY** place providing support if you have any issue just using this application. 

**DON'T FILE AN ISSUE** unless it's a technical problem coming with a clear root cause. 

> Simply put _My game doesn't launch_ or _I can't login_ without telling any technical detail is not acceptable, please go to the Discord server instead of abusing Github Issues

**DON'T ASK FOR SUPPORT IN OTHER COMMUNITY**, especially the official one.

## Install

- Go to [Release](https://github.com/3Shain/yet-another-anime-game-launcher/releases/latest) and download the latest version.

- Uncompress and copy the resulting application to your `/Applications` folder. (Do not open the application from Downloads folder).

- Also make sure your game files aren't stored inside `/Applications`, use something inside your home folder instead, e.g `Games/GI`.
<!-- 
## Development (Outdated)

### Setup
```sh
git clone https://github.com/3Shain/yet-another-anime-game-launcher
cd yet-another-anime-game-launcher
pnpm install
./configure.sh
pnpm exec neu update
```


### Run
```sh
# CN
pnpm start
# Oversea
pnpm run start-hk4eos
```

### Build
```sh
node ./build-app.js
``` -->

## Uninstall (completely)
1. Drag app to the bin
2. Delete folder `~/Library/Application Support/Yaagl` or `~/Library/Application Support/Yaagl OS` if you are using oversea version. (For HSR and ZZZ the name of folder is slightly different)

## Related projects

* Custom `neutralinojs` binary from [3Shain/neutralinojs](https://github.com/3Shain/neutralinojs)
* [DXVK-macOS](https://github.com/Gcenx/DXVK-macOS)
* [MoltenVK](https://github.com/KhronosGroup/MoltenVK)

## Special thanks
* An Anime Team
* Krock, the game running on macOS can not come true without his patch (you can find the link to his work in this repository, while you have to make a little effort ;) )

* mkrsym1, tackled IMO the most challenging AC component. It's a really remarkable and mind-blowing achievement.
