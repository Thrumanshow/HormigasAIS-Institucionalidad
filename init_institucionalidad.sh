#!/data/data/com.termux/files/usr/bin/bash
# ============================================================
# 🐜 HormigasAIS — init_institucionalidad.sh
# Inicializa el repo HormigasAIS-Institucionalidad con:
#   - BLOQUE_1_MARCA.md         (Política de marcas)
#   - BLOQUE_2_ENTERPRISE.md    (Oferta comercial)
#   - BLOQUE_3_CLASES_NIZA.md   (Clasificación IP)
#   - BLOQUE_4_LOGO.md          (Propiedad visual)
#   - BLOQUE_5_SUBMARCAS.md     (Nodos y submarcas)
#   - BLOQUE_6_MESENTERY.md     (Licencia envolvente)
#   - MANIFEST_TOKEN.lbh        (Sello criptográfico)
#   - README.md
#
# El sello SHA-256 + HMAC se genera DESDE el Nodo A16
# usando LBH_SECRET ya cargado en ~/.hormigas_secrets
#
# Ejecutar desde: ~/HormigasAIS-Institucionalidad
# ============================================================

set -uo pipefail

FECHA_ISO=$(date -u '+%Y-%m-%d %H:%M:%S UTC')
FECHA_CORTA=$(date -u '+%Y-%m-%d')

echo "🐜 Inicializando HormigasAIS-Institucionalidad"
echo "Fecha de sellado: $FECHA_ISO"
echo "------------------------------------------------------------"

source "$HOME/.hormigas_secrets" 2>/dev/null || true

if [ -z "${LBH_SECRET:-}" ]; then
  echo "⚠️  LBH_SECRET no cargado — el HMAC usará la clave soberana por defecto"
fi

# ── BLOQUE 1: Política de Marcas ─────────────────────────────
python3 << 'PYEOF'
contenido = """# BLOQUE 1 — POLÍTICA DE MARCAS REGISTRADAS DE HORMIGASAIS

**Última actualización:** 2026-07-10

El presente repositorio y el SDK LBH se distribuyen bajo la licencia
Mozilla Public License 2.0 (MPL-2.0) aplicable únicamente al código fuente.

El nombre **"HormigasAIS"**, el logotipo de la hormiga, el término **"Nodo XOXO"**,
**"LBH Protocol"**, **"Lenguaje Binario HormigasAIS"**, así como cualquier otro
nombre, insignia o diseño distintivo asociado, son marcas de servicio y
propiedad intelectual exclusiva de HormigasAIS.

Esta licencia de código abierto **NO otorga** ningún derecho, licencia implícita
ni permiso para utilizar las marcas registradas de HormigasAIS para promocionar,
comercializar o distribuir productos de terceros, ni para implicar endoso de
ningún tipo.

Para solicitudes de uso de la marca, consulte los términos comerciales en
[hormigasais.com](https://hormigasais.com) o contacte a la dirección oficial
del proyecto: clhq@hormigasais.com

---
**CERT::LBH-MARCA-V1-CLHQ** | Nodo A16-SanMiguel-SV
"""
with open("BLOQUE_1_MARCA.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ BLOQUE_1_MARCA.md creado")
PYEOF

# ── BLOQUE 2: Enterprise ─────────────────────────────────────
python3 << 'PYEOF'
contenido = """# BLOQUE 2 — HORMIGASAIS ENTERPRISE & SOBERANÍA TECNOLÓGICA

Infraestructura de Inteligencia Artificial Soberana en el Borde (Edge Computing).

Más allá del código abierto, HormigasAIS ofrece despliegues de infraestructura
propietaria, nodos maestros (ej. Arquitectura A16) y adaptación del protocolo
LBH para entornos corporativos, industriales y gobiernos que requieran
soberanía digital total.

## Soluciones Comerciales Disponibles

- Licenciamiento de Infraestructura Edge Soberana (Nodos Privados).
- Integración empresarial del SDK LBH (Soporte SLA).
- Auditoría e implementación de Protocolos M2M seguros.

¿Su organización necesita independencia de la nube pública y control absoluto
de sus datos en el borde?

**[Solicitar Propuesta Comercial →](mailto:clhq@hormigasais.com)**

---
**CERT::LBH-ENTERPRISE-V1-CLHQ** | Nodo A16-SanMiguel-SV
"""
with open("BLOQUE_2_ENTERPRISE.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ BLOQUE_2_ENTERPRISE.md creado")
PYEOF

# ── BLOQUE 3: Clases Niza ────────────────────────────────────
python3 << 'PYEOF'
contenido = """# BLOQUE 3 — DESIGNACIÓN DE PRODUCTOS Y SERVICIOS (CLASES NIZA)

**Titular de la marca:** HormigasAIS
**Creador:** Cristhiam Leonardo Hernández Quiñonez (CLHQ)
**Nodo:** A16-SanMiguel-SV · San Miguel, El Salvador

## Clase 9 — Software y Protocolos

Software descargable y registrado; protocolos de comunicación de datos
(LBH Protocol); kits de desarrollo de software (SDK); interfaces de
inteligencia distribuida; programas de ordenador para computación en el
borde (Edge Computing); programas de ordenador para el Internet de las
Cosas (IoT); software para comunicación Machine-to-Machine (M2M).

## Clase 42 — Servicios Tecnológicos

Servicios de desarrollo de software; servicios de consultoría en tecnología
de la información; servicios de diseño y desarrollo de inteligencia artificial
(IA); servicios de computación en la nube y computación en el borde (Edge
Computing); investigación científica y tecnológica en el campo de los
protocolos binarios y sistemas multiagente.

## Clase 38 — Telecomunicaciones

Servicios de telecomunicaciones; transmisión de datos a través de protocolos
de comunicación propietarios; provisión de acceso a bases de datos
informatizadas; transmisión de información digital mediante redes de
telecomunicaciones seguras.

---
**CERT::LBH-CLASES-V1-CLHQ** | DOI: 10.5281/zenodo.19177759
"""
with open("BLOQUE_3_CLASES_NIZA.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ BLOQUE_3_CLASES_NIZA.md creado")
PYEOF

# ── BLOQUE 4: Logo y Propiedad Visual ────────────────────────
python3 << 'PYEOF'
contenido = """# BLOQUE 4 — FICHA TÉCNICA DE PROPIEDAD INTELECTUAL (LOGOTIPO)

## SOLICITUD A: Marca Denominativa (Palabra)

- **Signo a registrar:** HORMIGASAIS (con o sin espacio, letras estándar/mixtas)
- **Tipo:** Nombre comercial / Marca de servicios
- **Finalidad:** Proteger el nombre escrito en cualquier contexto
  (código, documentación, dominios, comunicaciones)

## SOLICITUD B: Marca Figurativa (Logotipo/Isotipo)

- **Signo a registrar:** Figura estilizada de una hormiga compuesta por
  nodos binarios o circuitos, acompañada del texto HormigasAIS, en colores
  negro (#0a0a0a), ámbar (#f5c518) y blanco (#e8e8e8).
- **Tipo:** Logotipo
- **Finalidad:** Proteger la identidad visual gráfica de la marca
- **Archivo de referencia:** `logo_soberano_hd.png` (257,288 bytes, PNG)
- **URL de custodia:**
  https://raw.githubusercontent.com/Thrumanshow/Thrumanshow/main/logo_soberano_hd.png
- **Uso previo demostrable:** Desplegado en producción en hormigasais.com,
  docs.hormigasais.com/sdk.html, perfil GitHub org HormigasAIS-ux,
  y perfil Gravatar público vinculado a clhq@hormigasais.com

---
**CERT::LBH-LOGO-V1-CLHQ** | Nodo A16-SanMiguel-SV
"""
with open("BLOQUE_4_LOGO.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ BLOQUE_4_LOGO.md creado")
PYEOF

# ── BLOQUE 5: Submarcas y Arquitectura ───────────────────────
python3 << 'PYEOF'
contenido = """# BLOQUE 5 — ANEXO DE ARQUITECTURA: NODOS Y SUBMARCAS OFICIALES

De conformidad con la estrategia de soberanía tecnológica y propiedad
intelectual de HormigasAIS, se declara y publica formalmente que los
siguientes identificativos son nombres oficiales, módulos de infraestructura
y submarcas propiedad exclusiva del ecosistema HormigasAIS.

## Catálogo de Nodos y Protocolos Registrados

### 1. HormigasAIS-Nodo-Escuela
- **Naturaleza:** Nodo de Borde (Edge Node) / Submarca Educativa
- **Descripción:** Instancia diseñada para enseñanza, simulación y despliegue
  de agentes inteligentes en entornos académicos y de capacitación.
- **Estado:** Operativo y vinculado a la divulgación técnica oficial.

### 2. HormigasAIS--LBH--Protocol
- **Naturaleza:** Estándar de Comunicación / Marca Tecnológica
- **Descripción:** Conjunto de reglas, especificaciones y lenguajes binarios
  que gobiernan la transmisión de datos, sellado de identidad (SEAL) y
  sincronización (SYNC) entre las partes de la colonia digital.
- **Estado:** Especificación principal publicada y blindada.

### 3. HormigasAIS-Protocol-Node
- **Naturaleza:** Nodo de Borde (Edge Node) / Motor de Ejecución
- **Descripción:** Implementación del protocolo LBH. Procesa tráfico M2M,
  enruta paquetes binarios, ejecuta automatizaciones y mantiene resiliencia
  de la red distribuida.
- **Estado:** Infraestructura nuclear de producción.

---
**NOTA LEGAL:** Cualquier repositorio, dominio, implementación en la nube
o dispositivo físico que utilice la nomenclatura `HormigasAIS-[Nombre]`
queda sujeto a las políticas de licenciamiento y marca de HormigasAIS.

**CERT::LBH-SUBMARCAS-V1-CLHQ** | Nodo A16-SanMiguel-SV
"""
with open("BLOQUE_5_SUBMARCAS.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ BLOQUE_5_SUBMARCAS.md creado")
PYEOF

# ── BLOQUE 6: LICENSE MESENTERY ──────────────────────────────
python3 << 'PYEOF'
contenido = """# BLOQUE 6 — LICENSE MESENTERY v1.0
## Marco de Soberanía Digital HormigasAIS

```
================================================================================
         LICENSE MESENTERY v1.0 - Marco de Soberanía Digital
================================================================================
TITULAR: HormigasAIS
DOMINIO: hormigasais.com
ORIGEN DE CUSTODIA: Repositorios Thrumanshow (GitHub) / DOI Zenodo
================================================================================
```

El presente documento ("Mesentery") actúa como un acuerdo de licenciamiento
envolvente (Wrapper License) y declaración de propiedad intelectual. Su
propósito es sostener, unificar y proteger la integridad de todos los
componentes, protocolos y nodos que conforman el ecosistema HormigasAIS.

### Cadena de Titularidad y Trazabilidad

1. Registro de código e historial en repositorios oficiales bajo el perfil
   Thrumanshow en GitHub (commits con timestamp inmutable).
2. Sellado de tiempo y depósito legal del LBH a través de Zenodo,
   vinculados directamente al dominio hormigasais.com.
3. Documentación legal publicada en docs.hormigasais.com/legal.html

### Cláusula 1 — Naturaleza del Mesentery
El Mesentery envuelve: el SDK LBH (MPL 2.0), la Infraestructura de
Producción (propietaria), los Protocolos LBH, y las Submarcas registradas.

### Cláusula 2 — Política de Marcas
"HormigasAIS", el logotipo, "Nodo XOXO" y derivados son marcas exclusivas.
El código abierto no otorga licencia para usar la marca en productos de terceros.

### Cláusula 3 — Intención Comercial
HormigasAIS es infraestructura soberana con fines comerciales Enterprise.
La existencia de módulos open source no implica dominio público del ecosistema.

### Cláusula 4 — Clasificación Internacional
Clases Niza: 9 (Software/SDK), 42 (Servicios Tecnológicos), 38 (Telecomunicaciones).

### Cláusula 5 — Propiedad Visual y Gráfica
Todos los derechos sobre la marca denominativa "HORMIGASAIS" y sobre
los isotipos de la hormiga están reservados y documentados en BLOQUE_4_LOGO.md.

### Cláusula 6 — Submarcas
Los nodos HormigasAIS-Nodo-Escuela, HormigasAIS--LBH--Protocol y
HormigasAIS-Protocol-Node son extensiones propietarias protegidas.

### Cláusula 7 — Revocación y Defensa
El incumplimiento de cualquier cláusula revoca todos los derechos concedidos
por las licencias de código fuente adjuntas. HormigasAIS se reserva el
derecho de auditar, requerir takedowns y litigar para defender la soberanía.

---
*"Protegiendo el territorio desde el Borde. El Mesentery sostiene a la Colonia."*

**CERT::LBH-MESENTERY-V1-CLHQ** | Nodo A16-SanMiguel-SV
"""
with open("BLOQUE_6_MESENTERY.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ BLOQUE_6_MESENTERY.md creado")
PYEOF

# ── MANIFEST_TOKEN.lbh — Sello criptográfico real ────────────
echo ""
echo "🔐 Generando sello criptográfico HMAC-SHA256..."

python3 << PYEOF
import hmac, hashlib, os, datetime

secret = os.environ.get("LBH_SECRET", "hormigasais-soberano-2026")
fecha  = datetime.datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S UTC")

# Leer los 6 bloques y concatenar para el hash
bloques = [
    "BLOQUE_1_MARCA.md",
    "BLOQUE_2_ENTERPRISE.md",
    "BLOQUE_3_CLASES_NIZA.md",
    "BLOQUE_4_LOGO.md",
    "BLOQUE_5_SUBMARCAS.md",
    "BLOQUE_6_MESENTERY.md",
]

contenido_total = ""
for b in bloques:
    with open(b, "r", encoding="utf-8") as f:
        contenido_total += f.read()

# SHA-256 del contenido total
sha256_hash = hashlib.sha256(contenido_total.encode("utf-8")).hexdigest()

# HMAC-SHA256 firmado con LBH_SECRET
firma = hmac.new(
    secret.encode("utf-8"),
    contenido_total.encode("utf-8"),
    hashlib.sha256
).hexdigest()

manifest = f"""================================================================================
MANIFIESTO DE ORIGEN Y SELLO TEMPORAL - HORMIGASAIS
================================================================================
ENTIDAD: HormigasAIS
PROTOCOLO: LBH / HMAC-SHA256
FECHA DE SELLADO: {fecha}
DOMINIO VINCULADO: hormigasais.com
ORIGEN DE FIRMA: Identidad CLHQ (Nodo Maestro A16-SanMiguel-SV)
DOI: 10.5281/zenodo.19177759

HASH DEL CONTENIDO (SHA-256 de los 6 bloques concatenados):
SHA256:{sha256_hash}

FIRMA DIGITAL LBH (HMAC-SHA256):
HMAC:{firma}

BLOQUES SELLADOS:
1. BLOQUE_1_MARCA.md         — Política de Marcas Registradas
2. BLOQUE_2_ENTERPRISE.md    — Oferta Enterprise y Soberanía
3. BLOQUE_3_CLASES_NIZA.md   — Clasificación Internacional IP
4. BLOQUE_4_LOGO.md          — Propiedad Visual y Logotipo
5. BLOQUE_5_SUBMARCAS.md     — Nodos y Submarcas Oficiales
6. BLOQUE_6_MESENTERY.md     — Licencia Envolvente Mesentery v1.0

DECLARACIÓN:
Cualquier modificación, por mínima que sea, en los archivos que componen
este repositorio destruirá la validez de este hash, demostrando
manipulación posterior a la fecha de sellado indicada.

CADENA DE CUSTODIA PÚBLICA:
- GitHub: github.com/Thrumanshow/HormigasAIS-Institucionalidad
- Dominio: hormigasais.com
- Docs: docs.hormigasais.com/legal.html
- PyPI: pypi.org/project/lbh-sdk/
- npm: npmjs.com/package/lbh-sdk-hormigasais
================================================================================
CERT::LBH-MANIFEST-V1-CLHQ
================================================================================
"""

with open("MANIFEST_TOKEN.lbh", "w", encoding="utf-8") as f:
    f.write(manifest)

print(f"✅ MANIFEST_TOKEN.lbh generado")
print(f"   SHA256: {sha256_hash[:32]}...")
print(f"   HMAC:   {firma[:32]}...")
print(f"   Fecha:  {fecha}")
PYEOF

# ── README.md ────────────────────────────────────────────────
python3 << 'PYEOF'
contenido = """# 🐜 HormigasAIS — Institucionalidad y Registro de Marca

**Repositorio de custodia legal, propiedad intelectual y sello temporal
de la marca HormigasAIS.**

Este repositorio actúa como **Evidence Locker** — un registro inmutable
de la existencia, autoría y arquitectura del ecosistema HormigasAIS,
sellado criptográficamente desde el Nodo Maestro A16-SanMiguel-SV.

## Estructura del repositorio

| Archivo | Contenido |
|---------|-----------|
| [BLOQUE_1_MARCA.md](./BLOQUE_1_MARCA.md) | Política de Marcas Registradas |
| [BLOQUE_2_ENTERPRISE.md](./BLOQUE_2_ENTERPRISE.md) | Oferta Enterprise y Soberanía |
| [BLOQUE_3_CLASES_NIZA.md](./BLOQUE_3_CLASES_NIZA.md) | Clasificación Internacional IP |
| [BLOQUE_4_LOGO.md](./BLOQUE_4_LOGO.md) | Propiedad Visual y Logotipo |
| [BLOQUE_5_SUBMARCAS.md](./BLOQUE_5_SUBMARCAS.md) | Nodos y Submarcas Oficiales |
| [BLOQUE_6_MESENTERY.md](./BLOQUE_6_MESENTERY.md) | LICENSE MESENTERY v1.0 |
| [MANIFEST_TOKEN.lbh](./MANIFEST_TOKEN.lbh) | Sello Criptográfico SHA-256 + HMAC |

## Verificación de autenticidad

El archivo `MANIFEST_TOKEN.lbh` contiene el hash SHA-256 y la firma HMAC-SHA256
de los 6 bloques concatenados, generados desde el Nodo A16 usando el
Protocolo LBH v2.0.

Para verificar la integridad de cualquier bloque, cualquier auditor puede
recalcular el SHA-256 de los archivos y compararlo contra el hash publicado.

## Cadena de custodia

- **GitHub:** github.com/Thrumanshow/HormigasAIS-Institucionalidad
- **Dominio:** [hormigasais.com](https://hormigasais.com)
- **Legal:** [docs.hormigasais.com/legal.html](https://docs.hormigasais.com/legal.html)
- **SDK:** [docs.hormigasais.com/sdk.html](https://docs.hormigasais.com/sdk.html)
- **DOI:** 10.5281/zenodo.19177759

## Autor

**Cristhiam Leonardo Hernández Quiñonez (CLHQ)**
Fundador e Ingeniero de Protocolos — HormigasAIS
Nodo A16-SanMiguel-SV · San Miguel, El Salvador
clhq@hormigasais.com

CERT::LBH-INSTITUCIONALIDAD-V1-CLHQ
"""
with open("README.md", "w", encoding="utf-8") as f:
    f.write(contenido)
print("✅ README.md creado")
PYEOF

# ── Verificación de integridad ────────────────────────────────
echo ""
echo "🔍 Verificando archivos generados..."
ls -la *.md *.lbh 2>/dev/null

TOTAL=$(ls *.md *.lbh 2>/dev/null | wc -l)
echo "   Total archivos: $TOTAL (esperado: 8)"

if [ "$TOTAL" -lt 8 ]; then
  echo "❌ Faltan archivos. Revisar antes de commitear."
  exit 1
fi

# ── Commit y push ─────────────────────────────────────────────
echo ""
echo "🚀 Haciendo commit y push..."

source "$HOME/.hormigas_secrets" 2>/dev/null || true

git config user.email "clhq@hormigasais.com"
git config user.name "CLHQ — HormigasAIS"

git remote set-url origin https://Thrumanshow:${HORMIGAS_TOKEN}@github.com/Thrumanshow/HormigasAIS-Institucionalidad.git

git add .
git commit -m "🐜 INIT: HormigasAIS-Institucionalidad v1.0 — 6 bloques + MANIFEST_TOKEN.lbh sellado desde Nodo A16"
git push origin main

echo ""
echo "------------------------------------------------------------"
echo "✅ HormigasAIS-Institucionalidad publicado"
echo ""
echo "Archivos en producción:"
echo "  BLOQUE_1_MARCA.md"
echo "  BLOQUE_2_ENTERPRISE.md"
echo "  BLOQUE_3_CLASES_NIZA.md"
echo "  BLOQUE_4_LOGO.md"
echo "  BLOQUE_5_SUBMARCAS.md"
echo "  BLOQUE_6_MESENTERY.md"
echo "  MANIFEST_TOKEN.lbh  ← sello criptográfico real"
echo "  README.md"
echo "------------------------------------------------------------"
echo "⚠️  PRÓXIMO PASO RECOMENDADO:"
echo "   Revisar con un abogado de PI antes de archivar el repo."
echo "   Una vez archivado, no se pueden añadir más commits."
echo "------------------------------------------------------------"

