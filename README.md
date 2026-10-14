# NADIR

*"Cada flor que cae es un pedazo de cordura que te abandonan."*

---

## 🎮 Acerca del juego

**NADIR** es un juego de terror psicológico en primera persona ambientado en un hospital abandonado. Encarnas a **Mateo**, un hombre atrapado en un bucle espacial mientras su esposa **Clara** se consume en las últimas etapas de una enfermedad terminal.

Con cada iteración del bucle, la arquitectura del hospital se deteriora de forma anómala, las flores en la habitación de Clara se marchitan, y una presencia cada vez más opresiva acecha desde las sombras. Lo que comienza como una búsqueda desesperada por escapar se transforma en un descenso al fondo de la psique de Mateo, donde el monstruo del pasillo y el ser querido en la cama se funden en una trágica pesadilla.

**Género:** Terror psicológico / Survival horror  
**Perspectiva:** Primera persona  
**Duración estimada:** 45-60 minutos  
**Modo:** Un jugador

---

## 🎭 Sinopsis

> *Un hombre atrapado en un bucle hospitalario ve cómo la enfermedad terminal de su esposa corrompe la realidad y su propia cordura, arrastrándolo hacia un acto de violencia imperdonable impulsado por el terror y la culpa.*

Mateo despierta en la habitación **404**. Clara yace en la cama, conectada a un suero. Al intentar salir y buscar ayuda, cruzar cualquier umbral lo devuelve inexorablemente al mismo pasillo. Con cada loop, el hospital se deteriora, las lilas se marchitan, y **La Entidad** — una masa humanoide de absoluta negrura — comienza a acecharlo.

Pero el bucle nunca fue un fenómeno sobrenatural exterior. Fue el mecanismo de disociación y negación de la mente de Mateo...

---

## 🔄 Estructura del juego: 5 Loops

| Loop | Estado mental | Flores | La Entidad |
|---|---|---|---|
| **0 — Introducción** | Confusión | Frescas (0%) | Ausente |
| **1 — Negación** | Ansiedad | Marchitas (20%) | Sombra fugaz al fondo del pasillo |
| **2 — Deterioro** | Inquietud | Dobladas (45%) | Observando desde la ventana (4° piso) |
| **3 — Paranoia** | Hipervigilancia | Podridas (70%) | Colgada del techo, bloqueando el paso |
| **4 — Fractura** | Psicosis | Carbonizadas (95%) | Acechando justo detrás del jugador |
| **5 — Abismo** | Colapso total | Cenizas y clavos (100%) | En la cama de Clara |

Cada loop introduce nuevas mecánicas de terror, distorsiones sensoriales y piezas de lore que revelan gradualmente la verdad detrás del bucle.

---

## 🎯 Características principales

- **Narrativa no lineal con revelations progresivas**: El lore se revela a través de documentos, grabaciones, diálogos y el entorno mismo.
- **Sistema de deterioro visual**: Las flores actúan como barómetro de la cordura de Mateo y del progreso del bucle.
- **Meta-mecánicas**: El monitor cardíaco como indicador sonoro, espejos con reflejos alterados, fotografías que cambian entre loops, subtítulos que se corrompen.
- **Terror analógico inspirado**: Influenciado por *Silent Hill 2*, claroscuro, body horror sutil y diseño sonoro claustrofóbico.
- **Quick Time Event final**: El clímax del juego requiere una decisión física (y moral) por parte del jugador.

---

## 🕹️ Controles

| Tecla | Acción |
|---|---|
| **WASD** | Movimiento |
| **Ratón** | Cámara / Mirar |
| **E** / **Clic Izq.** | Interactuar |
| **Shift** | Correr |
| **ESC** | Pausa |

---

## 🛠️ Stack técnico

| Componente | Tecnología |
|---|---|
| **Motor** | [Godot Engine 4.x](https://godotengine.org/) |
| **Lenguaje** | GDScript |
| **Render** | Forward+ (para iluminación claroscuro) |
| **Audio** | FMOD / Godot AudioStreamPlayer (binaural/estéreo) |
| **Plataforma** | PC (Windows, Linux, macOS) |
| **Versión web** | Exportación HTML5 (GitHub Pages) |

---

## 📦 Instalación y ejecución

### Desde fuente

```bash
# Clonar el repositorio
git clone https://github.com/TU_USUARIO/nadir-game.git
cd nadir-game

# Abrir en Godot Engine 4.x
# Archivo -> Importar -> Seleccionar project.godot
# F5 para ejecutar
```

### Desde build descargable

1. Ve a la sección [Releases](https://github.com/TU_USUARIO/nadir-game/releases)
2. Descarga el ZIP correspondiente a tu plataforma
3. Extraír y ejecutar `nadir.exe` (Windows) o `nadir` (Linux/macOS)

---

## 🌐 Demo web

Puedes jugar la demo directamente desde tu navegador:

🔗 **[Jugar NADIR (Web Demo)](https://TU_USUARIO.github.io/nadir-game/)**

---

## 🏆 Game Jam

Este juego fue desarrollado para:

🎃 **[Month of Horror 2 — Withering Away Game Jam](https://itch.io/jam/month-of-horror-2-withering-away)**  
**Tema:** *Withering Away* — El deterioro, la marchitez, la decadencia  
**Tiempo de desarrollado:** [X] días

---

## 🎬 Influencias

- *Silent Hill 2* (Konami) — Terror psicológico, culpa y deterioro mental
- *Layers of Fear* (Bloober Team) — La arquitectura que refleja la mente del protagonista
- *The Backrooms* — Pasillos imposibles, espacios liminales
- *SOMA* (Frictional Games) — Existencialismo y horror corporal
- *Inside* (Playdead) — Opresión atmosférica sin jumpscares baratos

---

## 📋 Roadmap

- [x] Loop 0: Introducción y habitación 404
- [x] Loop 1: Negación
- [x] Loop 2: Deterioro
- [x] Loop 3: Paranoia
- [x] Loop 4: Fractura
- [x] Loop 5: Abismo + Clímax
- [ ] Sistema de iluminación dinámica (claroscuro)
- [ ] Implementación de audio binaural/estéreo
- [ ] Fotografías dinámicas y espejos alterados
- [ ] Sistema de QTE para el clímax
- [ ] Voice acting (Mateo, Clara, Doctor)
- [ ] Pantalla de título y menú de pausa
- [ ] Testeo de usuario y ajuste de dificultad
- [ ] Build final + página de itch.io

---

## 👥 Créditos

| Rol | Nombre |
|---|---|
| **Director / Diseñador / Programador** | [Tu Nombre] |
| **Narrativa / Guion** | [Tu Nombre] |
| **Arte 3D / Modelado** | [Tu Nombre / assets] |
| **Audio / SFX** | [Tu Nombre / fuentes] |
| **QA / Playtesting** | [Tu Nombre] |

---

## 📄 Licencia

Este proyecto está licenciado bajo **[MIT License](LICENSE)**.  
Los assets de terceros pueden tener sus propias licencias — ver `ASSETS.md`.

---

## 🙏 Agradecimientos

Gracias a los organizadores de la **Month of Horror 2 Game Jam** por crear este espacio de creación.  
Gracias a todos los playtesters que se atrevieron a cruzar la Puerta A.

---

<p align="center">
  <i>"En medicina, se llama nadir al punto más bajo de fluctuaciones de un síntoma o un intervalo clínico."</i>
</p>
