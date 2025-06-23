# Reloj Digital con PIC16F877A

## Descripción

Este repositorio contiene el proyecto **Reloj**, un programa en ensamblador (`reloj.asm`) diseñado para el microcontrolador PIC16F877A de Microchip. El programa implementa un reloj digital que muestra la hora en formato **HH:MM:SS** en un display conectado al microcontrolador.

El reloj permite ajustar la hora mediante botones conectados a los pines del puerto B y utiliza el temporizador interno (TMR1) para mantener la cuenta del tiempo. El código configura los puertos, maneja interrupciones, y actualiza la visualización en el display de manera continua, con soporte para reinicio y ajuste manual de la hora, minutos y segundos.

## ✨ Características

- **Reloj Digital**: Muestra la hora en formato HH:MM:SS
- **Ajuste Manual**: Botones conectados a PORTB (RB0, RB1, RB3, RB4, RB5, RB7) para reiniciar, incrementar minutos, segundos, y horas, o cambiar entre modos
- **Display Multiplexado**: Controla un display (conectado a PORTD) para mostrar los dígitos de la hora
- **Temporizador**: Utiliza TMR1 para mantener la precisión del reloj
- **Gestión de Interrupciones**: Maneja interrupciones para actualizar el display y procesar entradas de los botones

## 📁 Estructura del Repositorio

```
reloj/
└── reloj.asm    # Código fuente en ensamblador para el PIC16F877A
```

## 🛠️ Requisitos

### Hardware
- Microcontrolador PIC16F877A
- Display de 7 segmentos o LCD conectado a PORTD
- Botones conectados a PORTB (pines RB0, RB1, RB3, RB4, RB5, RB7)
- Cristal oscilador de alta velocidad (HS) para el PIC16F877A
- Circuito de soporte (resistencias, condensadores, etc.) según el diseño del reloj

### Software
- MPLAB X IDE (o cualquier entorno compatible con ensamblador PIC)
- MPASM o compilador de ensamblador para PIC
- Programador de PIC (como PICkit o ICD)

### Conocimientos
- Programación en ensamblador para microcontroladores PIC
- Configuración de hardware para displays y botones

## 🚀 Instalación

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/FERNANDOANGEL202123767/reloj.git
   cd reloj
   ```

2. **Abre el proyecto en MPLAB X:**
   - Crea un nuevo proyecto en MPLAB X
   - Importa el archivo `reloj.asm` como archivo fuente
   - Configura el proyecto para el PIC16F877A

3. **Compila el código:**
   - Usa el compilador MPASM en MPLAB X para generar el archivo `.hex`
   - Verifica que no haya errores en la compilación

4. **Carga el programa en el microcontrolador:**
   - Conecta el programador (PICkit, ICD, etc.) al PIC16F877A
   - Usa MPLAB X para cargar el archivo `.hex` generado en el microcontrolador

5. **Conecta el hardware:**
   - Conecta el display a PORTD (pines RD0-RD7 para dígitos y control)
   - Conecta los botones a PORTB:
     - **RB0**: Reset
     - **RB1**: Incrementar minutos
     - **RB3**: Cambiar modo
     - **RB4**: Incrementar horas
     - **RB5**: Incrementar segundos
     - **RB7**: Modo especial
   - Asegúrate de que el oscilador y los componentes periféricos estén correctamente configurados

## 📖 Uso

### Encender el Circuito
- Alimenta el circuito con la fuente de voltaje adecuada (típicamente 5V para el PIC16F877A)
- El reloj comenzará a mostrar la hora inicial (00:00:00)

### Ajustar la Hora
| Botón | Función |
|-------|---------|
| **RB0** | Reiniciar el reloj a 00:00:00 |
| **RB1** | Incrementar minutos |
| **RB3** | Cambiar modo de visualización |
| **RB4** | Incrementar horas |
| **RB5** | Incrementar segundos |
| **RB7** | Activar modo especial |

### Visualización
- El display conectado a PORTD mostrará la hora en formato **HH:MM:SS**
- Se actualiza cada segundo automáticamente
- Los dos puntos (`:`) parpadean para indicar que el reloj está funcionando

## 🔧 Detalles del Código

### Configuración del PIC
- **Oscilador**: HS (High-Speed)
- **Watchdog Timer**: Desactivado
- **Brown-out Reset**: Activado
- **Protección de código**: Desactivada

### Puertos
- **PORTB**: Entradas para botones (RB0, RB1, RB3, RB4, RB5, RB7)
- **PORTC**: Salida para control (bit RC0 usado para activar/desactivar)
- **PORTD**: Salida para el display (controla dígitos y segmentos)

### Rutinas Principales
- `LADR_0x00B2`: Inicializa el display y configura los valores iniciales del reloj
- `LADR_0x026B`: Bucle principal que actualiza la hora y verifica los botones
- `LADR_0x019A`: Convierte valores numéricos a dígitos para el display
- `LADR_0x0102`: Maneja la multiplexación del display
- `LADR_0x012E` y `LADR_0x01F1`: Gestionan interrupciones y temporización

### Variables
- `LRAM_0x23`: Contador de centésimas de segundo
- `LRAM_0x24`: Segundos
- `LRAM_0x25`: Minutos
- `LRAM_0x26`: Horas
- `LRAM_0x27`, `LRAM_0x28`, `LRAM_0x29`: Usados para un segundo contador o modo alternativo

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para contribuir:

1. Haz un fork del repositorio
2. Crea una rama para tus cambios (`git checkout -b feature/nueva-funcionalidad`)
3. Realiza los cambios y haz commit (`git commit -m "Añade nueva funcionalidad"`)
4. Sube la rama (`git push origin feature/nueva-funcionalidad`)
5. Crea un Pull Request en GitHub

## 📄 Licencia

Este proyecto está bajo la licencia MIT.

## 📞 Contacto

- **Autor**: Fernando Angel
- **GitHub**: [@FERNANDOANGEL202123767](https://github.com/FERNANDOANGEL202123767)

Para preguntas, sugerencias o problemas, abre un **issue** en el repositorio o contacta al autor.

---

¡Gracias por visitar el proyecto Reloj! ⏰
