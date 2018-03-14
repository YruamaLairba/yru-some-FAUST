//delay in second
ma = library("maths.lib");
delayInSample = ma.SR * hslider ( "delay in second" , 0.5 , 0 , 1, 0.001);
feedback = hslider ( "feedback", 0.75, 0, 1, 0.001);
process =   +(_)~(_@delayInSample*feedback);
