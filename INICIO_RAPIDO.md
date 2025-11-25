# 🎯 INICIO RÁPIDO - Examen CI/CD

## ⚡ 3 Pasos Rápidos para Completar el Examen

### 📋 PASO 1: Crear Repositorio (5 minutos)

1. Ve a https://github.com/new
2. Nombre: `SM2_Examen_CICD`
3. Visibilidad: **PUBLIC** ✅ (IMPORTANTE)
4. NO marcar "Initialize with README"
5. Clic en "Create repository"

---

### 🚀 PASO 2: Subir Código (10 minutos)

Copia y pega estos comandos en PowerShell **UNO POR UNO**:

```powershell
# 1. Inicializar Git
git init

# 2. Añadir remoto (REEMPLAZA TU_USUARIO con tu username de GitHub)
git remote add origin https://github.com/TU_USUARIO/SM2_Examen_CICD.git

# 3. Crear rama main
git branch -M main

# 4. Añadir todos los archivos
git add .

# 5. Hacer commit
git commit -m "CI/CD Pipeline implementado - Examen SM2"

# 6. Subir a GitHub
git push -u origin main
```

**Si pide contraseña:** Usa un **Personal Access Token** (no tu contraseña):
- GitHub → Settings → Developer settings → Personal access tokens → Generate new token
- Marca: `repo`
- Copia el token y úsalo como contraseña

---

### ✅ PASO 3: Verificar y Documentar (15 minutos)

#### 3.1. Verificar Pipeline

1. Ve a: `https://github.com/TU_USUARIO/SM2_Examen_CICD/actions`
2. Espera 5-10 minutos a que termine
3. Debe aparecer **✓ verde**

#### 3.2. Actualizar README

1. Abre `README.md`
2. Buscar y reemplazar:
   - `TU_USUARIO` → tu username de GitHub
   - `[TU NOMBRE COMPLETO]` → tu nombre real
   - `[tu.email@ejemplo.com]` → tu email

#### 3.3. Agregar Badge

1. En GitHub Actions, clic en el workflow exitoso
2. Clic en "..." → "Create status badge"
3. Copiar el código Markdown
4. Pegarlo al inicio del README

#### 3.4. Tomar Capturas

En la página del workflow exitoso:

**Captura 1:** Expandir "Run Unit Tests" → captura mostrando "All tests passed"
**Captura 2:** Expandir "Build Application" → captura mostrando build exitoso
**Captura 3:** Al final de la página, sección "Artifacts" → captura del APK

#### 3.5. Subir Cambios

```powershell
git add README.md
git commit -m "Actualizar README con información personal"
git push
```

#### 3.6. Generar PDF

1. Abrir README.md en GitHub
2. Ctrl + P (Imprimir)
3. Guardar como PDF: `SM2_Examen_CICD_README.pdf`

---

## 📦 ¿Qué se implementó?

✅ **5 Funciones en** `lib/utils/validators.dart`:
1. validateEmail()
2. validatePasswordSecurity()
3. calculateDiscount()
4. isInValidRange()
5. toUpperCase()

✅ **11 Tests en** `test/validators_test.dart`:
- Todos pasando localmente ✓

✅ **Pipeline CI/CD en** `.github/workflows/ci-pipeline.yml`:
- Checkout → Setup → Install → Lint → Test → Build → Upload

---

## 🎯 Checklist Final

Antes de entregar:

- [ ] Repositorio público creado
- [ ] Código subido a GitHub
- [ ] Pipeline ejecutado exitosamente (verde)
- [ ] README actualizado con tu nombre
- [ ] Badge agregado y funcionando
- [ ] 3 capturas tomadas
- [ ] PDF generado

---

## 📞 Ayuda Rápida

**Error al push:**
```powershell
git pull origin main --allow-unrelated-histories
git push
```

**Ver tests localmente:**
```powershell
flutter test
```

**Verificar que compile:**
```powershell
flutter analyze
```

---

## 📚 Documentación Completa

Para información detallada, lee:

- `INSTRUCCIONES_EXAMEN.md` - Guía paso a paso completa
- `COMANDOS_GIT.md` - Todos los comandos Git necesarios
- `VERIFICACION_FINAL.md` - Checklist detallado antes de entregar
- `RESUMEN_IMPLEMENTACION.md` - Resumen técnico completo

---

## ✅ Estado Actual

```
✅ Código implementado
✅ Tests pasando (11/11)
✅ Workflow configurado
✅ Documentación completa
⏳ Pendiente: Subir a GitHub
```

---

**¡Todo listo para el examen!** 🚀

Solo necesitas:
1. Crear el repositorio
2. Subir el código
3. Verificar y documentar

**Tiempo estimado total:** 30 minutos
