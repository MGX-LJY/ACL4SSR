@echo off
cd /d "D:\GAME\GitHub\clash\ACL4SSR"
echo Pulling changes from remote repository...
git pull
echo Pushing local changes to remote repository...
git add .
git commit -m "Sync local and remote repositories"
git push
echo Sync complete. Press any key to exit.
pause >nul
