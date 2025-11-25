# 🚀 Comandos Git - Despliegue Rápido

## Paso 1: Configurar Git (solo la primera vez)

```powershell
# Configurar nombre de usuario
git config --global user.name "TU_NOMBRE"

# Configurar email
git config --global user.email "tu.email@ejemplo.com"
```

---

## Paso 2: Inicializar y Conectar Repositorio

```powershell
# Inicializar repositorio local
git init

# Añadir repositorio remoto (REEMPLAZA TU_USUARIO)
git remote add origin https://github.com/TU_USUARIO/SM2_Examen_CICD.git

# Verificar que está conectado
git remote -v
```

---

## Paso 3: Crear .gitignore (Evitar archivos innecesarios)

```powershell
# Crear archivo .gitignore si no existe
@"
# Flutter/Dart
.dart_tool/
.packages
build/
.flutter-plugins
.flutter-plugins-dependencies

# IDE
.vscode/
.idea/
*.iml

# Otros
.DS_Store
*.log
verify-cicd.ps1
"@ | Out-File -FilePath .gitignore -Encoding UTF8
```

---

## Paso 4: Primer Commit y Push

```powershell
# Crear rama main
git branch -M main

# Añadir todos los archivos
git add .

# Ver estado (opcional)
git status

# Hacer commit
git commit -m "Initial commit - CI/CD Pipeline implementado con 11 tests unitarios"

# Subir a GitHub
git push -u origin main
```

### Si te pide credenciales:
- **Username:** tu_usuario_de_github
- **Password:** usa un **Personal Access Token** (NO tu contraseña)

#### Crear Personal Access Token:
1. GitHub → Settings → Developer settings
2. Personal access tokens → Tokens (classic)
3. "Generate new token"
4. Marca scope: `repo`
5. Copia el token
6. Úsalo como contraseña

---

## Paso 5: Verificar en GitHub

```powershell
# Abrir el repositorio en el navegador
start https://github.com/TU_USUARIO/SM2_Examen_CICD
```

Luego:
1. Ve a la pestaña **Actions**
2. Espera a que termine el workflow (5-10 min)
3. Debe aparecer **✓** verde

---

## Comandos para Actualizaciones Posteriores

### Actualizar README con tu información:

```powershell
# Edita README.md (reemplaza TU_USUARIO, tu nombre, etc)

# Añadir cambios
git add README.md

# Commit
git commit -m "Actualizar README con información personal"

# Push
git push
```

### Agregar capturas de pantalla:

```powershell
# Crear carpeta para capturas
mkdir docs\screenshots

# Copia tus capturas a esa carpeta

# Añadir y subir
git add docs/screenshots/*
git add README.md
git commit -m "Agregar capturas de evidencias"
git push
```

---

## Comandos Útiles

### Ver estado actual
```powershell
git status
```

### Ver historial de commits
```powershell
git log --oneline
```

### Ver diferencias antes de commit
```powershell
git diff
```

### Deshacer cambios (antes de commit)
```powershell
git restore <archivo>
```

### Deshacer último commit (mantener cambios)
```powershell
git reset --soft HEAD~1
```

---

## Solución de Problemas

### Error: "remote origin already exists"
```powershell
git remote remove origin
git remote add origin https://github.com/TU_USUARIO/SM2_Examen_CICD.git
```

### Error: "Authentication failed"
- Usa un Personal Access Token en lugar de tu contraseña

### Error: "Updates were rejected"
```powershell
git pull origin main --rebase
git push
```

### Ver archivos que se van a subir
```powershell
git ls-files
```

---

## 🎯 Checklist de Despliegue

- [ ] Repositorio creado en GitHub (público)
- [ ] Git inicializado localmente (`git init`)
- [ ] Remoto añadido (`git remote add origin ...`)
- [ ] Primer commit realizado
- [ ] Push exitoso a GitHub
- [ ] Pipeline ejecutándose en Actions
- [ ] README actualizado con tu información
- [ ] Capturas agregadas
- [ ] Badge funcionando

---

## 📞 Ayuda Rápida

### Clonar tu propio repositorio en otro equipo:
```powershell
git clone https://github.com/TU_USUARIO/SM2_Examen_CICD.git
cd SM2_Examen_CICD
flutter pub get
```

### Hacer cambios y subirlos:
```powershell
git add .
git commit -m "Descripción del cambio"
git push
```

---

**Nota:** Reemplaza siempre `TU_USUARIO` con tu username real de GitHub.

**¡Éxito con tu examen!** 🚀
