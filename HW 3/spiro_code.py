import math
import numpy as np

R = 6
r = 1
a = 8
rev = 12
TT_long = 34.02057838928162
TT_lat = -118.28544238828788

with open("spiro_coordinates.txt",'w') as fw:
    for t in np.arange(0.0, rev*math.pi, 0.01):
        x = str(((R + r) * math.cos((r / R) * t) - a * math.cos((1 + r / R) * t))/10000 + TT_lat)
        y = str(((R + r) * math.sin((r / R) * t) - a * math.sin((1 + r / R) * t))/10000 + TT_long)
        coord=""
        coord+=x+","+y+",0"+"\n"
        fw.write(coord)
