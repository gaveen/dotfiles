echo "Do not run this as a script. This file is only for documenting purposes."
echo "Current target: Fedora Workstation 41"
exit 126

# Set Up - RPMFusion.org
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
sudo dnf update @core

# Minimal (plus basic GUI tools) Setup
sudo dnf install curl git bash-completion neovim ripgrep htop \
    ptyxis wl-clipboard wmctrl xsel gitg gnome-network-displays

# Look & Feel
sudo dnf install gnome-tweaks gnome-extensions-app gnome-shell-extension-appindicator gnome-shell-extension-blur-my-shell gnome-shell-extension-dash-to-dock

# Fonts
sudo dnf install fira-code-fonts mozilla-fira-mono-fonts mozilla-fira-sans-fonts julietaula-montserrat-fonts julietaula-montserrat-alternates-fonts overpass-fonts overpass-mono-fonts redhat-display-fonts redhat-mono-fonts redhat-text-fonts rsms-inter-fonts dejavu-fonts-all adobe-source-sans-pro-fonts adobe-source-code-pro-fonts adobe-source-serif-pro-fonts jetbrains-mono-fonts-all mozilla-zilla-slab-fonts levien-inconsolata-fonts google-roboto-fonts google-roboto-slab-fonts google-roboto-mono-fonts google-roboto-condensed-fonts google-noto-sans-fonts google-noto-serif-fonts google-noto-sans-sinhala-fonts lklug-fonts sil-charis-fonts sil-charis-compact-fonts abattis-cantarell-fonts comic-neue-fonts comic-neue-angular-fonts catharsis-cormorant-fonts-all google-rubik-fonts polarsys-b612-fonts-all cascadia-fonts-all intel-one-mono-fonts

# Convenience (minus a few flatpaks) Setup
sudo dnf install \
    distrobox yt-dlp yt-dlp-bash-completion mpv soundconverter hexchat kitty \
    pandoc exiv2 pngcrush pdfarranger diffpdf pdfmerge \
    bat thefuck zoxide fd-find procps-ng procs util-linux sysstat diskonaut hyperfine \
    wget iproute nmap netcat socat wireguard-tools tcpdump wireshark \
    binutils gcc cmake openssl-devel llvm lldb lsof ctags rr python3-gpg
    # # Less frequently used:
    # vim-enhanced helix gedit gedit-plugins toolbox powertop libreoffice-draw dia \
    # libdvdcss easytag audacity-freeworld mplayer speech-dispatcher speech-dispatcher-utils \
    # gnome-shell-extension-user-theme la-capitaine-icon-theme la-capitaine-cursor-theme \
    # bpftool bcc bcc-tools bpftop libbpf-tools bpfmon bpftrace

# Enable Flathub: https://flatpak.org/setup/Fedora/
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Flatpak - Flatpak and related
flatpak install flathub io.github.flattool.Warehouse                            # Manage flatpaks
flatpak install flathub com.github.tchx84.Flatseal                              # Manage permissions for flatpaks

# Flatpak - Productivity
flatpak install flathub md.obsidian.Obsidian                                    # Obsidian notes

# Flatpak - Multimedia
flatpak install flathub org.gimp.GIMP                                           # The GIMP photo editor
flatpak install flathub com.github.rafostar.Clapper                             # Video player
flatpak install flathub io.bassi.Amberol                                        # Audio player
flatpak install flathub org.gnome.Decibels									   # Upcoming default audio player in GNOME

# Flatpak - Communication
flatpak install flathub io.github.zen_browser.zen                               # Zen browser
flatpak install flathub com.discordapp.Discord                                  # Discord
flatpak install flathub in.cinny.Cinny                                          # Matrix chat client

# Manual Installs - Packages / Binary
## Rust (via rustup)                                                            # https://www.rust-lang.org/tools/install   (stable, nightly)
## Zellij                                                                       # https://zellij.dev/
## Hugo                                                                         # https://github.com/gohugoio/hugo/releases
## Dropbox                                                                      # https://www.dropbox.com/
## Deno                                                                         # https://deno.com/
## VS Code                                                                      # https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
## Typst                                                                        # https://github.com/typst/typst/releases

# Rustup - Components
rustup component add rust-src
rustup component add rust-analyzer

# Cargo - CLI Tools
cargo install systeroid difftastic erdtree nu viu eza binsider television rusty-rain
cargo install --locked miniserve
cargo install --locked ripgrep_all

# Cargo - Dev Tools - General
cargo install cargo-auditable cargo-audit cargo-watch cargo-generate bindgen-cli systemfd

# Cargo - Dev Tools - eBPF
# cargo install bpf-linker
# cargo install --git https://github.com/aya-rs/aya -- aya-tool

# Manual changes to defaults
## sudo alternatives --config x-terminal-emulator
## sudo alternatives --config nc

# Manual Set Ups
## dotfiles (i.e., neovim, vim, etc.)
## basic tools (ptyxis, gnome-text-editor, nautilus, etc.)
## additional fonts (e.g., .local/share/fonts/*)
## Tela icon theme                                                              # https://github.com/vinceliuice/Tela-icon-theme
## ghostty																	   # https://ghostty.org/docs/install/binary#linux-(official)
## alacritty                                                                    # https://github.com/alacritty/alacritty/blob/master/INSTALL.md
## rr
## abrt: bugzilla credentials
## LibreOffice galleries and icons

# Manual Set Ups - GNOME Extensions
## Dash to Dock
## Blur My Shell

## PaperWM                                                                      # https://github.com/paperwm/PaperWM
# Styling in: .config/paperwm/user.css
#
# [PaperWM - Winprops]
# $ dconf read /org/gnome/shell/extensions/paperwm/winprops
# [
'{"wm_class":"discord","scratch_layer":true}',
'{"wm_class":"evince","preferredWidth":"50%"}',
'{"wm_class":"Gimp-2.10","title":"/ - GIMP$/","preferredWidth":"100%"}',
'{"wm_class":"Hexchat","scratch_layer":true}',
'{"wm_class":"io.bassi.Amberol","scratch_layer":true}',
'{"wm_class":"kitty","preferredWidth":"50%"}',
'{"wm_class":"mpv","preferredWidth":"50%"}',
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
'{"wm_class":"via-nativia","scratch_layer":true}',
'{"wm_class":"zoom","scratch_layer":true}'
# ]
#
# [PaperWM - General]
# Selected window border size (px): 3
# Selected window border-radius for top corners (px): 12
# Selected window border-radius for bottom corners (px): 12
# Gap between windows: 6
# Horizontal margin: 6
# Top margin: 6
# Bottom margin: 6
#
# [PaperWM - Advanced]
# Maximize within tiling: true

## Wiggle                                                                       # https://github.com/mechtifs/wiggle
## Extension List                                                               # https://github.com/tuberry/extension-list

# Dependencies for QMK
sudo dnf copr enable erovia/dfu-programmer
sudo dnf install clang diffutils glibc-headers kernel-devel kernel-headers make unzip zip python3 avr-binutils avr-gcc avr-gcc-c++ avr-libc arm-none-eabi-binutils-cs arm-none-eabi-gcc-cs arm-none-eabi-gcc-cs-c++ arm-none-eabi-newlib avrdude dfu-programmer dfu-util hidapi libusb1-devel libusb-compat-0.1-devel





########## Items for Posterity ##########
# Flatpak - Misc flatpak apps for posterity

# Flatpak - Flatpak and related
# flatpak install flathub io.github.giantpinkrobots.flatsweep                   # Clean leftover data from flatpaks

# Flatpak - System-related
# flatpak install flathub com.github.alexkdeveloper.desktop-files-creator       # Create .desktop files
# flatpak install flathub org.gnome.NetworkDisplays                             # Connect to network displays

# Flatpak - Dev Tools
# flatpak install flathub io.podman_desktop.PodmanDesktop                       # Podman Desktop
# flatpak install flathub com.github.marhkb.Pods                                # Podman GUI

# Flatpak - Productivity
# flatpak install flathub org.gnome.gitlab.somas.Apostrophe                     # Apostrophe markdown editor
# flatpak install flathub org.gnome.gitlab.somas.Apostrophe.Plugin.TexLive      # TexLive plugin for Apostrophe
# flatpak install flathub app.drey.Dialect                                      # Translator
# flatpak install flathub io.gitlab.idevecore.Pomodoro                          # Pomodoro timer
# flatpak install flathub io.github.phastmike.tags                              # Use color tags to search text files
# flatpak install flathub io.github.alainm23.planify                            # Todo list
# flatpak install flathub io.github.ungoogled_software.ungoogled_chromium       # Ungoogled Chromium (for WebHID API)
# flatpak install flathub org.localsend.localsend_app                           # Send files to devices in the LAN

# Flatpak - Research
# flatpak install flathub org.tropy.Tropy                                       # Manage research photos
# flatpak install flathub com.github.hugolabe.Wike                              # Wikipedia browser

# Flatpak - PDF Tools
# flatpak install flathub com.github.jeromerobert.pdfarranger                   # Manipulate PDF files (installed via dnf)
# flatpak install flathub com.github.jkotra.unlockr                             # Remove PDF passwords
# flatpak install flathub org.gnome.Papers                                      # PDF reader (upcoming Evince update)
# flatpak install flathub com.github.unrud.djpdf                                # Create PDFs with OCR layer

# Flatpak - Photo and Drawing
# flatpak install flathub io.gitlab.theevilskeleton.Upscaler                    # Upscale images
# flatpak install flathub com.github.maoschanz.drawing                          # Doodling tool
# flatpak install flathub com.endlessm.photos                                   # Simple image editor
# flatpak install flathub io.gitlab.adhami3310.Converter                        # Convert and resize images
# flatpak install flathub com.github.huluti.Curtail                             # Compress images
# flatpak install flathub org.upscayl.Upscayl                                   # Upscale images
# flatpak install flathub com.github.PintaProject.Pinta                         # Simple drawing/paint tool

# Flatpak - Multimedia
# flatpak install flathub org.gnome.Showtime                                    # Video player (upcoming GNOME default)
# flatpak install flathub io.github.aandrew_me.ytdn                             # YouTube downloader
# flatpak install flathub com.rafaelmardojai.Blanket                            # Ambient sounds
# flatpak install flathub io.freetubeapp.FreeTube                               # YouTube player
# flatpak install flathub it.mijorus.whisper                                    # Listen to own mic
# flatpak install flathub de.haeckerfelix.AudioSharing                          # Share computer audio over LAN
# flatpak install flathub app.drey.EarTag                                       # Edit audio file metadata tags
# flatpak install flathub org.nickvision.tubeconverter                          # YouTube downloader
# flatpak install flathub fr.handbrake.ghb                                      # Handbrake video converter
# flatpak install flathub com.obsproject.Studio                                 # OBS Studio
# flatpak install flathub io.gitlab.adhami3310.Footage                          # Trim, crop, rotate videos
# flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer                  # Trim videos

# Flatpak - Communication
# flatpak install flathub org.gnome.Fractal                                      # Matrix chat client

# Flatpak - Entertainment and Fun
# flatpak install flathub info.febvre.Komikku                                   # Manga and comic book reader
# flatpak install flathub dev.geopjr.Tuba                                       # Fediverse client
# flatpak install flathub dev.bragefuglseth.Fretboard                           # Guitar code browser
# flatpak install flathub dev.bragefuglseth.Keypunch                            # Practice typing
# flatpak install flathub com.github.johnfactotum.Foliate                       # E-book reader
# flatpak install flathub io.gitlab.news_flash.NewsFlash                        # Feed reader

# Flatpak - Other Utilities
# flatpak install flathub io.gitlab.liferooter.TextPieces                       # Transform text
# flatpak install flathub io.github.nokse22.minitext                            # Always-on-top scratch buffer
# flatpak install flathub io.github.nokse22.teleprompter                        # Teleprompter
# flatpak install flathub app.drey.Warp                                         # Warp file transfer
# flatpak install flathub org.gabmus.whatip                                     # Get IP-related details and copy
# flatpak install flathub com.github.qarmin.czkawka                             # Find duplicate files
# flatpak install flathub com.github.qarmin.szyszka                             # Batch rename files
# flatpak install flathub com.belmoussaoui.Decoder                              # Scan and generate QR codes
# flatpak install flathub it.mijorus.gearlever                                  # Manage AppImage packages
# flatpak install flathub fr.romainvigier.MetadataCleaner                       # Clean metadata in files
# flatpak install flathub dev.geopjr.Collision                                  # Generate and verify file hashes
# flatpak install flathub io.gitlab.adhami3310.Impression                       # Write ISO images to drives
# flatpak install flathub it.mijorus.collector                                  # Drap & Drop buffer

# Flatpak - Design Tools (e.g., https://tools.design.gnome.org/)
# flatpak install flathub org.gnome.design.Contrast
# flatpak install flathub org.gnome.design.Palette
# flatpak install flathub org.gnome.design.AppIconPreview
# flatpak install flathub org.gnome.design.IconLibrary
# flatpak install flathub org.gnome.design.SymbolicPreview
# flatpak install flathub com.boxy_svg.BoxySVG
# flatpak install flathub org.gnome.design.Emblem
# flatpak install flathub io.gitlab.gregorni.Letterpress
# flatpak install flathub io.github.lainsce.Colorway
# flatpak install flathub io.github.lainsce.Emulsion





########## Deprecated Items ##########
echo "Reached the end. The rest are deprecated."
exit 126

# Deprecated - Additional Multimedia Support
#sudo dnf install ffmpeg ffmpeg-libs gstreamer1-plugins-base gstreamer1-plugin-openh264 gstreamer1-libav gstreamer1-svt-av1 gstreamer1-svt-vp9 gstreamer1-plugins-good-gtk gstreamer1-vaapi gstreamer1-plugins-good gstreamer1-plugins-bad-free gstreamer1-plugins-ugly gstreamer1-plugins-ugly-free gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-bad-free-extras

# Deprecated - Other Packages
#sudo dnf install chromium-freeworld alsa-firmware celluloid toolbox brasero libvirt-client gnome-shell-extension-openweather gnome-shell-extension-disconnect-wifi gnome-shell-extension-refresh-wifi freetype-freeworld apostrophe libXScrnSaver python2-gpg remmina remmina-plugins-rdp remmina-plugins-vnc remmina-plugins-spice remmina-plugins-exec texlive-pdftex-bin texlive-pdftex uget vidcutter gstreamer1-svt-hevc foliate nushell gydl micro lynx cabextract xorg-x11-font-utils fontconfig fontconfig-enhanced-defaults fontconfig-font-replacements font-manager transmission-gtk wezterm
#sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# Deprecated - COPRs
#sudo dnf copr enable tcg/themes
#sudo dnf copr enable heikoada/gtk-themes
#sudo dnf copr enable dirkdavidis/papirus-icon-theme
#sudo dnf copr enable dawid/better_fonts
#sudo dnf copr enable varlad/helix
#sudo dnf copr enable titaniumtown/lapce
#sudo dnf copr enable jerrycasiano/FontManager
#sudo dnf copr enable wezfurlong/wezterm-nightly                                # wezterm nightly builds

# Deprecated - Cargo Installs
#cargo install trippy
