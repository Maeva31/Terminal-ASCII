$city = Read-Host "Ville (ex: Toulouse, Paris, Bordeaux)"
if ([string]::IsNullOrWhiteSpace($city)) { exit }

$encoded = [uri]::EscapeDataString($city)
$url = "https://wttr.in/$encoded`?lang=fr"

Write-Host ""
Write-Host "Meteo pour $city" -ForegroundColor Green
Write-Host ""
& curl.exe $url
