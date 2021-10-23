The Synkie is a modular open source analog video processor, developed by Michael Egger, Max Egger and Flo Kaufmann. A bit like the venerable modular Moog synthesizer it lets you toy around with the signal using patch cables – but this time not producing sound but images. It is an instrument for video, a playground, a platform to explore new ways to transform a video signal. Synkie is still in development, we constantly develop new modules – and even the base specifications may still change over time. 

Synkie’s main goal is playability not image quality, even though we try to design each module as best as we can. But patching is done with 2mm laboratory cables – not shielded 75Ohm BNC cables as one would normally use for video. No, you can even use any blank wire and tinker around with the signal in real time on the sk90-breadboard module… The laboratory plugs can be stacked, so you can easily divide the signal into multiple paths, feeding multiple modules at once and change the configuration on the fly. The resulting image can get quite messy down the road, but that’s part of the fun, or maybe even the main purpose…

# Before building stuff from here yourself - read this:

This Github repository is our working space and not a DIY tutorial. Lots of stuff is completely outdated and/or poorly documented. Here are some important notes about the current state of things (Oct 2021):

- Pretty much everything in the EAGLE directory is totally obsolete and we only keep it for documentation.

- We settled on the LMH6643 as our Opamp of choice for almost everything where frequency response matters. Not all schematics reflect this. In most cases if there's an opamp named "generic opamp" or even "LM833" - we probably meant LMH6643.

- There are several modules where the supply connector is flipped. As we etch a lot of boards ourselves there is no silkscreen and we don't see the error. ALWAYS check the polarity !


If you have any questions contact info@synkie.net
