@echo off
pushd %~dp0
cd ..\\..
call crowdin -b master --identity tools\\crowdin-cli\\crowdin_identity.yml upload sources
call crowdin -b master --identity tools\\crowdin-cli\\crowdin_identity.yml download
git reset
git add -A "ArchiSteamFarm\Localization\*.resx" "ArchiSteamFarm\www\locale\*.json" "WebConfigGenerator\src\locale\*.json"
git commit -m "Translations update"
pause
