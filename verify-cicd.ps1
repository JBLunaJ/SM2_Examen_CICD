# Script de Verificación Pre-Commit para CI/CD
# Ejecutar antes de hacer push a GitHub

Write-Host "`n" -NoNewline
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  VERIFICACIÓN PRE-COMMIT CI/CD" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "`n"

$errores = 0
$warnings = 0

# 1. Verificar estructura de archivos
Write-Host "[1/7] Verificando estructura de archivos..." -ForegroundColor Yellow

$archivosRequeridos = @(
    "lib\utils\validators.dart",
    "test\validators_test.dart",
    ".github\workflows\ci-pipeline.yml",
    "README.md"
)

foreach ($archivo in $archivosRequeridos) {
    if (Test-Path $archivo) {
        Write-Host "  ✓ $archivo" -ForegroundColor Green
    } else {
        Write-Host "  ✗ $archivo NO ENCONTRADO" -ForegroundColor Red
        $errores++
    }
}

# 2. Ejecutar tests
Write-Host "`n[2/7] Ejecutando tests unitarios..." -ForegroundColor Yellow
$testResult = flutter test 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "  ✓ Todos los tests pasaron" -ForegroundColor Green
    Write-Host "  $testResult" -ForegroundColor Gray
} else {
    Write-Host "  ✗ Tests fallaron" -ForegroundColor Red
    Write-Host "  $testResult" -ForegroundColor Red
    $errores++
}

# 3. Análisis de código
Write-Host "`n[3/7] Analizando calidad de código..." -ForegroundColor Yellow
$analyzeResult = flutter analyze 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "  ✓ Sin problemas de código" -ForegroundColor Green
} else {
    Write-Host "  ⚠ Hay advertencias de análisis" -ForegroundColor Yellow
    Write-Host "  $analyzeResult" -ForegroundColor Yellow
    $warnings++
}

# 4. Verificar que el README está personalizado
Write-Host "`n[4/7] Verificando README personalizado..." -ForegroundColor Yellow
$readmeContent = Get-Content "README.md" -Raw
if ($readmeContent -match "TU_USUARIO" -or $readmeContent -match "\[TU NOMBRE") {
    Write-Host "  ⚠ README contiene placeholders - actualiza con tu información" -ForegroundColor Yellow
    $warnings++
} else {
    Write-Host "  ✓ README personalizado" -ForegroundColor Green
}

# 5. Verificar configuración de Git
Write-Host "`n[5/7] Verificando configuración Git..." -ForegroundColor Yellow
$gitRemote = git remote -v 2>&1
if ($gitRemote -match "SM2_Examen_CICD") {
    Write-Host "  ✓ Repositorio correcto configurado" -ForegroundColor Green
    Write-Host "  $gitRemote" -ForegroundColor Gray
} else {
    Write-Host "  ⚠ El repositorio remoto no está configurado como SM2_Examen_CICD" -ForegroundColor Yellow
    $warnings++
}

# 6. Verificar archivos no trackeados
Write-Host "`n[6/7] Verificando archivos pendientes..." -ForegroundColor Yellow
$gitStatus = git status --short 2>&1
if ($gitStatus) {
    Write-Host "  ℹ Archivos modificados/nuevos:" -ForegroundColor Cyan
    Write-Host "  $gitStatus" -ForegroundColor Gray
} else {
    Write-Host "  ✓ No hay cambios pendientes" -ForegroundColor Green
}

# 7. Verificar workflow YAML
Write-Host "`n[7/7] Verificando workflow CI/CD..." -ForegroundColor Yellow
$workflowContent = Get-Content ".github\workflows\ci-pipeline.yml" -Raw
if ($workflowContent -match "flutter test" -and $workflowContent -match "flutter analyze") {
    Write-Host "  ✓ Workflow configurado correctamente" -ForegroundColor Green
} else {
    Write-Host "  ✗ Workflow incompleto" -ForegroundColor Red
    $errores++
}

# Resumen final
Write-Host "`n" -NoNewline
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "          RESUMEN FINAL" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan

if ($errores -eq 0 -and $warnings -eq 0) {
    Write-Host "`n✅ TODO PERFECTO - Listo para push!" -ForegroundColor Green
    Write-Host "`nPuedes ejecutar:" -ForegroundColor Cyan
    Write-Host "  git add ." -ForegroundColor White
    Write-Host "  git commit -m 'CI/CD Pipeline implementado'" -ForegroundColor White
    Write-Host "  git push -u origin main" -ForegroundColor White
} elseif ($errores -eq 0) {
    Write-Host "`n⚠ HAY $warnings ADVERTENCIAS - Revisa antes de push" -ForegroundColor Yellow
    Write-Host "Puedes continuar, pero considera corregir las advertencias." -ForegroundColor Yellow
} else {
    Write-Host "`n❌ HAY $errores ERRORES - Corrige antes de push" -ForegroundColor Red
    Write-Host "El pipeline fallará si haces push ahora." -ForegroundColor Red
}

Write-Host "`n=====================================" -ForegroundColor Cyan
Write-Host ""
