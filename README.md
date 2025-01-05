## general

```
# necessary packages
git clone https://github.com/dmitry-s93/MControlCenter.git
git clone https://github.com/lm-sensors/lm-sensors.git
git clone https://github.com/euocheisthai/byedpi.git && cd byedpi && make
git clone https://aur.archlinux.org/package-query.git && cd package-query && makepkg -si
git clone https://aur.archlinux.org/yaourt.git && cd yaourt && makepkg -si

pacman -S efibootmgr gparted ntfs-3g ntfsprogs gnome-disk-utility xfsprogs extra/sysstat strace dmidecode base-devel openssh extra/bind unzip libinput corectrl i2c-tools i2c-tools libqt5widgets5 qt5-base qt5-base sfml noto-fonts-emoji noto-fonts-emoji tcpdump nmap neovim konsole lscpu core/util-linux gdb core/iptables-nft pkgfile 

# additional 
pacman -S lxqt xdg-utils sddm nm-tray ttf-freefont extra/github-cli tree alsa-tools alsamixer alsa-utils radare2 hwinfo byedpi-bin lsof bluez bluez-utils blueman xscreensaver extra/arp-scan fltk fcitx5 fcitx-configtool kcm-fcitx libpulse libstatgrab libsysstat lm_sensors

```


## lightdm and greeter

`sudo pacman -Syu lightdm` - make sure you have lightdm. If you have sddm, after installing lighttdm:
```
sudo systemctl disable sddm.service
sudo systemctl enable lightdm.service
```

Check that `/etc/lightdm/lightdm.conf` exists.

### greeter
```
yay -S lightdm-mini-greeter
```

In `/etc/lightdm/lightdm.conf` in `Seat:*` set `greeter-session=lightdm-mini-greeter`. Edit `/etc/lightdm/lightdm-mini-greeter.conf`.


## (n)vim

`git clone --depth 1 https://github.com/wbthomason/packer.nvim.git ~/.local/share/nvim/site/pack/packer/start/packer.nvim` or with AUR `git clone https://aur.archlinux.org/nvim-packer-git.git && cd nvim-packer-git && makepkg -si`

lua configs: confiured in `~/.config/nvim/lua/plugins.lua`

## polybar

default as fuck polybar w tabs renamed

## st

- [st](https://st.suckless.org/)
- [scrollback](https://st.suckless.org/patches/scrollback/)
- [clipboard](https://st.suckless.org/patches/clipboard/)
- [alpha](https://st.suckless.org/patches/alpha/)
- [hidecursor](https://st.suckless.org/patches/hidecursor/)

Additional:
- [tabbed](https://tools.suckless.org/tabbed/)


## dmenu

tba


### old xinitrc

```
xset +fp /usr/share/fonts/local 
xset fp rehash
xrandr --output Virtual-1 --mode 1920x1080
xwallpaper --zoom /home/wy/Images/Wallpapers/blackmetal.jpg
picom -b &
slstatus &
exec dwm
```