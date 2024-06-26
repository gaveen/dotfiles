echo "Do not run this as a script. This file is only for documenting purposes."
exit 126

# Set Up - RPMFusion.org
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install rpmfusion-free-release-tainted
sudo dnf install rpmfusion-nonfree-release-tainted
sudo dnf groupupdate core

# Minimal
sudo dnf install bash-completion gnome-terminal-nautilus wget curl git vim-X11 vim-enhanced ripgrep htop youtube-dl helix

# Basic Needs
sudo dnf install gitg binutils lsof ctags gcc cmake openssl-devel powertop wmctrl gimp gimp-data-extras pngcrush soundconverter transmission-gtk wireshark nmap xsel exiv2 bcc bcc-tools hexchat pdfmerge pdfarranger mpv gedit-plugins neovim rhythmbox-alternative-toolbar socat libreoffice-draw chromium-freeworld wl-clipboard wlroots netcat bat rr toolbox distrobox diffpdf diskonaut procs wireguard-tools

# Multimedia Support
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate sound-and-video
# Additional Multimedia
sudo dnf install libdvdcss ffmpeg easytag audacity-freeworld mplayer

# Look & Feel
sudo dnf install gnome-tweaks gnome-extensions-app gnome-shell-extension-appindicator la-capitaine-icon-theme la-capitaine-cursor-theme materia-gtk-theme arc-theme gnome-shell-extension-user-theme gnome-shell-extension-blur-my-shell gnome-shell-extension-dash-to-dock

# Fonts
sudo dnf install mozilla-fira-mono-fonts mozilla-fira-sans-fonts dejavu-fonts-all adobe-source-sans-pro-fonts adobe-source-code-pro-fonts adobe-source-serif-pro-fonts levien-inconsolata-fonts google-roboto-fonts google-roboto-slab-fonts google-roboto-mono-fonts google-roboto-condensed-fonts google-noto-sans-fonts google-noto-serif-fonts google-noto-sans-sinhala-fonts lklug-fonts sil-charis-fonts sil-charis-compact-fonts abattis-cantarell-fonts comic-neue-fonts comic-neue-angular-fonts fira-code-fonts rsms-inter-fonts catharsis-cormorant-fonts-all jetbrains-mono-fonts-all julietaula-montserrat-fonts julietaula-montserrat-alternates-fonts google-rubik-fonts polarsys-b612-fonts-all cascadia-fonts-all

# Enable Flathub: https://flatpak.org/setup/Fedora/

# Flatpak - Flatpak and related
flatpak install flathub io.github.flattool.Warehouse                            # Manage flatpaks
flatpak install flathub com.github.tchx84.Flatseal                              # Manage permissions for flatpaks
flatpak install flathub io.github.giantpinkrobots.flatsweep                     # Clean leftover data from flatpaks

# Flatpak - System-related
flatpak install flathub org.gnome.NetworkDisplays                               # Connect to network displays
flatpak install flathub com.github.alexkdeveloper.desktop-files-creator         # Create .desktop files

# Flatpak - Productivity
flatpak install flathub md.obsidian.Obsidian                                    # Obsidian notes
flatpak install flathub org.gnome.gitlab.somas.Apostrophe                       # Apostrophe markdown editor
flatpak install flathub org.gnome.gitlab.somas.Apostrophe.Plugin.TexLive        # TexLive plugin for Apostrophe
flatpak install flathub app.drey.Dialect                                        # Translator
flatpak install flathub io.gitlab.idevecore.Pomodoro                            # Pomodoro timer
flatpak install flathub io.github.phastmike.tags                                # Use color tags to search text files
flatpak install flathub io.github.alainm23.planify                              # Todo list
flatpak install flathub com.github.hugolabe.Wike                                # Wikipedia browser

# Flatpak - PDF Tools
flatpak install flathub com.github.jeromerobert.pdfarranger                     # Manipulate PDF files
flatpak install flathub com.github.jkotra.unlockr                               # Remove PDF passwords

# Flatpak - Dev Tools
flatpak install flathub io.podman_desktop.PodmanDesktop                         # Podman Desktop
flatpak install flathub com.github.marhkb.Pods                                  # Podman GUI

# Flatpak - Other Utilities
flatpak install flathub fr.romainvigier.MetadataCleaner                         # Clean metadata in files
flatpak install flathub dev.geopjr.Collision                                    # Generate and verify file hashes
flatpak install flathub io.gitlab.adhami3310.Impression                         # Write ISO images to drives
flatpak install flathub it.mijorus.collector                                    # Drap & Drop buffer

# Flatpak - Photo and Drawing
flatpak install flathub io.gitlab.adhami3310.Converter                          # Convert and resize images
flatpak install flathub com.github.huluti.Curtail                               # Compress images
flatpak install flathub com.github.PintaProject.Pinta                           # Simple drawing/paint tool
flatpak install flathub org.upscayl.Upscayl                                     # Upscale images

# Flatpak - Multimedia
flatpak install flathub io.bassi.Amberol                                        # Audio player
flatpak install flathub io.github.aandrew_me.ytdn                               # YouTube downloader
flatpak install flathub org.nickvision.tubeconverter                            # YouTube downloader
flatpak install flathub io.gitlab.adhami3310.Footage                            # Trim, crop, rotate videos
flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer                    # Trim videos

# Flatpak - Communication
flatpak install flathub com.discordapp.Discord                                  # Discord
flatpak install flathub org.gnome.Fractal                                       # Matrix chat client

# Flatpak - Entertainment and Fun
flatpak install flathub io.gitlab.news_flash.NewsFlash                          # Feed reader
flatpak install flathub com.github.johnfactotum.Foliate                         # E-book reader

# Cargo Installs
# Depends on Rust toolchain
cargo install difftastic
cargo install nu
cargo install cargo-audit --features=binary-scanning
cargo install cargo-auditable
cargo install systemfd
cargo install cargo-watch
cargo install systeroid
cargo install erdtree

# Optional Firmware
#sudo dnf install \*-firmware

# Manual Installs - Packages / Binary
## Rust via rustup, add components
## Zellij
## VS Code
## Dropbox
## Hugo
## Mullvad VPN

# Manual Set Ups
## dotfiles
## additional fonts
## Tela icon theme - https://github.com/vinceliuice/Tela-icon-theme
## rust via rustup
## rust components
## go
## deno
## abrt: bugzilla credentials
## libreoffice galleries and icons
## alacritty - https://github.com/alacritty/alacritty/blob/master/INSTALL.md
## rust-analyzer - https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary
## rr
## sudo alternatives --config nc





########## Items for Posterity ##########
# Flatpak - Misc flatpak apps for posterity
#                                                                               ## Utilities:
#flatpak install flathub com.github.liferooter.textpieces                       # Transform texts
#flatpak install flathub io.github.nokse22.minitext                             # Always-on-top scratch buffer
#flatpak install flathub io.github.nokse22.teleprompter                         # Teleprompter
#flatpak install flathub app.drey.Warp                                          # Warp file transfer
#flatpak install flathub org.gabmus.whatip                                      # Get IP-related details and copy
#flatpak install flathub com.github.qarmin.czkawka                              # Find duplicate files
#flatpak install flathub com.github.qarmin.szyszka                              # Batch rename files
#flatpak install flathub com.belmoussaoui.Decoder                               # Scan and generate QR codes
#                                                                               ## PDF Tools:
#flatpak install flathub com.github.unrud.djpdf                                 # Create PDFs with OCR layer
#                                                                               ## Image Tools:
#flatpak install flathub io.gitlab.theevilskeleton.Upscaler                     # Upscale images
#flatpak install flathub com.github.maoschanz.drawing                           # Doodling tool
#flatpak install flathub com.endlessm.photos                                    # Simple image editor
#                                                                               ## Multimedia:
#flatpak install flathub com.rafaelmardojai.Blanket                             # Ambient sounds
#flatpak install flathub io.freetubeapp.FreeTube                                # YouTube player
#flatpak install flathub it.mijorus.whisper                                     # Listen to own mic
#flatpak install flathub de.haeckerfelix.AudioSharing                           # Share computer audio over LAN
#flatpak install flathub app.drey.EarTag                                        # Edit audio file metadata tags
#flatpak install flathub fr.handbrake.ghb                                       # Handbrake video converter
#flatpak install flathub com.obsproject.Studio                                  ## OBS Studio
#                                                                               # Fun & Entertainment:
#flatpak install flathub info.febvre.Komikku                                    # Manga and comic book reader
#flatpak install flathub dev.geopjr.Tuba                                        # Fediverse client
#flatpak install flathub dev.bragefuglseth.Fretboard                            # Guitar code browser

# Flatpak - Design Tools (e.g., https://tools.design.gnome.org/)
#flatpak install flathub org.gnome.design.Contrast
#flatpak install flathub org.gnome.design.Palette
#flatpak install flathub org.gnome.design.AppIconPreview
#flatpak install flathub org.gnome.design.IconLibrary
#flatpak install flathub org.gnome.design.SymbolicPreview
#flatpak install flathub com.boxy_svg.BoxySVG
#flatpak install flathub org.gnome.design.Emblem
#flatpak install flathub io.gitlab.gregorni.Letterpress
#flatpak install flathub io.github.lainsce.Colorway
#flatpak install flathub io.github.lainsce.Emulsion

# Flatpak - Unverified flatpak apps
#flatpak install flathub org.signal.Signal                                      # [Unverified] Signal desktop
#flatpak install flathub im.riot.Riot                                           # [Unverified] Element matrix client
#flatpak install flathub com.anydesk.Anydesk                                    # [Unverified] Anydesk client
#flatpak install flathub com.parsecgaming.parsec                                # [Unverified] Parsec client
#flatpak install flathub us.zoom.Zoom                                           # [Unverified] Zoom client
#flatpak install flathub no.mifi.losslesscut                                    # [Unverified] Trim videos and audios
#flatpak install flathub io.github.diegoivan.pdf_metadata_editor                # [Unverified] Edit PDF file metadata
#flatpak install flathub com.github.muriloventuroso.pdftricks                   # [Unverified] Manipulate PDF files
#flatpak install flathub net.sourceforge.pdfchain                               # [Unverified] Manipulate PDF files





########## Deprecated Items ##########
echo "Reached the end. The rest are deprecated."
exit 126

# Deprecated - Additional Multimedia Support
# sudo dnf install ffmpeg ffmpeg-libs gstreamer1-plugins-base gstreamer1-plugin-openh264 gstreamer1-libav gstreamer1-svt-av1 gstreamer1-svt-vp9 gstreamer1-plugins-good-gtk gstreamer1-vaapi gstreamer1-plugins-good gstreamer1-plugins-bad-free gstreamer1-plugins-ugly gstreamer1-plugins-ugly-free gstreamer1-plugins-good-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-bad-free-extras

# Deprecated - Other Packages
#sudo dnf install alsa-firmware celluloid toolbox brasero libvirt-client gnome-shell-extension-openweather gnome-shell-extension-disconnect-wifi gnome-shell-extension-refresh-wifi freetype-freeworld apostrophe libXScrnSaver python2-gpg remmina remmina-plugins-rdp remmina-plugins-vnc remmina-plugins-spice remmina-plugins-exec texlive-pdftex-bin texlive-pdftex uget vidcutter gstreamer1-svt-hevc foliate nushell gydl micro lynx cabextract xorg-x11-font-utils fontconfig fontconfig-enhanced-defaults fontconfig-font-replacements
#sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# Deprecated - COPRs
#sudo dnf copr enable tcg/themes
#sudo dnf copr enable heikoada/gtk-themes
#sudo dnf copr enable dirkdavidis/papirus-icon-theme
#sudo dnf copr enable dawid/better_fonts

# Deprecated - Manual Set Ups
## nvchad - https://nvchad.com/
## neovide - https://neovide.dev/
## SpiderOak ONE

# Deprecated - Cargo Installs
## cargo install --locked miniserve
## cargo install trippy
## cargo install viu
