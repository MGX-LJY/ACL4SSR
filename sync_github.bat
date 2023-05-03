@echo off
cd /d "D:\GitHub\clash\ACL4SSR"
echo Pulling changes from remote repository...
git pull
echo Pushing local changes to remote repository...
git add .
git commit -m "Sync local and remote repositories"
git push
echo Sync complete. Waiting for 3 seconds before exit...
timeout /t 0.1 /nobreak >nul
