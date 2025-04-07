param([string]$Target)

switch ($Target) {
    "up"         { docker compose up -d --build }
    "down"       { docker compose down }
    "php"        { docker exec -it 815-devkit-php84-1 bash }
    "logs"       { docker compose logs -f }
    "mail-test"  { curl http://localhost:8080/test-mail.php }
    default      {
        Write-Host "`nAvailable commands:"
        Write-Host "  up          → docker compose up -d --build"
        Write-Host "  down        → docker compose down"
        Write-Host "  php         → bash into PHP container"
        Write-Host "  logs        → stream container logs"
        Write-Host "  mail-test   → curl test-mail.php"
    }
}
