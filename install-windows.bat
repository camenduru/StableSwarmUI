@echo off

cd "%~dp0"

if exist StableSwarmUI (
    echo "StableSwarmUI already installed in this folder. If this is incorrect, delete the 'StableSwarmUI' folder and try again."
    pause
    exit
)

winget install Microsoft.DotNet.SDK.7 --accept-source-agreements --accept-package-agreements
winget install --id Git.Git -e --source winget --accept-source-agreements --accept-package-agreements

git clone https://github.com/Stability-AI/StableSwarmUI
cd StableSwarmUI

.\make-shortcut.bat

.\launch-windows.bat --launch_mode webinstall
