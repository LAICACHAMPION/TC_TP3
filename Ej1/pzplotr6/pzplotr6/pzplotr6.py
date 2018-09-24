import matplotlib, sys
matplotlib.use('TkAgg')
from scipy import signal
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import matplotlib.pyplot as plot
import math
import zplane as zp


w0ideal = 13e3
Qideal = 4

w1ideal = w0ideal*(math.sqrt(1+(1/2/Qideal)**2)-1/2/Qideal)
f1ideal = w1ideal/2/math.pi
w2ideal = (w0ideal**2)/w1ideal
f2ideal = w2ideal/2/math.pi
f0ideal = w0ideal/2/math.pi



Rideal = 2.2e3; R6ideal = 8.8e-100; Cideal = 1/w0ideal/Rideal;
Lideal = (Rideal**2)*Cideal;
z, p, k = signal.tf2zpk([2*Lideal/R6ideal, 0], [Lideal*Cideal, Lideal/R6ideal, 1])

zp.zplane(z,p)