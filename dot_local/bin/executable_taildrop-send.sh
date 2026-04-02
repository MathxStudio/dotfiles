#!/usr/bin/env bash

mapfile -t devices < <(tailscale status | awk 'NF>2 {print $2}')

if [ ${#devices[@]} -eq 0 ]; then
  kdialog --error "No Tailscale devices found. Is Tailscale running?"
  exit 1
fi

target=$(kdialog --combobox "Select Target Device:" "${devices[@]}")

if [ -n "$target" ]; then
  # run the command and check if it succeeds
  if tailscale file cp "$1" "$target":; then
    kdialog --title "Tailscale" --passivepopup "Sent $(basename "$1") to $target" 5
  else
    kdialog --error "Failed to send $(basename "$1") to $target. Check the connection."
  fi
fi
