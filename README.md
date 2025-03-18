# 🍵 Controlul Infuziei de Ceai cu Microcontroler / Tea Brewing Automation with Microcontroller

Un proiect inovator care automatizează procesul de preparare a ceaiului folosind un microcontroler ATmega328P.

An innovative project that automates the tea brewing process using an ATmega328P-based microcontroller system.

---

## 🧩 Prezentare Generală / Overview

🎯 **RO:**  
Acest proiect automatizează prepararea ceaiului utilizând o mini-macara controlată de un microcontroler ATmega328P. Sistemul folosește servomotoare, LED-uri și butoane pentru a gestiona coborârea și ridicarea pliculețului de ceai în funcție de un temporizator programabil.

🎯 **EN:**  
This project automates tea preparation using a mini-crane controlled by an ATmega328P microcontroller. The system uses servo motors, LEDs, and buttons to manage the dipping and lifting of the tea bag based on a programmable timer.

---

## 🚀 Funcționalități / Features

- 🕒 **RO:** Temporizator programabil prin buton  
  **EN:** Programmable timer via button

- 🎚️ **RO:** Control manual al servo-ului cu butoane dedicate  
  **EN:** Manual servo control using dedicated buttons

- 🔴 **RO:** LED-uri pentru semnalizarea stării sistemului  
  **EN:** LED indicators for system states

- 🤖 **RO:** Ciclu de calibrare automat la pornire  
  **EN:** Automated calibration cycle on startup

- ⚙️ **RO:** Design modular, extensibil cu senzori suplimentari  
  **EN:** Modular design, extendable with additional sensors

- 💡 **RO:** Utilizare educațională și practică  
  **EN:** Educational & practical use case

---

## 🔧 Tehnologii Utilizate / Tech Stack

- **Microcontroler**: ATmega328P (Arduino UNO compatibil)  
- **Motor**: SG90 Servomotor Continu  
- **Interfață**: Butoane fizice (Count, Start, Up, Down)  
- **Feedback**: LED-uri (Roșu, Verde, Alb)  
- **Alimentare**: Baterie externă (5V, 2000mAh)  
- **Prototipare**: Breadboard, fire jumper

---

## ⚙️ Descriere Funcționare / How It Works

**RO:**  
1. Sistemul inițializează componentele la pornire.  
2. Utilizatorul setează timpul de infuzare prin apăsarea unui buton albastru.  
3. Servo-ul poate fi controlat manual cu două butoane (sus/jos).  
4. Procesul este pornit cu butonul Start:
    - Pliculețul este coborât în apă.
    - Se declanșează numărătoarea inversă.
    - Pliculețul este ridicat automat la final.
5. LED-urile indică starea procesului (roșu = în desfășurare, verde = finalizat).

**EN:**  
1. The system initializes components on startup.  
2. User sets steeping time via the blue button.  
3. The servo can be manually controlled (up/down) with buttons.  
4. Process starts via the Start button:
    - Tea bag is lowered into the cup.
    - Countdown begins.
    - Tea bag is lifted after time elapses.
5. LEDs provide status feedback (red = brewing, green = done).

---

## 👩‍💻 Autor / Author

**Denisa-Maria Gorea**  
Facultatea de Automatică și Informatică Aplicată
7 Ianuarie 2025
