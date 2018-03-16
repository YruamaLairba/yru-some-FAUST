//chorus
ma = library("maths.lib");
os = library("oscillators.lib");

//some constant
MAX_CHORUS_AMPLITUDE_MS = 30;
ADDITIONAL_DELAY_MS = 10;

rate = hslider ( "rate in hz" , 0.4 , 0 , 20, 0.001);
depth = hslider ( "depth", 0.33, 0, 1, 0.001);
mix = hslider ( "mix", 0.5, 0, 1, 0.001);

//variable part of the delay in sample
varDelaySpl = (0.5*(1+os.oscsin(rate)) : min(1) : max(0))*
	(depth*MAX_CHORUS_AMPLITUDE_MS*ma.SR/1000);
//constant part of the delay in sample
cstDelaySpl = ADDITIONAL_DELAY_MS*ma.SR/1000;
//total delay
delaySpl=varDelaySpl+cstDelaySpl;
//function to do a delay with linear interpolation
delayInterpol(x,d) = x <:_@floor(d)*(1-ma.frac(d)) , _@ceil(d)*ma.frac(d):>_;

process =  _<: delayInterpol(_,delaySpl)*mix, _*(1-mix):>_;

