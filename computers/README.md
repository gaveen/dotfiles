# Personal Desktop Setup - Fedora Workstation

Setting up my preferred desktop configuration.

- **Current distro:** Fedora Workstation 43
- **Defualt DE/WM:** GNOME
- **Current DE/WM:** Niri
- **Distro package manager:** DNF
- **Self-contained app format:** Flatpak
- **Other package tools:** Cargo

## OS Distro Installation

- Supported Fedora Workstation
- GNOME Desktop Environment with default apps
    * Terminal (Ptyxis), Files (Nautilus), Document Viewer (Papers), Boxes, Text Editor, Calculator, Disks, Connections,
    * Audio Player (Decibels), Video Player (Showtime), Image Viewer (Loupe), Fonts, Screenshot Tool
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
sudo dnf install bash-completion neovim ripgrep git curl htop
```

### Install - Minimal Utilities - GUI (via default GNOME)
```bash
sudo dnf install wl-clipboard wmctrl gnome-network-displays fira-code-fonts julietaula-montserrat-fonts adwaita-mono-fonts adwaita-sans-fonts ptyxis
```


### Set up - niri (with DankMaterialShell)
#### Install - Packages
```
sudo dnf copr enable avengemedia/dms
sudo dnf install niri dms wl-mirror
systemctl --user add-wants niri.service dms
```

#### Configure niri

- Current niri config in: [.config/niri/config.kdl](https://github.com/gaveen/dotfiles/blob/main/computers/.config/niri/config.kdl)
- Also check niri documentation for [important post-install](https://yalter.github.io/niri/Important-Software.html) and [screencasting](https://yalter.github.io/niri/Screencasting.html) tips



### Configure Manually

- [Dotfiles](https://github.com/gaveen/dotfiles)
- [Neovimfiles](https://github.com/gaveen/neovimfiles)
- niri (see above)
- Secrets (e.g., SSH keys, GPG keys, etc.)
- Firefox sync
- Basic tools
    * ptyxis (`$ gsettings set org.gnome.Ptyxis.Profile:/org/gnome/Ptyxis/Profiles/[PROFILE_ID]/ opacity 0.9`)
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

### Install - Productivity & Multimedia - Basic
#### Install - Frequently-used Packages
```bash
sudo dnf install \
    toolbox bat wget pandoc croc thefuck zoxide fd-find \
    yt-dlp yt-dlp-bash-completion mpv soundconverter audacity-freeworld \
    steam hexchat kitty exiv2 pngcrush diffpdf pdfmerge libreoffice-draw \
    procps-ng procs util-linux sysstat diskonaut hyperfine \
    iproute nmap netcat socat wireguard-tools tcpdump wireshark
```

#### Install - Less-frequently-used Packages
```bash
sudo dnf install \
    gitg distrobox gedit gedit-plugins vim-enhanced helix powertop dia \
    libdvdcss easytag mplayer speech-dispatcher speech-dispatcher-utils libgda
```

#### Flatpaks - Productivity
```bash
flatpak install flathub md.obsidian.Obsidian
flatpak install com.github.jeromerobert.pdfarranger
flatpak install flathub org.gimp.GIMP
flatpak install flathub org.onlyoffice.desktopeditors
flatpak install flathub net.trowell.typesetter
flatpak install flathub org.gnome.gitlab.somas.Apostrophe
flatpak install flathub org.gnome.gitlab.somas.Apostrophe.Plugin.TexLive
```

#### Flatpaks - Communication
```bash
flatpak install flathub com.discordapp.Discord
```

#### Flatpaks - Utilities
```bash
flatpak install flathub net.nokyan.Resources
flatpak install com.github.tenderowl.frog
```


### Install - Fonts

```bash
sudo dnf install julietaula-montserrat-underline-fonts julietaula-montserrat-alternates-fonts overpass-fonts overpass-mono-fonts redhat-display-fonts redhat-mono-fonts redhat-text-fonts rsms-inter-fonts dejavu-fonts-all adobe-source-sans-pro-fonts adobe-source-code-pro-fonts adobe-source-serif-pro-fonts jetbrains-mono-fonts-all mozilla-zilla-slab-fonts levien-inconsolata-fonts google-roboto-fonts google-roboto-slab-fonts google-roboto-mono-fonts google-roboto-condensed-fonts google-noto-sans-fonts google-noto-serif-fonts google-noto-sans-sinhala-fonts lklug-fonts sil-charis-fonts sil-charis-compact-fonts abattis-cantarell-fonts comic-neue-fonts comic-neue-angular-fonts catharsis-cormorant-fonts-all google-rubik-fonts polarsys-b612-fonts-all cascadia-fonts-all intel-one-mono-fonts
```


## Dev Tools Setup
### Setup Dev Tools
#### Dependencies
```bash
sudo dnf install binutils gcc cmake openssl-devel clang llvm lldb lsof ctags rr python3-gpg
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

#### [Deno](https://deno.com/)
```bash
curl -fsSL https://deno.land/install.sh | sh
```

#### [Zellij](https://zellij.dev/)

#### [Zed](https://zed.dev/download)

#### Optional eBPF tools
```bash
sudo dnf install bpftool bcc bcc-tools bpftop libbpf-tools bpfmon bpftrace
```


## Install - Cargo-based Utilities - CLI

```bash
cargo install --locked typst-cli
cargo install --locked --bin jj jj-cli
cargo install --locked ripgrep_all
cargo install --locked miniserve
cargo install cargo-auditable cargo-audit cargo-watch cargo-generate bindgen-cli systemfd
cargo install systeroid difftastic erdtree nu viu eza binsider television rusty-rain fresh-editor just
```


## Misc
### Optional Set up - GNOME Look & Feel
#### Install - Packages
```bash
sudo dnf install \
    gnome-tweaks gnome-extensions-app gnome-shell-extension-appindicator gnome-shell-extension-dash-to-dock
```

#### Configure GNOME Tweaks
Fonts:

- Interface Text: Adwaita Sans `11`
- Document Text: Monstserrat Medium `11`
- Monospace Text: Fira Code weight=450 `12`
- Hinting: Slight
- Anti aliasing: Standard (grayscale)

Icons:

- Current icon theme: [Tela](https://github.com/vinceliuice/Tela-icon-theme)


#### Install & Configure - GNOME Shell Extensions

Backup config dump: `$ dconf dump /org/gnome/shell/extensions/[EXTENSION]/ > [EXTENSION].dconf`

Restore config dump: `$ dconf load /org/gnome/shell/extensions/[EXTENSION]/ < [EXTENSION].dconf`

##### [Copyous](https://github.com/boerdereinar/copyous)

##### Dash to Dock

- Dash to Dock config in: [dash-to-dock.dconf](https://github.com/gaveen/dotfiles/blob/main/computers/dconfs/dash-to-dock.dconf)

##### [Floating Mini Panel](https://github.com/ghi59/floating-mini-panel)
##### [PaperWM](https://github.com/paperwm/PaperWM)

- PaperWM config in: [paperwm.dconf](https://github.com/gaveen/dotfiles/blob/main/computers/dconfs/paperwm.dconf)
- PaperWM styling in: [.config/paperwm/user.css](https://github.com/gaveen/dotfiles/blob/main/computers/.config/paperwm/user.css)

##### [Switcher](https://github.com/daniellandau/switcher)

- Switcher config in: [switcher.dconf](https://github.com/gaveen/dotfiles/blob/main/setup/dconfs/switcher.dconf)

##### [Wiggle](https://github.com/mechtifs/wiggle) (Outdated by F43 release day)


### Optional Configure Alternatives

```bash
sudo alternatives --config nc
sudo alternatives --config x-terminal-emulator
```

### Optional Flatpaks
#### Flatpaks - Utilities
```bash
flatpak install flathub io.github.giantpinkrobots.varia
```

#### Flatpaks - Flatpak Management
```bash
flatpak install flathub io.github.flattool.Warehouse
flatpak install flathub com.github.tchx84.Flatseal
```
