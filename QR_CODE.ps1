$text = Read-Host "Texte ou URL a transformer en QR code"
if ([string]::IsNullOrWhiteSpace($text)) { exit }

$encoded = [uri]::EscapeDataString($text)
$url = "https://qrenco.de/$encoded"

Write-Host ""
& curl.exe $url
