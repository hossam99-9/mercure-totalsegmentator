from app import TotalSegmentatorApp
import sys
import logging

if __name__ == "__main__":
    logging.basicConfig(filename=sys.stdout, level=logging.INFO)
    TotalSegmentatorApp(do_run=True)
