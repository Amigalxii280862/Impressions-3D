@echo off
start "" "C:\Program Files\Bambu Studio\bambu-studio.exe"
powershell -command ^
"while ($true) { ^
    $p = Get-Process 'bambu-studio' -ErrorAction SilentlyContinue | Select-Object -First 1; ^
    if ($p -ne $null) { ^
        $p.ProcessorAffinity = 0x0000FFFF; ^
        break; ^
    } ^
    Start-Sleep -Milliseconds 300; ^
}"