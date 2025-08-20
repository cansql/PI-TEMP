#!/bin/bash

# Pull colour file
source <(curl -sSL https://cansahin.tr/beacol/color.sh)

# Get temperature from vcgencmd output → e.g. temp=52.3'C
TEMP_RAW=$(vcgencmd measure_temp)

# Pull the number → 52.3
TEMP_FLOAT=$(echo "$TEMP_RAW" | grep -oP '[0-9]+\.[0-9]+')

# Discard decimal part, integer only → 52
TEMP_INT=${TEMP_FLOAT%%.*}

#  Make a comparison
if [ "$TEMP_INT" -ge 60 ]; then
    echo -e "${GRAY}Instant Temperature: ${TEMP_FLOAT}°C${RESET}"
    echo -e "${RED}Beware of high temperatures!${RESET}"
else
    echo -e "${GRAY}Instant Temperature: ${TEMP_FLOAT}°C${RESET}"
    echo -e "${BLUE}Your temperature is fine!${RESET}"
fi
