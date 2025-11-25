
# 🌡️ Raspberry Pi Temperature Monitor Script

This is a simple and lightweight Bash script that checks the **CPU temperature** of your Raspberry Pi (tested on Raspberry Pi 5) using `vcgencmd`.  
It displays the current temperature and warns the user if it exceeds a safe threshold.

---

## 📁 Files

- `temperature.sh`: The main script that shows the current temperature and prints a warning if it's too high.
- Colors are sourced from a separate file hosted at: `https://static.cansahin.tr/beacol/color.sh`

---

## ⚙️ Features

- Uses **vcgencmd** to fetch the current temperature.
- Parses the temperature value without requiring `bc` or external tools.
- Automatically warns if the CPU temperature is **60°C or higher**.
- Includes **colorized output** for better readability.

---

## 🧪 Example Output

```
Instant Temperature: 52.3°C
Your temperature is fine!
```

```
Instant Temperature: 65.0°C
Beware of high temperatures!
```

---

## 🚀 How to Use

1. **Download the script:**
   ```bash
   curl -o temperature.sh https://static.cansahin.tr/pi-temp/pi-temp.sh
   ```

2. **Make it executable:**
   ```bash
   chmod +x temperature.sh
   ```

3. **Run it:**
   ```bash
   ./temperature.sh
   ```

---

## ⛔ Requirements

- Raspberry Pi (Pi 4 or Pi 5 recommended)
- `vcgencmd` command must be available (usually preinstalled on Raspberry Pi OS)
- Internet connection (only required to load the color scheme)

> ❗ No need for `bc` or additional packages. The script works with basic Bash only.

---

## 📝 Customization

- You can change the temperature threshold by modifying this line:
  ```bash
  if [ "$TEMP_INT" -ge 60 ]; then
  ```

---
