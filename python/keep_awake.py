import time
from Xlib import X, display
from Xlib.ext import xtest

# Important: run this "pip install --user python-xlib" before runing the programe


def keep_awake():
    dsp = display.Display()
    try:
        while True:
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
    keep_awake()
