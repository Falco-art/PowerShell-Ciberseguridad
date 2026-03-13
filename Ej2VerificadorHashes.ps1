param (
    [Parameter(Mandatory=$true)]
    [string]$RutaArchivo
)

if (Test-Path $RutaArchivo) {
    Write-Host "Calculando Hashes para el archivo..." -ForegroundColor Cyan
    Get-FileHash -Path $RutaArchivo -Algorithm SHA256
    Get-FileHash -Path $RutaArchivo -Algorithm MD5
} else {
    Write-Host "Error: El archivo no existe en la ruta especificada." -ForegroundColor Red
}
