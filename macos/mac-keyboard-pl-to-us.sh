#!/usr/bin/env sh

# https://rakhesh.com/mac/using-hidutil-to-map-macos-keyboard-keys/
# map grave_accent_adn_tilde (0x35) to left_shift (0xE1)
# map non_us_backslash (0x64) to grave_accent_and_tilde (0x35)
# hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000035,"HIDKeyboardModifierMappingDst":0x7000000e1},{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'

cp local.MacKeyboardPLtoUS.plist ~/Library/LaunchAgents/

