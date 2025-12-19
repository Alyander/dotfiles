#!/bin/python
from datetime import datetime

now = datetime.now()

if now.day == 30:
    new_year = datetime(now.year + 1, 1, 1)

    delta = new_year - now
    hours_left = delta.total_seconds() // 3600

    print(f"{int(hours_left)} hours")

elif now.day == 31:
    new_year = datetime(now.year + 1, 1, 1)

    delta = new_year - now
    hours_left = delta.total_seconds() // 3600
    minutes_left = (delta.total_seconds() % 3600) // 60  # ← ИСПРАВЛЕНО

    print(f" {int(hours_left)} hours {int(minutes_left):02d} mins")

else:
    print(f" {31 - now.day} days")
