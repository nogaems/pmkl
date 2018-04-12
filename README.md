# pmkl
Print my keyboard layout: [Proof of concept] (https://github.com/nogaems/pmkl/blob/master/pmkl.sh)

## Gentoo:
```
curl https://raw.githubusercontent.com/nogaems/pmkl/master/{0001-keyboard-layout-indicator.patch} -o /etc/portage/patches/x11-misc/xscreensaver-<version>/#1
emerge -1 xscreensaver
```

This patch will add keyboard layout indicator to the xscreensaver lock screen. Like this:
![screenshot](https://raw.githubusercontent.com/nogaems/pmkl/screenshot/ofmrhd.png)

This wigdet has been developed and tested at xscreensaver version `5.36`. Further you must be careful in using this patch in new versions of xscreensaver.

## Any other GNU/Linux distro
You must suffer. Or build xscreensaver bypassing your packet manager this way:

```
cd <directory-with-sources-of-xscreensaver>
curl https://raw.githubusercontent.com/nogaems/pmkl/master/0001-keyboard-layout-indicator.patch | patch -p1
./configure
make
sudo make install
```

But don't forget to suffer.
