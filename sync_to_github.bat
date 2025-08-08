@echo off
cd /d "%~dp0"

echo.
echo 🔄 Syncing mx_content to GitHub...
echo.

git add .
git commit -m "Auto-sync on %date% at %time%" >nul 2>&1

echo ✅ Committing done. Now pushing...
git push origin main

echo.
echo ✅ Done syncing!
pause
