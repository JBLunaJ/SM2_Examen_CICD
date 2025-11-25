# 📋 Instrucciones para Completar el Examen CI/CD

## ✅ Lo que ya está hecho:

1. ✅ Archivo `lib/utils/validators.dart` con 5 funciones
2. ✅ Archivo `test/validators_test.dart` con 11 tests unitarios
3. ✅ Pipeline `.github/workflows/ci-pipeline.yml` configurado
4. ✅ README.md actualizado con documentación completa
5. ✅ Tests ejecutados localmente (todos pasaron)

---

## 🚀 Pasos para completar el examen:

### PASO 1: Crear el Repositorio Público en GitHub

1. Ve a [GitHub](https://github.com/LunaJuarezJuan/SM2_Examen_CICD.git) e inicia sesión
2. Haz clic en el botón **"New"** (Nuevo repositorio)
3. Configura así:
   - **Repository name:** `SM2_Examen_CICD`
   - **Visibility:** ✅ **PUBLIC** (muy importante para Actions gratis)
   - **NO marques** "Initialize with README" (ya tienes uno)
4. Clic en **"Create repository"**

---

### PASO 2: Subir tu Proyecto al Repositorio

Ejecuta estos comandos en PowerShell desde la carpeta del proyecto:

```powershell
# Inicializar git (si no lo has hecho)
git init

# Añadir el repositorio remoto (reemplaza TU_USUARIO)
git remote add origin https://github.com/LunaJuarezJuan/SM2_Examen_CICD.git

# Crear rama main
git branch -M main

# Añadir todos los archivos
git add .

# Hacer commit
git commit -m "Initial commit - CI/CD Pipeline implementado"

# Subir a GitHub
git push -u origin main
```

**Nota:** Si te pide credenciales, usa tu username de GitHub y un **Personal Access Token** como contraseña.

#### Cómo crear un Personal Access Token:
1. Ve a Settings → Developer settings → Personal access tokens → Tokens (classic)
2. "Generate new token"
3. Marca el scope `repo`
4. Copia el token y úsalo como contraseña

---

### PASO 3: Verificar que el Pipeline se Ejecutó

1. Ve a tu repositorio en GitHub
2. Haz clic en la pestaña **"Actions"**
3. Deberías ver una ejecución del workflow "Mobile CI/CD Pipeline"
4. Haz clic en ella para ver el progreso

**Espera a que termine** (puede tomar 5-10 minutos). Debe aparecer **verde** con ✅.

---

### PASO 4: Actualizar el README con tu información

Edita el archivo `README.md` y reemplaza:

1. **`[TU NOMBRE COMPLETO]`** - Pon tu nombre real
2. **`TU_USUARIO`** - Reemplaza con tu username de GitHub (en TODAS las URLs)
3. **`[tu.email@ejemplo.com]`** - Tu email real

Luego guarda y sube los cambios:

```powershell
git add README.md
git commit -m "Actualizar README con información personal"
git push
```

---

### PASO 5: Agregar el Badge de Estado

Una vez que el pipeline haya corrido exitosamente:

1. Ve a tu repositorio → Actions
2. Haz clic en el workflow "Mobile CI/CD Pipeline"
3. Clic en los tres puntos (...) → "Create status badge"
4. Copia el código Markdown que te da
5. Pégalo en el README (reemplaza el que ya está)

Debería verse así:
```markdown
![CI/CD Pipeline](https://github.com/TU_USUARIO/SM2_Examen_CICD/workflows/Mobile%20CI/CD%20Pipeline/badge.svg)
```

---

### PASO 6: Tomar Capturas de Pantalla (EVIDENCIAS)

#### Captura 1: Tests Pasando
1. Ve a Actions → Selecciona la ejecución exitosa
2. Haz clic en el job "build-and-deploy"
3. Despliega la sección **"Run Unit Tests"**
4. Toma captura mostrando "All tests passed!"

#### Captura 2: Build Exitoso
1. En la misma página, despliega **"Build Application"**
2. Toma captura mostrando la compilación exitosa

#### Captura 3: Artifact Descargable
1. Baja hasta el final de la página de ejecución
2. En la sección **"Artifacts"** verás `app-release`
3. Toma captura mostrando el archivo APK listo para descargar

---

### PASO 7: Agregar las Capturas al README

1. Crea una carpeta `docs/screenshots/` en tu proyecto
2. Guarda las 3 capturas con nombres claros:
   - `tests_passing.png`
   - `build_success.png`
   - `artifact_ready.png`
3. Actualiza el README reemplazando las rutas:

```markdown
### 1. Tests Ejecutándose
![Tests Running](docs/screenshots/tests_passing.png)

### 2. Build APK Exitoso
![Build Success](docs/screenshots/build_success.png)

### 3. Artefacto Descargable
![Artifact](docs/screenshots/artifact_ready.png)
```

4. Sube los cambios:

```powershell
git add .
git commit -m "Agregar capturas de evidencias"
git push
```

---

### PASO 8: Generar el PDF del README

1. Ve a tu repositorio en GitHub
2. Abre el `README.md`
3. Usa **Ctrl + P** (Imprimir)
4. Selecciona "Guardar como PDF"
5. Guarda con el nombre: `SM2_Examen_CICD_README.pdf`

---

## 📦 Entregables Finales:

1. ✅ Repositorio público: `https://github.com/TU_USUARIO/SM2_Examen_CICD`
2. ✅ Pipeline funcionando (badge verde)
3. ✅ README.md completo con:
   - Datos personales
   - Badge de GitHub Actions
   - 3 capturas de evidencias
4. ✅ PDF del README exportado

---

## 🔍 Checklist de Verificación:

Antes de entregar, verifica:

- [ ] El repositorio es PÚBLICO
- [ ] El pipeline corre automáticamente en cada push
- [ ] Todos los tests pasan (11/11)
- [ ] El APK se genera correctamente
- [ ] El badge muestra "passing" (verde)
- [ ] Las 3 capturas están en el README
- [ ] Tu nombre y datos están actualizados
- [ ] El PDF está generado y es legible

---

## 🆘 Solución de Problemas:

### Error: "Flutter version not found"
- Verifica que en el workflow diga `flutter-version: '3.19.0'`

### Error: "Tests failed"
- Ejecuta localmente: `flutter test`
- Asegúrate de que todos los tests pasen antes de hacer push

### Error: "Build failed"
- Ejecuta localmente: `flutter build apk`
- Verifica que no haya errores de compilación

### El badge no aparece verde
- Espera a que el pipeline termine completamente
- Actualiza la página del repositorio
- Verifica que el workflow se llame exactamente "Mobile CI/CD Pipeline"

---

## 📧 Contacto de Soporte:

Si tienes problemas técnicos:
1. Revisa los logs en GitHub Actions
2. Verifica que todos los archivos estén en las rutas correctas
3. Asegúrate de tener la versión correcta de Flutter

---

¡Éxito en tu examen! 🚀
