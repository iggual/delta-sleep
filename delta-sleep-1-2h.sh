#!/bin/bash

## The Delta Sleep Sequencer: A Prototype

# Here’s a granular timeline for the first 120 minutes sequence, mapping noise types, tremolo frequencies, and sleep stages in 10-minute intervals:

#----------------+-------------------------------- +----------------------------------+
# 00–10: N1   🌑 | Brown noise + 7.83Hz (Schumann) | Theta/Delta (4–7 Hz)             |
# 10–20: N2   🌒 | Pink noise + 6Hz (Theta)        | Sleep spindles (12–16 Hz bursts) |
# 20–30: N3   🌑 | Brown noise + 2Hz (Delta)       | Deep sleep (0.5–4 Hz)            |
# 30–40: N3   🌑 | Brown noise + 2Hz (Delta)       | Glymphatic clearance             |
# 40–50: N3   🌑 | Brown noise + 2Hz (Delta)       | Growth hormone release           |
# 50–60: N2   🌒 | Pink noise + 6Hz (Theta)        | Memory replay                    |
# 60–70: REM  🌕 | White noise + 15Hz (Beta)       | Dreaming (12–30 Hz)              |
# 70–80: REM  🌕 | White noise + 15Hz (Beta)       | Emotional processing             |
# 80–90: N2   🌒 | Pink noise + 6Hz (Theta)        | Spindle bursts                   |
# 90–100: N2  🌒 | Pink noise + 4Hz (Theta)        | Light sleep                      |
# 100–110: N3 🌑 | Brown noise + 2Hz (Delta)       | Physical restoration             |
# 110–120: N2 🌒 | Pink noise + 6Hz (Theta)        | Wake preparation                 |
#----------------+---------------------------------+----------------------------------+

# 00–10: N1   🌑 | Brown noise + 7.83Hz (Schumann) | Theta/Delta (4–7 Hz) 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 3 0 3 gain -6 tremolo 7.83 50" 

# 10–20: N2   🌒 | Pink noise + 6Hz (Theta)        | Sleep spindles (12–16 Hz bursts)
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 3 0 3 gain -8 tremolo 2 50" 

# 20–30: N3   🌑 | Brown noise + 2Hz (Delta)       | Deep sleep (0.5–4 Hz) 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 3 0 0 gain -6 tremolo 2 70" 

# 30–40: N3   🌑 | Brown noise + 2Hz (Delta)       | Glymphatic clearance  
play -r 44100 "|sox -n -p synth 600 brownnoise gain -6 tremolo 2 70" 

# 40–50: N3   🌑 | Brown noise + 2Hz (Delta)       | Growth hormone release 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 0 0 3 gain -6 tremolo 2 70" 

# 50–60: N2   🌒 | Pink noise + 6Hz (Theta)        | Memory replay 
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 3 0 3 gain -8 tremolo 6 50" 

# 60–70: REM  🌕 | White noise + 15Hz (Beta)       | Dreaming (12–30 Hz)
play -r 44100 "|sox -n -p synth 600 whitenoise fade p 3 0 0 gain -12 tremolo 15 50" 

# 70–80: REM  🌕 | White noise + 15Hz (Beta)       | Emotional processing 
play -r 44100 "|sox -n -p synth 600 whitenoise fade p 0 0 3 gain -12 tremolo 15 50" 

# 80–90: N2   🌒 | Pink noise + 6Hz (Theta)        | Spindle bursts 
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 3 0 0 gain -8 tremolo 6 50" 

# 90–100: N2  🌒 | Pink noise + 4Hz (Theta)        | Light sleep
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 0 0 3 gain -8 tremolo 4 50" 

# 100–110: N3 🌑 | Brown noise + 2Hz (Delta)       | Physical restoration 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 3 0 3 gain -6 tremolo 2 70" 

# 110–120: N2 🌒 | Pink noise + 6Hz (Theta)        | Wake preparation
play -r 44100 "|sox -n -p synth 600 pinknoise gain -8 tremolo 6 50"

# Dependency:
# install sox (https://linux.die.net/man/1/sox)

## END
