ecloud's custom Ergodox layout
==============================

This is a fork of The Kiibohd Controller for the Infinity Ergodox keyboard.

The layout looks like this:

![Image](build/layout.png?raw=true)

The blue labels are effective while the f1 key is held, or while locked into layer 1.

The green labels would be layer 2, but I don't use it and don't dedicate a key for switching into it.

Summary of changes compared to regular ergodox:
* existing ergodox layouts have numbers 0-5 on the left and 6-0 on the right; but Microsoft ergo keyboards have 0-6 on the left; I got used to it, so went with that.  That way all 12 function keys fit across the top row while aligning with the corresponding numbers.
* f1-layer arrow keys are on the same keys as the movement keys in vi
* tab is in the conventional location; it may not be ergonomically optimal but I was having a harder time switching than with the other thumb keys, for some reason
* control is the same as on a Sun keyboard, and I already got used to mapping caps lock to control on conventional keyboards, on all 3 OSes: Linux, OS X and Windows.  This way my habits are more compatible when I have to use a conventional keyboard.
* vertical keys near the center are arrows; this is somehow intuitive for me, so I don't normally use the f1-layer arrows
* I need scroll lock for switching the KVM.  Infinity Ergodox is not yet KVM compatible but I hope it will be some day.  QMK firmware on my Ergodox EZ works fine with the KVM.
* dedicated parentheses because I write Scheme sometimes, and it's useful in other languages too
* I'm not sure yet about the dedicated * and & keys but I didn't figure out what else to put there
* I have LED backlighting behind each key, but it was way too bright by default; so I initialize brightness to 0x03 instead of 0xFF, and it's adjustable.  The firmware is not that stable yet, so I want it to have a reasonable brightness level after a reset instead of having to adjust it manually too often.

build/build.sh will build the firmware files for both halves, and rename the flash scripts too.

The rest of kiibohd's README follows below.

This is the main Kiibohd Firmware.
In general, this should be the **only** git repo you need to clone.
The [KLL](https://github.com/kiibohd/kll) git repo is automatically cloned during the build process.

Please refer to the [KLL](https://github.com/kiibohd/kll) repo or [kiibohd.com](http://kiibohd.com) for details on the KLL (Keyboard Layout Language) Spec.



Official Keyboards
------------------

* MD1      (Infinity Keyboard/IC60 2014/10/15)
* MDErgo1  (Infinity Ergodox /ICED 2015/03/31)
* WhiteFox (Soon to be released?)


The Kiibohd firmware supports a lot of other keyboards, but these are more obscure/custom/lesser known.



Compilation
-----------

Compilation is possible and tested on Windows/Linux/Mac.
Linux is the easiest using this [VM](https://s3.amazonaws.com/configurator-assets/ArchLinux_kiibohd_2015-02-13.tar.gz).

For most people refer [here](https://github.com/kiibohd/controller/tree/master/Keyboards).

For the full compilation details, please refer to the [wiki](https://github.com/kiibohd/controller/wiki).



Supported Microcontrollers
--------------------------

* Teensy 2.0 (Partial)
* Teensy 2.0++
* Teensy 3.0
* Teensy 3.1/3.2
* mk20dx128vlf5
* mk20dx256vlh7


Adding support for more microcontrollers is possible.
Some considerations for minimum specs:

* ~8  kB of SRAM
* ~25 kB of Flash

It's possible to port chips with lower specs, but will be more effort and have fewer features.



Contributions
-------------

Contributions welcome!

* Bug reports
* Documentation and Wiki editing
* Patches (including new features)



Licensing
---------

Licensing is done on a per-file basis.
Some of the source code is from [PJRC/Teensy](http://pjrc.com), other source code is from the [McHck Project](https://mchck.org).
Code written specifically for the Kiibohd Controller use the following licenses:

* MIT
* GPLv3
* Public Domain



Contact
-------

If you really need to get a hold of HaaTa, email is best: `haata@kiibohd.com`

IRC is likely faster though.
`#input.club@irc.freenode.net`
`#geekhack@irc.freenode.net`
`#deskthority@irc.freenode.net`

