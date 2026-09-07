# Chaos Monkey

A mischievous Codex desktop pet with a backwards cap, hoodie, and banana hammer.

<p align="center">
  <img src="previews/banana-bonk.gif" width="288" alt="Chaos Monkey swinging his banana hammer">
</p>

**[Download v1.0.0](https://github.com/Shchoholiev/codex-chaos-monkey/releases/tag/v1.0.0)** · **[Latest release](https://github.com/Shchoholiev/codex-chaos-monkey/releases/latest)** · **[MIT license](LICENSE)**

Nine animations cover idle, running left and right, waving, jumping, failure,
waiting for input, working, and review. Sixteen head turns let him look around.
His working animation is a banana-hammer bonk.

## Install

### macOS and Linux

```sh
git clone https://github.com/Shchoholiev/codex-chaos-monkey.git
cd codex-chaos-monkey
./install.sh
```

Or download and extract the release ZIP, then run `./install.sh` inside it.
The installer uses `CODEX_HOME` when set, otherwise `~/.codex`. It skips an
identical installation and stops if a different pet already occupies the destination.

### Install manually

Copy the included `root-monkey` folder into your Codex pets directory:

- macOS/Linux: `~/.codex/pets/`
- Windows: `%USERPROFILE%\.codex\pets\`
- Custom Codex home: `$CODEX_HOME/pets/`

Keep `pet.json` and `spritesheet.webp` together inside that folder.

You can also attach the release ZIP to a Codex task and ask:

> Install Chaos Monkey from this ZIP as my custom desktop pet.

### Show the pet

Open **Settings → Pets → Refresh**, choose **Chaos Monkey**, then enter
`/pet` or choose **Wake Pet** from the command menu.
[Official pet instructions](https://learn.chatgpt.com/docs/pets).

To uninstall, remove the `root-monkey` folder from your Codex pets directory.

## Previews

| Idle | Looking around |
| --- | --- |
| ![Idle animation](previews/idle.gif) | ![Sixteen look directions](previews/look-around.gif) |

[See all poses](previews/all-poses.png).

The release also includes a **ProRes 4444 video with transparency** for placing
the banana bonk over your own footage. The video is 192 × 208 pixels and loops
for 0.82 seconds. A GIF preview is available alongside it.

## Format

This is a desktop **v2 pet**: a transparent, lossless WebP sprite sheet measuring
1536 × 2288 pixels, arranged as eight columns and eleven rows of 192 × 208 cells.
The manifest sets `spriteVersionNumber: 2`.

The internal ID remains `root-monkey`; its displayed name is **Chaos Monkey**.
This keeps earlier installations compatible.

For changes, preserve the atlas dimensions, transparency, animation order,
and manifest version. Please include an animated preview with artwork changes.

## License and credits

The artwork, animations, installer, and documentation are available under the
[MIT license](LICENSE). You may use, modify, and redistribute them, including
commercially, with the license notice included.

Created by [Serhii Shchoholiev](https://github.com/Shchoholiev) with Codex and
OpenAI image generation, inspired by chaos engineering.
