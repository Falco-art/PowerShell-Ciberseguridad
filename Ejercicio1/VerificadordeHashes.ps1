param (
    [Parameter(Mandatory=$true)]
    [string]$RutadelArchivo
)

if (Test-Path $RutadelArchivo) {
    Write-Host "Calculando Hashes para el archivo..." -ForegroundColor Cyan
    Get-FileHash -Path $RutadelArchivo -Algorithm SHA256
    Get-FileHash -Path $RutadelArchivo -Algorithm MD5
} else {
    Write-Host "Error: El archivo no existe en la ruta especificada." -ForegroundColor Red
}
# Editado por Franco Benitez el 13 de marzo de 2026
