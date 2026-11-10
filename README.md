# Flash Cards

Learn French words with flip cards. Each card flips to the English meaning after 3 seconds. Press ✅ if you knew it (it's removed from your deck — progress is saved), ❌ to see another.

Built with Python while learning (part of my [PythonProject](https://github.com/kunal-dangi/PythonProject) 100-days journey).



## Download (macOS)

Grab the **.dmg** from the [latest release](https://github.com/kunal-dangi/flash-cards/releases/latest), open it, and drag **Flash Cards** into Applications.

The app isn't notarized by Apple, so the first launch will be blocked. Either right-click the app → **Open**, or run:

```bash
xattr -cr "/Applications/Flash Cards.app"
```

Built for Apple Silicon (arm64) Macs.

## Run from source

```bash
pip install -r requirements.txt
python3 main.py
```

## Build the DMG yourself

```bash
pip install pyinstaller -r requirements.txt
./build.sh
```
