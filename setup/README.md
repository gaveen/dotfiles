# Personal Desktop Setup - Fedora Workstation

Setting up my preferred desktop configuration.

- **Current distro:** Fedora Workstation 42
- **Current DE:** GNOME
- **Current WM:** PaperWM
- **Distro package manager:** DNF
- **Self-contained app format:** Flatpak
- **Other package tools:** Cargo

## OS Distro Installation

- Supported Fedora Workstation
- GNOME Desktop Environment with default apps
    * Ptyxis, Text Editor, Nautilus, Papers, Boxes, Image Viewer, Calculator, Fonts, Disks, Connections, Decibels, Showtime, Screenshot tool
- Firefox
- LibreOffice
    * Writer, Calc, Impress


## Basic Post-install Configurations

### Set up - Extra Repos
#### Set up - [RPMFusion.org](https://rpmfusion.org/)
```bash
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install rpmfusion-free-release rpmfusion-free-release-tainted rpmfusion-nonfree-release rpmfusion-nonfree-release-tainted
sudo dnf update @core
sudo dnf install rpmfusion-\*-appstream-data
```

#### Set up - [Flathub.org](https://flatpak.org/setup/Fedora/)
```bash
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```


## Minimal Desktop Setup
### Install - Minimal Utilities - CLI
```bash
sudo dnf install bash-completion curl git htop neovim ripgrep    
```

### Install - Minimal Utilities - GUI
```bash
sudo dnf install gnome-network-displays ptyxis wl-clipboard wmctrl xsel
```

### Set up - GNOME Look & Feel
#### Install - Packages
```bash
sudo dnf install \
	gnome-tweaks gnome-extensions-app gnome-shell-extension-appindicator gnome-shell-extension-blur-my-shell gnome-shell-extension-dash-to-dock \
	adwaita-mono-fonts adwaita-sans-fonts fira-code-fonts mozilla-fira-mono-fonts mozilla-fira-sans-fonts julietaula-montserrat-fonts julietaula-montserrat-alternates-fonts
```

#### Configure - GNOME Shell Extensions
##### Configure GNOME Tweaks
Fonts:

- Interface Text: Adwaita Sans `11`
- Document Text: Monstserrat Medium `11`
- Monospace Text: Fira Code weight=450 `12`
- Hinting: Slight
- Anti aliasing: Standard (grayscale)

Icons:

- Current icon theme: [Tela](https://github.com/vinceliuice/Tela-icon-theme)

#### Configure - GNOME Shell Extensions

- Blur My Shell
- Dash to Dock

#### Install & Configure - Manual - GNOME Shell Extensions
##### [Wiggle](https://github.com/mechtifs/wiggle)
##### [Floating Mini Panel](https://github.com/ghi59/floating-mini-panel)
##### [Extension List](https://github.com/tuberry/extension-list)
##### [PaperWM](https://github.com/paperwm/PaperWM)

- PaperWM styling in: [.config/paperwm/user.css](https://github.com/gaveen/dotfiles/blob/main/.config/paperwm/user.css)

###### PaperWM Settings -> General

- Selected window border size (px): `3`
- Selected window border-radius for top corners (px): `12`
- Selected window border-radius for bottom corners (px): `12`
- Gap between windows: `6`
- Horizontal margin: `6`
- Top margin: `6`
- Bottom margin: `6`

###### PaperWM Settings -> Advanced

- Other settings -> Maximize within tiling: true

###### PaperWM Settings -> Winprops
Configuration dump from: `$ dconf read /org/gnome/shell/extensions/paperwm/winprops`

```
[
'{"wm_class":"ca.edestcroix.Recordbox","scratch_layer":true}',
'{"wm_class":"dev.mufeed.Wordbook","scratch_layer":true}',
'{"wm_class":"discord","scratch_layer":true}',
'{"wm_class":"evince","preferredWidth":"50%"}',
'{"wm_class":"Gimp-2.10","title":"/ - GIMP$/","preferredWidth":"100%"}',
'{"wm_class":"Hexchat","scratch_layer":true}',
'{"wm_class":"io.bassi.Amberol","scratch_layer":true}',
'{"wm_class":"kitty","preferredWidth":"50%"}',
'{"wm_class":"mpv","preferredWidth":"50%"}',
'{"wm_class":"org.gnome.Boxes","preferredWidth":"100%"}',
'{"wm_class":"org.gnome.Calculator","scratch_layer":true}',
'{"wm_class":"org.gnome.Decibels","scratch_layer":true}',
'{"wm_class":"org.gnome.Extensions","scratch_layer":true}',
'{"wm_class":"org.gnome.Nautilus","preferredWidth":"50%"}',
'{"wm_class":"org.gnome.NetworkDisplays","scratch_layer":true}',
'{"wm_class":"org.gnome.Ptyxis","preferredWidth":"50%"}',
'{"wm_class":"org.gnome.Settings","scratch_layer":true}',
'{"wm_class":"org.gnome.SystemMonitor","scratch_layer":true}',
'{"wm_class":"org.gnome.TextEditor","preferredWidth":"50%"}',
'{"wm_class":"protonvpn-app","scratch_layer":true}',
'{"wm_class":"soundconverter","scratch_layer":true}',
'{"wm_class":"steam","scratch_layer":true}',
'{"wm_class":"via-nativia","scratch_layer":false}',
'{"wm_class":"zoom","scratch_layer":true}',
'{"wm_class":"io.github.giantpinkrobots.varia","scratch_layer":true}'
]
```

### Configure Manually

- [Dotfiles](https://github.com/gaveen/dotfiles)
- [Neovimfiles](https://github.com/gaveen/neovimfiles)
- Secrets (e.g., SSH keys, GPG keys, etc.)
- Firefox sync
- Basic tools
    * ptyxis
    * gnome-text-editor
    * nautilus
- LibreOffice
    * defaults (e.g., page, font, spacing, etc.)
    * galleries
    * icons
    * colors
- Extra fonts (e.g., `.local/share/fonts/`)
- Extra terminals
    * kitty
    * [alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)


## Productivity & Multimedia Setup

### Setup Productivity Tools

- [Dropbox](https://www.dropbox.com/)
- [Hugo](https://github.com/gohugoio/hugo/releases)
- [Typst](https://github.com/typst/typst/releases)

### Install - Productivity & Multimedia - Basic
#### Install - Frequently-used Packages
```bash
sudo dnf install \
    toolbox yt-dlp yt-dlp-bash-completion mpv soundconverter hexchat kitty \
    pandoc exiv2 pngcrush pdfarranger diffpdf pdfmerge \
    bat thefuck zoxide fd-find procps-ng procs util-linux sysstat diskonaut hyperfine \
    wget iproute nmap netcat socat wireguard-tools tcpdump wireshark steam
```

#### Install - Less-frequently-used Packages
```bash
sudo dnf install \
	gitg distrobox gedit gedit-plugins vim-enhanced helix powertop libreoffice-draw dia \
	libdvdcss easytag audacity-freeworld mplayer speech-dispatcher speech-dispatcher-utils
```

#### Flatpaks - Flatpak Management
```bash
flatpak install flathub io.github.flattool.Warehouse
flatpak install flathub com.github.tchx84.Flatseal
```

#### Flatpaks - Productivity
```bash
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub org.gimp.GIMP
flatpak install flathub io.github.zen_browser.zen
flatpak install flathub org.gnome.gitlab.somas.Apostrophe
flatpak install flathub org.gnome.gitlab.somas.Apostrophe.Plugin.TexLive
flatpak install flathub io.github.giantpinkrobots.varia
```

#### Flatpaks - Communication
```bash
flatpak install flathub com.discordapp.Discord 
flatpak install flathub in.cinny.Cinny
```


### Install - Fonts

```bash
sudo dnf install overpass-fonts overpass-mono-fonts redhat-display-fonts redhat-mono-fonts redhat-text-fonts rsms-inter-fonts dejavu-fonts-all adobe-source-sans-pro-fonts adobe-source-code-pro-fonts adobe-source-serif-pro-fonts jetbrains-mono-fonts-all mozilla-zilla-slab-fonts levien-inconsolata-fonts google-roboto-fonts google-roboto-slab-fonts google-roboto-mono-fonts google-roboto-condensed-fonts google-noto-sans-fonts google-noto-serif-fonts google-noto-sans-sinhala-fonts lklug-fonts sil-charis-fonts sil-charis-compact-fonts abattis-cantarell-fonts comic-neue-fonts comic-neue-angular-fonts catharsis-cormorant-fonts-all google-rubik-fonts polarsys-b612-fonts-all cascadia-fonts-all intel-one-mono-fonts
```


## Dev Tools Setup
### Setup Dev Tools
#### Dependencies
```bash
sudo dnf install binutils gcc cmake openssl-devel llvm lldb lsof ctags rr python3-gpg
```

#### [Rust](https://rust-lang.org/tools/install/)
##### Install Rustup
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

##### Rustup Components
```bash
rustup component add rust-src
rustup component add rust-analyzer
```

##### Install - (Cargo-based) Dev Tools & Utilities - CLI

```bash
cargo install --locked --bin jj jj-cli
cargo install cargo-auditable cargo-audit cargo-watch cargo-generate bindgen-cli systemfd
cargo install systeroid difftastic erdtree nu viu eza binsider television rusty-rain
cargo install --locked miniserve
cargo install --locked ripgrep_all
```

#### [Deno](https://deno.com/)
```bash
curl -fsSL https://deno.land/install.sh | sh
```

#### [Zellij](https://zellij.dev/)

#### [VS Code](https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions)

#### eBPF
```bash
sudo dnf install bpftool bcc bcc-tools bpftop libbpf-tools bpfmon bpftrace
```


## Misc
### Configure Alternatives

```bash
sudo alternatives --config nc
sudo alternatives --config x-terminal-emulator
```
