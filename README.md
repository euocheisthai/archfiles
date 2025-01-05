## general

```
# necessary packages
git clone https://github.com/dmitry-s93/MControlCenter.git
git clone https://github.com/lm-sensors/lm-sensors.git
git clone https://github.com/blueman-project/blueman.git
git clone https://github.com/euocheisthai/byedpi.git && cd byedpi && make
pacman -S flameshot extra/xcompmgr

# aur helpers
git clone https://aur.archlinux.org/package-query.git && cd package-query && makepkg -si
git clone https://aur.archlinux.org/yaourt.git && cd yaourt && makepkg -si
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