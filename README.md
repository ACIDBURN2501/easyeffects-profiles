# EasyEffects Output Profiles

This repository contains a personal collection of [EasyEffects](https://github.com/wwmm/easyeffects) output profiles for various headphones, IEMs, and monitoring setups. Backed up here for version control and portability.

## 🎧 Profiles

Each file in `output/` is a JSON profile exported directly from EasyEffects via:

```bash
~/.config/easyeffects/output/
```

### Available Profiles


- **EPZ Q1 Pro**
  Balanced Harman-style tuning for this budget planar IEM. Minor bass shelf boost with midrange and upper treble smoothing for fatigue-free listening.

- **FAAEAL Iris 2.0**
  Tailored to bring a more spacious sound signature to this warm, mid-focused earbud. Harman-style EQ applied to elevate treble clarity and sub-bass extension.

- **FAAEAL Rosemary**
  Warm IEMs adjusted for clarity — profile enhances vocal presence and tightens bass, with subtle treble gain for sparkle without harshness.

- **Sennheiser HD 599**
  Open-back headphones with laid-back mids and rolled-off treble — this profile adds sub-bass and upper treble correction for a more neutral Harman-like curve.

- **Koss Porta Pro**
  Classic warm bass-heavy signature — EQ compensates with a reduction in mid-bass and a gentle lift in mids/treble to align with Harman tonality.

- **Koss Porta Pro (Yaxi)**
  Same as above but tuned for Yaxi pads, which alter the frequency response; adjustments focus on treble smoothness and slightly deeper sub-bass.

- **Tanchjim Zero**
  Already quite close to Harman out of the box — minor EQ adjustments smooth the upper mids and correct for slight 8–10 kHz brightness depending on tips.

- **Virtuoso RGB**
  Gaming headset EQ’d for a more reference-style tonality — midrange cleaned up for dialogue clarity, bass tamed slightly, and treble balanced to reduce fatigue during long sessions.


## Usage

1. Clone this repo:

```sh
git clone https://github.com/yourusername/easyeffects-profiles.git
```

2. Copy desired profile(s) to your EasyEffects config folder

```sh
cp output/*.json ~/.config/easyeffects/output/
```
3. Open EasyEffects and load the profile via the Output section.

## Tools

### Backup Script

Backs up all output profiles from your local EasyEffects config into the repository:

```bash
./tools/backup-profiles.sh
```

This will:

- Copy updated .json profiles from ~/.config/easyeffects/output/ into output/
- Commit and push changes to GitHub (if any)

You can run it manually or add to a cron job/systemd timer for automation.

### Restore Script

Restores all profiles from the repo back into EasyEffects:

```bash
./tools/restore-profiles.sh
```

This will:

- Copy profiles from output/ into ~/.config/easyeffects/output/

    ⚠️ Make sure to edit the path variables at the top of each script to match your system.
    
    Note that you might need to make the script executable on your system:

    ```bash
    chmod +x backup-profiles.sh
    ```
