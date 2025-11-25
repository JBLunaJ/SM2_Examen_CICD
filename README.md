# 📱 Acees Group - Sistema de Control de Acceso NFC

![CI/CD Pipeline](https://github.com/TU_USUARIO/SM2_Examen_CICD/workflows/Mobile%20CI/CD%20Pipeline/badge.svg)

> Sistema completo de control de acceso con tecnología NFC desarrollado en Flutter con arquitectura MVVM y Pipeline de CI/CD automatizado.

---

## 👨‍💻 Datos del Alumno

**Nombre:** Juan Brendon Luna Juarez
**Tecnología:** Flutter 3.19.0  
**Framework:** Flutter SDK  
**Lenguaje:** Dart  
**Arquitectura:** MVVM (Model-View-ViewModel)

---

## 🔗 Enlaces del Proyecto

- **Repositorio GitHub:** [https://github.com/JBLunaJ/SM2_Examen_CICD.git](https://github.com/JBLunaJ/SM2_Examen_CICD.git)
- **Pipeline CI/CD:** [Ver Actions](https://github.com/JBLunaJ/SM2_Examen_CICD/actions)

---

## 🚀 Pipeline de CI/CD Implementado

Este proyecto cuenta con un pipeline completo de **Integración y Entrega Continua** que se ejecuta automáticamente en cada push a la rama `main`:

### Etapas del Pipeline:

1. ✅ **Checkout Code** - Descarga el código del repositorio
2. ✅ **Setup Flutter** - Configura el entorno Flutter 3.19.0
3. ✅ **Install Dependencies** - Instala todas las dependencias (`flutter pub get`)
4. ✅ **Code Quality Check** - Audita la calidad del código (`flutter analyze`)
5. ✅ **Run Unit Tests** - Ejecuta las pruebas unitarias (`flutter test`)
6. ✅ **Build Application** - Genera el APK de release (`flutter build apk`)
7. ✅ **Upload Artifact** - Sube el APK como artefacto descargable

---

## 🧪 Pruebas Unitarias Implementadas

Se desarrollaron **5 funciones de validación** con sus respectivas **pruebas unitarias**:

| # | Función | Descripción | Tests |
|---|---------|-------------|-------|
| 1 | `validateEmail` | Valida que un email contenga "@" y "." | ✅ 2 tests |
| 2 | `validatePasswordSecurity` | Verifica que la contraseña tenga más de 6 caracteres | ✅ 2 tests |
| 3 | `calculateDiscount` | Calcula el precio final con descuento aplicado | ✅ 3 tests |
| 4 | `isInValidRange` | Verifica que un número esté entre 1 y 10 | ✅ 2 tests |
| 5 | `toUpperCase` | Convierte un texto a mayúsculas | ✅ 2 tests |

**Total de tests:** 11 pruebas unitarias  
**Ubicación:** `test/validators_test.dart`  
**Código fuente:** `lib/utils/validators.dart`

---

## 📦 Artefactos Generados

El pipeline genera automáticamente:

- **APK de Release** (`app-release.apk`)
- Descargable desde la sección "Artifacts" en GitHub Actions
- Listo para instalación en dispositivos Android

---

## 🛠️ Tecnologías Utilizadas

### Frontend
- **Flutter** 3.19.0
- **Dart** SDK
- **Provider** - Gestión de estado
- **flutter_nfc_kit** - Lectura NFC
- **http** - Comunicación con API
- **fl_chart** - Visualización de datos

### Backend
- **Node.js** + Express
- **MongoDB Atlas** - Base de datos
- **bcrypt** - Seguridad

### CI/CD
- **GitHub Actions** - Pipeline automatizado
- **Ubuntu Latest** - Runner

---

## 📊 Evidencias del Pipeline

### 1. Tests Ejecutándose

![Tests Running](ruta/a/captura_tests.png)

> Captura de pantalla mostrando los 11 tests pasando exitosamente en GitHub Actions.

### 2. Build APK Exitoso

![Build Success](ruta/a/captura_build.png)

> Captura de la compilación exitosa del APK.

### 3. Artefacto Descargable

![Artifact](ruta/a/captura_artifact.png)

> APK generado disponible para descarga en la sección de Artifacts.

---

## 🏗️ Estructura del Proyecto

```
Acees_Group/
├── .github/
│   └── workflows/
│       └── ci-pipeline.yml      # Pipeline CI/CD
├── lib/
│   ├── utils/
│   │   └── validators.dart      # 5 Funciones de validación
│   ├── models/                  # Modelos de datos
│   ├── services/                # Servicios (API, NFC, etc.)
│   ├── viewmodels/              # ViewModels (MVVM)
│   └── views/                   # Vistas de la app
├── test/
│   └── validators_test.dart     # 11 Tests unitarios
├── backend/                     # Backend Node.js
└── README.md                    # Este archivo
```

---

## 🚦 Cómo Ejecutar el Proyecto

### Prerrequisitos
- Flutter SDK 3.19.0 o superior
- Android SDK
- Git

### Instalación Local

```bash
# Clonar el repositorio
git clone https://github.com/JBLunaJ/SM2_Examen_CICD.git
cd SM2_Examen_CICD

# Instalar dependencias
flutter pub get

# Ejecutar tests
flutter test

# Ejecutar análisis de código
flutter analyze

# Compilar APK
flutter build apk --release
```

---

## 📱 Funcionalidades del Sistema

- ✅ Control de acceso con pulseras NFC
- ✅ Autenticación de usuarios (Guardia/Admin)
- ✅ Registro de asistencias en tiempo real
- ✅ Dashboard administrativo
- ✅ Reportes y estadísticas
- ✅ Modo offline con sincronización
- ✅ Sistema de presencia en tiempo real
- ✅ Machine Learning para predicción de patrones

---

## 📄 Licencia

MIT License - Acees Group © 2025

---



