import math


R = 8;
r = 1;
a = 4;
x0 =R + r - a;
y0 = 0;
f = open("SpirographData.txt", "w")
pi = math.pi
nRev = 16
t = 0
while t < nRev * pi:
        x = (R + r) * math.cos((r / R) * t) - a * math.cos((1 + r / R) * t);
        y = (R + r) * math.sin((r / R) * t) - a * math.sin((1 + r / R) * t);

        f.write("\n")
        f.write(str((y/10000)+(-118.28903171659587))+","+str((x/10000)+(34.02143701224649))+","+str(10))
        t = t + 0.01

