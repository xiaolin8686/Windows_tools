@echo off
echo 正在计算当前目录下全部文件的 MD5 值
powershell -Command "Get-ChildItem -Recurse | Where-Object { ! $_.PSIsContainer } | ForEach-Object { $filePath = $_.FullName; $relativePath = $filePath.Substring($PWD.Path.Length + 1); $md5 = (Get-FileHash -Path $filePath -Algorithm MD5).Hash; Write-Output ('{0}' -f $relativePath, $md5) >> MD5.txt;Write-Output ('          --> MD5 : {1}' -f $relativePath, $md5) >> MD5.txt; echo '' >> MD5.txt }"
echo 计算完毕，请查看 MD5.txt
pause