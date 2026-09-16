
rmdir /S /Q build

for /f "delims=" %%i in ('where python') do set PYTHON_PATH=%%~dpi

pyinstaller --onefile --strip --noupx --distpath . --name=src_joseph_w3_GUI ^
  --add-data "%PYTHON_PATH%\Lib\site-packages\tkinterdnd2;tkinterdnd2" ^
  --exclude-module matplotlib ^
  --exclude-module scipy ^
  --exclude-module numpy ^
  --exclude-module pandas ^
  --exclude-module PyQt5 ^
  --exclude-module PySide2 ^
  --exclude-module PySide6 ^
  --exclude-module PyQt6 ^
  --exclude-module IPython ^
  --exclude-module jupyter ^
  --exclude-module tkinterdnd2 ^
  --exclude-module cv2 ^
  --exclude-module sklearn ^
  --exclude-module torch ^
  --exclude-module tensorflow ^
  --exclude-module seaborn ^
  --exclude-module bokeh ^
  --exclude-module flask ^
  --exclude-module django ^
  --exclude-module sqlalchemy ^
  --exclude-module requests ^
  --exclude-module urllib3 ^
  --exclude-module http ^
  --exclude-module asyncio ^
  --exclude-module websockets ^
  --exclude-module zmq ^
  --exclude-module win32com ^
  --exclude-module win32gui ^
  --exclude-module win32api ^
  --exclude-module win32con ^
  --exclude-module win32process ^
  --exclude-module win32event ^
  --exclude-module win32clipboard ^
  --exclude-module win32file ^
  --exclude-module win32pipe ^
  --exclude-module win32security ^
  --exclude-module win32service ^
  --exclude-module win32serviceutil ^
  --exclude-module win32timezone ^
  --exclude-module win32ts ^
  --exclude-module win32wnet ^
  --exclude-module win32net ^
  --exclude-module win32netcon ^
  --exclude-module win32print ^
  --exclude-module win32profile ^
  --exclude-module win32ras ^
  --exclude-module win32inet ^
  --exclude-module win32inetcon ^
  --exclude-module win32pdh ^
  --exclude-module win32pdhquery ^
  --exclude-module win32pdhutil ^
  --exclude-module win32evtlog ^
  --exclude-module win32evtlogutil ^
  --exclude-module win32comext ^
  --icon="src_joseph_w3_GUI.ico" --add-data "src_joseph_w3_GUI.png;." %1

del /Q *.spec
rmdir /S /Q build
