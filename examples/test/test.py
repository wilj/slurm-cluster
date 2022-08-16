#!/usr/bin/env python3
  
import time
import os
import socket
import random
from datetime import datetime as dt
if __name__ == '__main__':
    duration = random.randint(2, 5)
    print(
        f"Process started {dt.now()}\n"
        f"NODE : {socket.gethostname()}\n"
        f"PID  : {os.getpid()}\n"
        f"Executing for {duration} secs\n"
    )
    time.sleep(duration)
    print(f"Process finished {dt.now()}\n")