Write-Host "Auditando miembros del grupo de Administradores locales..." -ForegroundColor Yellow

try {
    Get-LocalGroupMember -Group "Administrators" | Select-Object Name, PrincipalSource, ObjectClass
    Write-Host "Auditoría completada." -ForegroundColor Green
} catch {
    Write-Host "No se pudo acceder al grupo. Verifica que el nombre sea 'Administrators' o 'Administradores' dependiendo del idioma del OS." -ForegroundColor Red
}
