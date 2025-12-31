Clear.bat
cp main.py launcher_win.py
python -m PyInstaller --onefile --windowed --noconsole --icon=unrailed2.ico launcher_win.py
python -m PyInstaller --onefile --windowed --noconsole --icon=unrailed2.ico installer_updater.py
echo 1.0.0 > version_win_launcher.txt