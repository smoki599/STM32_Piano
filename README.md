# STM32_Piano
# UVOD  

V tem projektu sem naredil klavir na zaslonu na dotik s pomočjo STM32H750 discovery kit-a v sklopu predmeta 
Vhodno-Izhodne naprave s pomočjo profesorja Roberta Rozmana. Program je bil napisan v okolju STM32CubeIDE v 
C/C++. Na podlagi projekta Minesweeper (https://github.com/AljazJus/Stm32H750B-DK_Minesweeper). 
 

# CILJ PROJEKTA 

Cilj je ustvariti klavirsko tipkovnico, ki ob pritisku nanjo generira ustrezen PWM signal glede na pritisnjeno tipko.  

 

# KOMPONENTE 

- STM32H750 discovery kit 

- Passive buzzer 

- Wires 

- *Breadboard 

# PRIKLOP 

Začnemo tako da STM32H750 dodamo FAN-OUT EXPANSION BOARD. 
Iz FAN-OUT EXPANSION BOARD vežemo PWM na pozitiven pin brenčača in GND na negativen pin. 
Nato priklopimo STM32H750 v računalnik. 

# ZAGON PROGRAMA 

V programskem okolju STM32CubeIDE odpremo delovno površino (workspace) in dodamo projekt z File->Open project from File System...
V Import source izberemo mapo z projektom in končamo (Finish). 
V Project Explorer-ju z desnim klikom izberemo projekt in izberemo opcijo Build Project nato s ponovnim desnim klikom izberemo
Run As -> 1 STM32 C/C++ Application. 

# INICIALIZACIJA 

V main.c inicializiramo CPU Cache, HAL in LCD zaslon, nato inicializiramo TIM2 (timer), ki ga vežemo na PWM pin (GPIO_PIN_3).  

# IZRIS 

Po opravljenih inicializaciajh izrišemo tipkovnico na ekran. Z dvema zanakma izrišemo 11 belih tipk in 8 črnih. Note segajo od F4 do B5. 

# GLAVNA ZANKA 

Nato pridemo v glavno zanko, kjer na določene intervale preverimo trenutno stanje na ekranu. V primeru dotika dobimo položaj dotika.  
Na podlagi dotika določimo tipko, ki je bila pritisnjena in si jo shranimo. Program izbere noto  iz knjižnice melody.h in nastavi 
primerno frekvenco na PWM-ju. Tipka se nato obarva sive barve dokler jo držimo. 

# SPREMINJANJE TONA 

Za spremembo tona uporabljam funkcijo setPWM. Ta ustavi pošiljanje PWM signala in ponovno nastavi frekvenco. Po uspešni nastavitvi PWM ponovno začne. 

# DETEKCIJA TIPKE 

Za detekcijo dotika uporabimo BSP knjižnice, da dobimo trenutni položaj. 
Na podlagi y koordinate geldamo črne ali bele tipke ter glede na x koordinato ugotovimo tipko, ki je bila pritisnjena. 

 
