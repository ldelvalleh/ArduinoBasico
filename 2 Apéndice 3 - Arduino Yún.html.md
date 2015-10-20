Yún significa nube y precisamente esa es la vocación de esta placa,
conectar con servicios en la nube de una forma sencilla para el usuario.

Este dispositivo fue el primero de varios dispositivos Arduino que
incluían en una misma placa un Arduino tradicional (normalmente
Leonardo) con los habituales conectores y un equipo más potente capaz de
ejecutar un sistema operativo potente como Linux. El sistema Línux
incluye una distribución llamada
[Linino](http://linino2013.wordpress.com/) que basada en Open-WRT

De esta forma podemos usar todo lo desarrollado previamente, tanto en
software como en hardware y añadir nuevas funcionalidades avanzadas,
sobre todo en el aspecto de conectividad.

Estos dos dispositivos están conectados por un interface llamado Bridge,
tanto a nivel hardware como software (la librería bridge)

![](http://arduino.cc/en/uploads/Main/BridgeInShort.png)

Veamos las características de Yún

**Arduino**

Microcontroller

ATmega32u4

Operating Voltage

5V

Input Voltage

5V

Digital I/O Pins

20

PWM Channels

7

Analog Input Channels

12

DC Current per I/O Pin

40 mA

DC Current for 3.3V Pin

50 mA

Flash Memory

32 KB (of which 4 KB used by bootloader)

SRAM

2.5 KB

EEPROM

1 KB

Clock Speed

16 MHz

**Linux**

Processor

Atheros AR9331

Architecture

MIPS @400MHz

Operating Voltage

3.3V

Ethernet

IEEE 802.3 10/100Mbit/s

WiFi

IEEE 802.11b/g/n

USB Type-A

2.0 Host/Device

Card Reader

Micro-SD only

RAM

64 MB DDR2

Flash Memory

16 MB

PoE compatible 802.3af card support

Yún dispone de un interface Ethernet y Wifi y USB Host, lo que le
proporciona una conectividad extraordinaria. En breve seguro que se
publican aplicaciones donde se conecta una cámara al USB pudiendo
acceder a ella por Wifi.

Dada la complejidad del equipo dispone de muchos LEDs indicadores

![](http://arduino.cc/en/uploads/Main/YunStatusLEDs.png)

Y de 3 pulsadores Reset:

-   Uno para el equipo Arduino
-   Otro para el equipo Linux
-   Otro para el wifi.

Si realizamos una pulsación suficientemente larga sobre ellos se
devuelve al sistema hasta su configuración y estado por defecto
(borrando los cambios que hayamos hecho)

![](http://arduino.cc/en/uploads/Main/YunResetIllustrations.png)

Una de las novedades de Arduino Yún es que permite ser programado
inalámbricamente, via Wifi. Al conectarse a nuestro wifi aparecerá un
puerto más que representa esta conexión wifi.

A continuación un par de vídeos sobre Yún

Primeras impresiones Arduino Yún I

Primeras impresiones Arduino Yún II

Vamos a incluir el pinout completo de la placa

![Arduino
Yun](http://www.pighixxx.com/test/wp-content/uploads/2014/11/yun.png)
