#!/usr/bin/env bash
# Student attendacne tracker project Factory.
read -p "User input:" input
mkdir attendance_tracker_{$input} && cd attendance_tracker_{$input}
touch attendance_checker.py
mkdir Helpers
