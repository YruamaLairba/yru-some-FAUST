//delay in sample
delay = hslider ( "delay" , 22050 , 0 , 44100 , 1) ;
feedback = hslider ( "feedback", 0.75, 0, 1, 0.001);
process =   +(_)~(_@delay*feedback);
