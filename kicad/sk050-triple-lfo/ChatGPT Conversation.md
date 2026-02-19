From the schematic, R5 + RV1 feed an inverting integrator (U1B) with C4, and U1A acts as the Schmitt trigger. For this topology the oscillation frequency is well-approximated by:

[
f \approx \frac{R3}{4,R4,(R5+RV),C4}
]

With your shown values R3 = 100k and R4 = 10k, that simplifies to:

[
f \approx \frac{2.5}{(R5+RV),C4}
]

Assuming RV1 is used as a rheostat (wiper tied to an end, as drawn), with RV = 0…100kΩ:

[
f_{\max} \approx \frac{2.5}{R5,C4}
]
[
f_{\min} \approx \frac{2.5}{(R5+100k),C4}
]
Frequency ranges for common R5/C4 choices
R5 (Ω)	C4	f_max (Hz) @ RV=0	f_min (Hz) @ RV=100k
4.7k	100 nF	5,319	239
10k	100 nF	2,500	227
22k	100 nF	1,136	192
47k	100 nF	532	170
4.7k	1 µF	532	23.9
10k	1 µF	250	22.7
22k	1 µF	114	19.2
47k	1 µF	53.2	17.0
4.7k	10 µF	53.2	2.39
10k	10 µF	25.0	2.27
22k	10 µF	11.4	1.92
47k	47 µF	1.13	0.362
100k	47 µF	0.532	0.266
47k	100 µF	0.532	0.170
If you want, say, a “typical LFO” band (e.g. ~0.05–20 Hz) tell me that target range and I’ll suggest a small set of R5/C4 combos that land there cleanly with the 0–100k pot.

------------------------------------------------------------------------------------------------------

For your exact schematic (U1A Schmitt + U1B integrator), with R3 = 100k and R4 = 10k, the oscillation frequency is approximately:

[
f \approx \frac{2.5}{(R5+RV),C4}
]

with RV = 0…100kΩ (wired as a rheostat). So:

(f_{\max} \approx \dfrac{2.5}{R5,C4})
(f_{\min} \approx \dfrac{2.5}{(R5+100k),C4})
Below are common-value combinations that target your two “interesting” overall bands. Since one 0–100k pot only gives about a (R5+100k)/R5 span, hitting 0.05→20 Hz and 0.1→100 Hz realistically means switching C4 (and/or R5).

Set A (recommended): keep R5 = 22k, switch C4 to cover ~0.09 Hz → 114 Hz overall
This is a nice “do-most-things” choice.

R5	C4	f_max (Hz) @ RV=0	f_min (Hz) @ RV=100k
22k	1 µF	113.6	20.5
22k	2.2 µF	51.6	9.32
22k	4.7 µF	24.2	4.36
22k	10 µF	11.36	2.05
22k	22 µF	5.16	0.931
22k	47 µF	2.42	0.436
22k	100 µF	1.136	0.205
22k	220 µF	0.516	0.093
What this gives you:

For ~0.1–100 Hz overall: C4 from 1 µF down to 220 µF covers it (with overlaps).
For ~0.05–20 Hz overall: you’ll use mostly 4.7 µF … 470 µF (next table includes 470 µF).
Add one more common value if you want to reach ~0.05 Hz comfortably:

R5	C4	f_max (Hz) @ RV=0	f_min (Hz) @ RV=100k
22k	470 µF	0.242	0.0436
Set B (more “LFO-biased”): keep R5 = 47k, switch C4 for lower frequencies
This shifts everything slower (often useful if you mainly care about sub-Hz).

R5	C4	f_max (Hz) @ RV=0	f_min (Hz) @ RV=100k
47k	2.2 µF	24.2	7.74
47k	4.7 µF	11.31	3.62
47k	10 µF	5.32	1.70
47k	22 µF	2.42	0.774
47k	47 µF	1.13	0.362
47k	100 µF	0.532	0.170
47k	220 µF	0.242	0.0774
47k	470 µF	0.113	0.0362
Practical notes (affects “how true” the low end is)
Electrolytics (100–470 µF) have wide tolerance + leakage → the very lowest frequencies can drift.
Op-amp input bias/leakage and capacitor leakage matter a lot below ~0.1 Hz.