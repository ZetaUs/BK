@echo off
echo [1/4] 正在拉取远程更新...
E:\ZTX\Git\bin\git.exe pull origin main
if errorlevel 1 (
    echo 拉取失败，尝试合并...
    E:\ZTX\Git\bin\git.exe fetch origin
    E:\ZTX\Git\bin\git.exe merge origin/main --allow-unrelated-histories
    if errorlevel 1 (
        echo 发现冲突，请手动解决后运行此脚本
        pause
        exit /b 1
    )
)

echo [2/4] 正在添加文件...
E:\ZTX\Git\bin\git.exe add .

echo [3/4] 正在提交...
E:\ZTX\Git\bin\git.exe commit -m "update"

echo [4/4] 正在推送到远程...
E:\ZTX\Git\bin\git.exe push -u origin main

if errorlevel 1 (
    echo 推送失败！
    pause
    exit /b 1
)

echo.
echo 完成！代码已成功同步到 GitHub
pause