@echo off
echo ���ڼ��㵱ǰĿ¼��ȫ���ļ��� MD5 ֵ
powershell -Command "Get-ChildItem -Recurse | Where-Object { ! $_.PSIsContainer } | ForEach-Object { $filePath = $_.FullName; $relativePath = $filePath.Substring($PWD.Path.Length + 1); $md5 = (Get-FileHash -Path $filePath -Algorithm MD5).Hash; Write-Output ('{0}' -f $relativePath, $md5) >> MD5.txt;Write-Output ('          --> MD5 : {1}' -f $relativePath, $md5) >> MD5.txt; echo '' >> MD5.txt }"
echo ������ϣ���鿴 MD5.txt
pause