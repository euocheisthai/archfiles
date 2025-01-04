## general

```
# necessary packages
git clone https://github.com/dmitry-s93/MControlCenter.git
git clone https://github.com/lm-sensors/lm-sensors.git
git clone https://github.com/blueman-project/blueman.git
pacman -S flameshot

# aur helpers
git clone https://aur.archlinux.org/package-query.git && cd package-query && makepkg -si
git clone https://aur.archlinux.org/yaourt.git && cd yaourt && makepkg -si
```


## lightdm and shikai greeter

`sudo pacman -Syu lightdm` - make sure you have lightdm. If you have sddm, after installing lighttdm:
```
sudo systemctl disable sddm.service
sudo systemctl enable lightdm.service
```

Check that `/etc/lightdm/lightdm.conf` exists.


```
git clone --recursive https://github.com/JezerM/nody-greeter.git && cd nody-greeter && makepkg -si
git clone https://aur.archlinux.org/shikai-theme.git && cd shikai-theme && makepkg -si 
```

In `/etc/lightdm/lightdm.conf` in `Seat:*` set `greeter-session=nody-greeter`.

In `/etc/lightdm/web-greeter.yml` set `greeter.theme = shikai`, `branding[]` to whatever files you want, but put them in somewhere in `/usr/share/web-greeter/themes/shikai` (or another theme dir).


## (n)vim

`git clone --depth 1 https://github.com/wbthomason/packer.nvim.git ~/.local/share/nvim/site/pack/packer/start/packer.nvim` or with AUR `git clone https://aur.archlinux.org/nvim-packer-git.git && cd nvim-packer-git && makepkg -si`


### lua configs

Confiured in `~/.config/nvim/lua/plugins.lua`

## polybar

default as fuck polybar w tabs renamed

## st

- [st](https://st.suckless.org/)
- [scrollback](https://st.suckless.org/patches/scrollback/)
- [clipboard](https://st.suckless.org/patches/clipboard/)
