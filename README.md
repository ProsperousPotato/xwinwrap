# Xwinwrap

Fork of xwinwrap.
Xwinwrap allows you to embed any other X11 window into the root X11 window; now on OpenBSD.

### Installing

```
git clone https://github.com/ProsperousPotato/xwinwrap
cd xwinwrap
make
doas make install
make clean
```

### Uninstalling 

```
cd /path/to/xwinwrap
doas make uninstall
cd ..
rm -rf xwinwrap
```

### Usage

```
Usage: 
    xwinwrap [OPTIONS...] -- <program> [OPTIONS...]
 
Options:
             -g {w}x{h}+{x}+{y}    
                     - Specify Geometry (w=width, h=height, x=x-coord,
                       y=y-coord. ex: -g 640x480+100+100)
             -ni     - Ignore Input
             -argb   - RGB
             -fdt    - Force WID window a desktop type window
             -fs     - Full Screen
             -un     - Undecorated
             -s      - Sticky
             -st     - Skip Taskbar
             -sp     - Skip Pager
             -a      - Above
             -b      - Below
             -nf     - No Focus
             -o      - Opacity value between 0 to 1 (ex: -o 0.20)
             -sh     - Shape of window (choose between rectangle, circle or
                       triangle. Default is rectangle)
             -ov     - Set override_redirect flag (For seamless desktop
                       background integration in non-fullscreenmode) (can cause
                       artifacts on some environments)
             -ovr    - Set override_redirect flag on root window (For seamless
                       desktop background integration in fullscreenmode)
             -d      - Daemonize
             -debug  - Enable debug messages
```

### Example

#### Set neofetch as desktop wallpaper

`xwinwrap -ni -nf -ovr -fs -- xterm -hold -geometry 319x82 -bg black -fg white +sb -into WID -e neofetch`

#### Set htop as desktop wallpaper
`xwinwrap -ni -nf -ovr -fs -- xterm -hold -geometry 319x82 -bg black -fg white +sb -into WID -e htop`

### Changes

* Added ability to make undecorated window
* Changed how desktop window is found
* Refactored window hints
* Add DESKTOP window type flag

* Compiles out-of-the-box on OpenBSD

----
Original source - https://launchpad.net/xwinwrap

----
Forked from - https://github.com/mmhobi7/xwinwrap
