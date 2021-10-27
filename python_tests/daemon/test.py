import daemon 
import numpy as np

import time
import threading


def event_function():
    print("Waiting for event to trigger...")
    event.wait()
    print("Performing action XYZ now...")

def main():
    while True:
        counter = 0
        time.sleep(1)
        a = np.random.randint(1,100,(100,100))
        b = np.random.randint(1,100,(100,100))
        c = a @ b
        counter += 1
        if counter == 1: break

context = daemon.DaemonContext(
        working_directory = "/home/quentin/Programming/set_fetch/daemon_test"
        )

if __name__ == "__main__":
    event = threading.Event()
    t1 = threading.Thread(target=event_function)
    t1.start()
    x = input("\nDo you want to triger the event? (y/n)")
    if x == "y":
        event.set()
        with context:
            main()
        context.close()
