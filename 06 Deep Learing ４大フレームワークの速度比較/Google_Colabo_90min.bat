@echo off

setlocal ENABLEDELAYEDEXPANSION
	for /l %%i in (1, 1, 24) do (
	    echo [%%i] !date! !time!
	    timeout /t 1800
	    taskkill /F /IM chrome.exe /T > nul
	    timeout 3
	    start https://colab.research.google.com/drive/1cj13FOCtNzyumX84wqgGIYJqFtfIx7vm#scrollTo=gm-kho7s8Y5k
	)
endlocal
