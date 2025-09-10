# 🎯 ESX HUD UI – 

A Simple ESX HUD UI 

---

## 🚀 Features

- Bar:
  - ❤️ Health
  - 🛡️ Armor
  - 🍔 Hunger
  - 💧 Thirst
- Dynamic Updates via `SendNUIMessage`
- ESX-compatibility(`esx_status`)
- Easy to configure HTML/CSS
- Easy Design 

---

## 📦 Installation

1. **Folder**  
   - Put the folder in to your 'ressource' folder and add it to the server.cfg

2. **fxmanifest.lua config**

   ```lua
   fx_version 'cerulean'
   game 'gta5'

   ui_page 'html/index.html'

   files {
       'html/index.html',
       'html/style.css',
       'html/script.js'
   }

   client_script 'cl_main.lua'
   server_script 'sv_main.lua'

3. **Please read**
  - It's my first FiveM Hud so it doesn't look so good

4. **Info**
   -https://www.w3schools.com/cssref/css_colors.php Here is the side if you need the colors