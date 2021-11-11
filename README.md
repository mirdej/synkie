The Synkie is a modular open source analog video processor, developed by Michael Egger, Max Egger and Flo Kaufmann. A bit like the venerable modular Moog synthesizer it lets you toy around with the signal using patch cables – but this time not producing sound but images. It is an instrument for video, a playground, a platform to explore new ways to transform a video signal. Synkie is still in development, we constantly develop new modules – and even the base specifications may still change over time. 

Synkie’s main goal is playability not image quality, even though we try to design each module as best as we can. But patching is done with 2mm laboratory cables – not shielded 75Ohm BNC cables as one would normally use for video. No, you can even use any blank wire and tinker around with the signal in real time on the sk90-breadboard module… The laboratory plugs can be stacked, so you can easily divide the signal into multiple paths, feeding multiple modules at once and change the configuration on the fly. The resulting image can get quite messy down the road, but that’s part of the fun, or maybe even the main purpose…

# Before building stuff from here yourself - read this:

This Github repository is our working space and not a DIY tutorial. Lots of stuff is completely outdated and/or poorly documented. Here are some important notes about the current state of things (Oct 2021):

- Pretty much everything in the EAGLE directory is totally obsolete and we only keep it for documentation.

- We settled on the LMH6643 as our Opamp of choice for almost everything where frequency response matters. Not all schematics reflect this. In most cases if there's an opamp named "generic opamp" or even "LM833" - we probably meant LMH6643.

- There are several modules where the supply connector is flipped. As we etch a lot of boards ourselves there is no silkscreen and we don't see the error. ALWAYS check the polarity !

- We live in PAL land. These modules have not beent tested with NTSC video. Some might need to be adapted slightly, some might even work better than here ;-)

If you have any questions contact [info@synkie.net]()


#Basics

##Synkie Backbone
Modules sk000 to sk009 constitute the Synkie Backbone – handling Ins out Outs to the normal Video World. Input video is clamped (black level = GND) and stripped of timing signals and color burst. This signal can then be fed to any processing modules.
In the end , timing signals and a phase corrected color burst is cut back into the modified signal, in sync with the Genlock input.

![](doc/backbone.png)

### sk000-power
Power distribution to backbone modules and rack. +5V, GND, -5V.
### sk001-genlock-in
This module takes any standard video signal as input and generates all necessary timing signals for the Synkie system. The input is first backporch-clamped to GND and all active video is cut off. This black image can serve as a genlock for connected sources (cameras). Colorburst is output as a seperate signal and used to syncronise a quartz crystal that generates a continuous 4.4336Mhz subcarrier signal for the rgb modules. A LM1881 generates the digital sync signals: horizontal sync, vertical sync, backporch and odd/even.

###sk002-input
This modules takes any standard video signal, clamps black level to GND and strips off synctips and colorburst. (still in active debate: me thinks sk002 should apply a gain of 1.43 to bring the 0.7V white level up to 1V)

###sk003-output
This module takes any signal as its input (from DC to 10Mhz). The scale-bias section controls amplitude and dc-shift. The signal is then clipped hard between 0V and 1V. Finally the resyncer adds synctips and colorburst to make it look loike a standard video signal. 
When using video as an input to the sk003 any processing beforehand can add some tiny delay - depending on how many modules the signal passes through -  which causes a phase shift in the signal that can alter or completely destroy color. That is why the burst signal from sk001 first goes through a sk004-burstshift (allpass filter) that lets correct the phase error before it gets cut back into the video signal.

##Synkie Signals

###Terminology
| Signal name | Waveform| Description  |Specs|
|---|---|---|---|
|Genlock|![](doc/genlock.svg)|A video signal that serves as the master syncronisation signal. Can be routed through and used as an input.|-0.3V to 0.7V|
|Video|![](doc/video.svg)|Standard PAL video signal|-0.3V to 0.7V|
|Sync| ![](doc/sync.svg)|Digital sync pulses: H-Sync, V-Sync, Backporch, Odd/Even|0V to 5V|
|Burst|![](doc/burst.svg)| Colorburst only, AC coupled|ca. -0.1V to 0.1V|
|Siff| ![](doc/siff.svg)|Synkie signal. Can be anything, DC, CV, Audio or Video. 0V means black. 1V means white|-1V to 1V|

###The SIFF signal
Synkies goal is to be able to mix all signals, be it control signals, audio or picture. You should be able to use a video image as control voltage for a VCO like you should be able to inject a sound into the video or watch a steady 0.256 volts.

* Siff signals are DC coupled. 0V means black. 1V means white.
* Siff signals can still be negative, meaning superblack or substracting signals !
* Siff signals can be loud - going beyond 1V and below -1V. The sk003-output module will finally limit the signal to 0-1V.
* Siff signals can range from DC (0Hz) to ca. 10Mhz

This has the following implications for synkie modules:

* All module inputs should be high-impedance, DC coupled and ESR protected.
* All module outputs should be low-impedance and DC coupled.
* Whenever possible a module's bandwidth should be at least 4Mhz
* Sensible CV range should be between 0V and 1V.
* But: Modules must be able to cope with voltages as low as -5V to as high as 5V
* Gate signals are 0V to 1V !!
* So: trigger inputs should trigger at around 0.5V ! Use comparators.
