# Screen Copy Launcher (Android)

The Screen Copy Launcher launchers [scrcpy](https://github.com/Genymobile/scrcpy) makes it easy for the user to switch between USB and Wi-Fi

## Easy Steps (package manager)
1. Install Scrpy and adb via Chocolatey 

```
1. Run Powershell as admin
2. Run Get-ExecutionPolicy. If it returns Restricted, then run Set-ExecutionPolicy AllSigned or Set-ExecutionPolicy Bypass -Scope Process.
3. Use the following command in an amdin Powershell:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
4. Run:
choco install scrcpy
choco install adb    # if you don't have it yet
5. Download and run script
```

## Steps
1. Download the latest release of [scrcpy](https://github.com/Genymobile/scrcpy) for your OS
2. Make sure adb is installed
3. (optional) change the location of the download to somewhere memorable like C:\applications 
4. Add Scrcpy’s location to the PATH variable
5. Download this script in a convenient place like your home folder
6. Launch the script 
## Notes
USB debugger must be enabled on the phone. Most phones have an about section in the settings. Tapping about 7 times will enable usb debugging or developer options
For the first run, if you haven’t configured the device with Wi-Fi before make sure to run the Wi-Fi option with the phone plugged into USB.

## Roadmap
Add recording, multi-device support, stay awake, turn the screen off and customise file upload location. 
