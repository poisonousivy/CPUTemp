from microbit import *
import subprocess
from time import sleep

while True:
    subprocess.run(
        ["powershell", "-Command", "& { .\\before.ps1 }"],
        capture_output=True, text=True
    )  
    result = subprocess.run(
        ["powershell", "-Command", "& { .\\get_temp.ps1 }"],
        capture_output=True, text=True
    )  
    temp = result.stdout.strip()
    print(temp)  
    # display.scroll(str(temp))
    sleep(30)