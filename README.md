# 🐜 HormigasAIS — Institucionalidad y Registro de Marca

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

---

### Arquitectura y Ecosistema HormigasAIS
* **Red P2P Base:** [LBH-Net](https://github.com/HormigasAIS/LBH-Net) — Red soberana distribuida basada en Protocolo LBH (Termux / UDP :9199 / TCP :9200 / SQLite / Ed25519).
* **Vitrina Oficial:** [hormigasais.com](https://hormigasais.com)
* **Documentación Técnica:** [docs.hormigasais.com](https://docs.hormigasais.com)
* **Fundador:** CLHQ — Cristhiam Leonardo Hernández Quiñonez | El Salvador 2026 | DOI: 10.5281/zenodo.17767205
