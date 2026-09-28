$ErrorActionPreference = 'SilentlyContinue'
$oldFg = $Host.UI.RawUI.ForegroundColor
$oldBg = $Host.UI.RawUI.BackgroundColor

try {
    $Host.UI.RawUI.ForegroundColor = 'Green'
    $Host.UI.RawUI.BackgroundColor = 'Black'
    Clear-Host

    $chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ@#$%&*+-<>[]{}'
    Write-Host "MATRIX LOCAL - Ctrl+C pour arreter" -ForegroundColor Green
    Start-Sleep -Milliseconds 500

    while ($true) {
        $width = [Math]::Max(20, $Host.UI.RawUI.WindowSize.Width - 1)
        $sb = New-Object System.Text.StringBuilder

        for ($i = 0; $i -lt $width; $i++) {
            $roll = Get-Random -Minimum 0 -Maximum 100
            if ($roll -lt 36) {
                $null = $sb.Append($chars[(Get-Random -Minimum 0 -Maximum $chars.Length)])
            } elseif ($roll -lt 44) {
                $null = $sb.Append(' ')
            } else {
                $null = $sb.Append(' ')
            }
        }

        $shade = Get-Random -Minimum 0 -Maximum 10
        if ($shade -lt 2) {
            Write-Host $sb.ToString() -ForegroundColor White
        } elseif ($shade -lt 5) {
            Write-Host $sb.ToString() -ForegroundColor Green
        } else {
            Write-Host $sb.ToString() -ForegroundColor DarkGreen
        }

        Start-Sleep -Milliseconds 38
    }
}
finally {
    $Host.UI.RawUI.ForegroundColor = $oldFg
    $Host.UI.RawUI.BackgroundColor = $oldBg
}
