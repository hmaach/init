import time
import argparse
from Xlib import X, display
from Xlib.ext import xtest

# Important: run "pip install --user python-xlib" before running this program

def keep_awake(duration_minutes=None):
    """
    Simulates mouse movement to keep the system awake.
    duration_minutes: optional, stop after this many minutes
    """
    dsp = display.Display()
    start_time = time.time()
    duration_seconds = duration_minutes * 60 if duration_minutes else None

    try:
        while True:
            # Check if duration is set and time is up
            if duration_seconds and (time.time() - start_time >= duration_seconds):
                print("\nTimer finished. Exiting.")
                break

            # Get current pointer position
            pointer = dsp.screen().root.query_pointer()
            x, y = pointer.root_x, pointer.root_y

            # Simulate a tiny mouse move
            xtest.fake_input(dsp, X.MotionNotify, x=x + 1, y=y + 1)
            xtest.fake_input(dsp, X.MotionNotify, x=x, y=y)
            dsp.sync()

            time.sleep(5)
    except KeyboardInterrupt:
        print("\nStopped by user.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Keep Linux system awake by simulating mouse activity.")
    parser.add_argument(
        "-t", "--timer",
        type=int,
        help="Optional timer in minutes. The program will exit after this time."
    )
    args = parser.parse_args()
    keep_awake(duration_minutes=args.timer)