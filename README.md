# yru-some-FAUST

Some audio effects written with [FAUST language](http://faust.grame.fr). I did
this audio effects mainly for learning and training, i didn't spend many time
on optimizations.

## Licence

I release this code under GPL V3 licence, the text of this licence is joined in
gpl_v3.txt.

## Building

Directly use the FAUST compiler or one of the faust2xxx scripts. For example,
you can do `faust2jaqt echo.dsp` to build a JACK application with Qt ui for the
echo effect. Please note that faust2xxx scripts have dependencies, for example
`faust2jaqt` require JACK and Qt libraries.

