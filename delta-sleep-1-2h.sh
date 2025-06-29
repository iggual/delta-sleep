#!/bin/bash

## The Delta Sleep Sequencer: A Prototype

## READ DISCLAIMER ABOUT LISTENING RESPONSIBILITY & SAFETY FIRST (Find below)!!

## ⚠️ Experimental Tool Disclaimer

# This is an experimental prototype. The sleep phases sequencer was created with good intentions but
# has not undergone rigorous testing, peer review, or validation for safety, efficacy, or reliability. 
# It may contain flaws, inaccuracies, or unintended effects.

## Version 0.1.1
## Added subtle phaser, less monotone, more pleasant listening. Added PHI & phi related frequencies.
## Last Updated: [29-6-2025]

## Test settings
#play -r 44100 "|sox -n -p synth 30 brownnoise fade t 10 0 10 gain -6 tremolo 7.83 70 phaser 0.8 1 0.2 0.4 0.1 -s" 
#play -r 44100 "|sox -n -p synth 30 brownnoise fade t 10 0 10  gain -6 tremolo 1.618 70 phaser 0.8 0.8 0.2 0.4 0.1 -s"
#play -r 44100 "|sox -n -p synth 30 pinknoise fade t 10 0 10 gain -8 tremolo 0.618 50 phaser 0.6 0.6 0.1 0.4 0.1 -s"

# Notes ########
  
# phaser gain-in gain-out delay decay speed [-s|-t]
# play snare.flac phaser 0.8 0.74 3 0.4 0.5 -t

# sox --help-effect fade
# fade [ type ] fade-in-length [ stop-position [ fade-out-length ] ]
#       Time is in hh:mm:ss.frac format.
#       Fade type one of q, h, t, l or p.

# Choices are q for quarter of a sine wave, h for half a sine wave, t for linear slope, l for logarithmic, and p for inverted parabola. 
# The default is logarithmic. (https://linux.die.net/man/1/sox)
################

# Dependency:
# install sox 

##########################################################################################

# Here’s a granular timeline for the first 120 minutes sequence, mapping noise types, tremolo frequencies, and sleep stages in 10-minute intervals:

#=========================================================================================
#----------------+------------------------------------+----------------------------------+
# 00–10: N1   🌑 | Brown noise + 7.83Hz (Schumann)    | Theta/Delta (4–7 Hz) (108 BPM)   |
# 10–20: N2   🌒 | Pink noise + 1.618Hz (Theta)       | Sleep spindles (90 BPM)          |
# 20–30: N3   🌑 | Brown noise + 1.618Hz (Delta)      | Deep sleep (0.5–4 Hz) (90 BPM)   |
# 30–40: N3   🌑 | Brown noise + 0.618Hz (Delta)      | Glymphatic clearance             |
# 40–50: N3   🌑 | Brown noise + 1.618Hz (Delta)      | Growth hormone release           |
# 50–60: N2   🌒 | Pink noise + 6.18Hz (Theta)        | Memory replay                    |
# 60–70: REM  🌕 | White noise + 16.18Hz (Beta)       | Dreaming (12–30 Hz)              |
# 70–80: REM  🌕 | White noise + 16.18Hz (Beta)       | Emotional processing             |
# 80–90: N2   🌒 | Pink noise + 6.18Hz (Theta)        | Spindle bursts                   |
# 90–100: N2  🌒 | Pink noise + 6-18Hz (Theta)        | Light sleep                      |
# 100–110: N3 🌑 | Brown noise + 2Hz (Delta)          | Physical restoration             |
# 110–120: N2 🌒 | Pink noise + 6.18Hz (Theta)        | Wake preparation                 |
#----------------+-----------------------------------+----------------------------------+
#========================================================================================

# 00–10: N1   🌑 | Brown noise + 7.83Hz (Schumann) | Theta/Delta (4–7 Hz) 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 10 0 10 gain -6 tremolo 7.83 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 10–20: N2   🌒 | Pink noise + 1.618Hz (Theta) (PHI)    | Sleep spindles (+12–16 Hz bursts)
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 10 0 10 gain -8 tremolo 1.618 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 20–30: N3   🌑 | Brown noise + 1.618Hz (Delta) (PHI)    | Deep sleep (0.5–4 Hz) 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 10 0 10 gain -6 tremolo 1.618 70 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 30–40: N3   🌑 | Brown noise + 0.618Hz (Delta) (phi)  | Glymphatic clearance  
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 10 0 10 gain -6 tremolo 0.618 70 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 40–50: N3   🌑 | Brown noise + 0.618Hz (Delta) (phi)     | Growth hormone release 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 10 0 10 gain -6 tremolo 0.618 70 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 50–60: N2   🌒 | Pink noise + 6.18Hz (Theta)        | Memory replay 
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 10 0 10 gain -8 tremolo 6.18 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 60–70: REM  🌕 | White noise + 16.18Hz (Beta)       | Dreaming (12–30 Hz)
play -r 44100 "|sox -n -p synth 600 whitenoise fade p 10 0 0 gain -12 tremolo 16.18 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 70–80: REM  🌕 | White noise + 16.18Hz (Beta)       | Emotional processing 
play -r 44100 "|sox -n -p synth 600 whitenoise fade p 0 0 10 gain -12 tremolo 16.18 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 80–90: N2   🌒 | Pink noise + 6.18Hz (Theta)        | Spindle bursts 
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 10 0 0 gain -8 tremolo 6.18 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 90–100: N2  🌒 | Pink noise + 6.18Hz (Theta)        | Light sleep
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 0 0 10 gain -8 tremolo 6.18 50 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 100–110: N3 🌑 | Brown noise + 1.618Hz (Delta)       | Physical restoration 
play -r 44100 "|sox -n -p synth 600 brownnoise fade p 10 0 10 gain -6 tremolo 1.618 70 phaser 0.8 0.8 0.2 0.4 0.1 -s" 

# 110–120: N2 🌒 | Pink noise + 6Hz (Theta)        | Wake preparation
play -r 44100 "|sox -n -p synth 600 pinknoise fade p 10 0 10 gain -8 tremolo 6.18 50 phaser 0.8 0.8 0.2 0.4 0.1 -s"

##########################################################################################

#################################################
# DISCLAIMER: LISTENING RESPONSIBILITY & SAFETY!!
#################################################

# Purpose of This Tool
# This sleep phases sequencer is designed to provide ambient sounds aligned with sleep cycles for general wellness purposes. 
# It is not a medical device, treatment, or diagnostic tool. 

# Critical Volume Warning
# Hearing Safety First:

# Never use this script at high volumes, even if you feel you "need" loud sounds to fall asleep. 
# Prolonged exposure to sounds above 85 dB (decibels) can cause permanent hearing damage, especially during sleep when your ears remain sensitive.
# Start at low volumes and adjust only as needed. 

# Avoid using headphones/earbuds at max volume. For reference:
# Normal conversation ≈ 60 dB
# Busy traffic ≈ 80 dB
# Headphone max volume ≈ 100+ dB
# Special Warning for Headphone Users:

# Over-ear headphones or earbuds can deliver sound directly into the ear canal, increasing risk. 
# Consider using noise-canceling headphones at low volumes instead of cranking up the sound to block external noise.
# Do not fall asleep with in-ear devices (e.g., earbuds). They can cause discomfort, ear infections, or increased hearing risk if volume spikes occur.

# Listening Responsibility

# Volume & Duration: Users assume full responsibility for setting safe volume levels and usage durations. 
# Prolonged exposure to loud sounds (even during sleep) may risk hearing damage.

# Personal Health Awareness: If you have tinnitus, hearing loss, sleep disorders, or other medical conditions, consult a healthcare professional before use.
# Environmental Safety: Ensure the sequencer does not interfere with alarms, emergency alerts, or other critical auditory cues in your environment.

# Medical Disclaimer

# This tool is not a substitute for professional medical advice, diagnosis, or treatment. 
# Always seek the guidance of a licensed healthcare provider for sleep-related concerns or health questions.
# Do not delay or disregard medical advice based on content or features within this sequencer.

# No Liability for Outcomes

# The creator(s) of this sequencer assume no responsibility for:
# Individual health outcomes, including unintended effects of sound exposure.
# Technical malfunctions (e.g., app crashes, incorrect timing of sounds).
# Any reliance on the sequencer’s ability to improve sleep quality.

# Final Disclaimer Note

# Use this tool thoughtfully and adjust settings to suit your comfort. If discomfort, irritation, or adverse effects occur, discontinue use immediately.

# Volume Safety Reminder:

# Keep volume below 60% of maximum if unsure.
# For children or sensitive users, supervise use and prioritize extra-low volumes.
# By using this sequencer, you acknowledge and agree to the terms above.

# Proceed only if you understand and accept the risks of using an untested tool.
# Monitor your body’s response and prioritize safety over "experimentation."
# By using this sequencer, you acknowledge and agree to the terms above.

# Experimental Prototype – Not for Medical Use.

#################################################

## END
