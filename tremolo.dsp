//tremolo
os = library("oscillators.lib");

rate = hslider ( "rate in hz" , 1, 0.10, 10, 0.001);
depth = hslider ( "depth" , 0.5, 0, 1, 0.001);
envelope= 0.5 *((2-depth)+depth*os.oscsin(rate));
process = _ * envelope;


