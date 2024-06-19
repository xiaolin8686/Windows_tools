@echo off
echo 正在计算当前目录下全部文件的 SHA256 值
powershell -Command "Get-ChildItem -Recurse | Where-Object { ! $_.PSIsContainer } | ForEach-Object { $filePath = $_.FullName; $relativePath = $filePath.Substring($PWD.Path.Length + 1); $SHA256 = (Get-FileHash -Path $filePath -Algorithm SHA256).Hash; Write-Output ('{0}' -f $relativePath, $SHA256) >> SHA256.txt;Write-Output ('          --> SHA256 : {1}' -f $relativePath, $SHA256) >> SHA256.txt; echo '' >> SHA256.txt }"
echo 计算完毕，请查看 SHA256.txt
pause