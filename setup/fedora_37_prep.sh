echo "Do not run this as a script. This file is only for documenting purposes."
exit 126

# Set Up - RPMFusion.org
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install rpmfusion-free-release-tainted
sudo dnf install rpmfusion-nonfree-release-tainted
sudo dnf groupupdate core

# Minimal
sudo dnf install bash-completion gnome-terminal-nautilus wget curl git vim-X11 vim-enhanced ripgrep htop youtube-dl

# Basic Needs
sudo dnf install neovim gitg binutils lsof ctags gcc cmake openssl-devel powertop wmctrl gimp gimp-data-extras pngcrush soundconverter transmission-gtk wireshark nmap xsel exiv2 bcc bcc-tools hexchat pdfmerge pdfarranger mpv gedit-plugins rhythmbox-alternative-toolbar socat libreoffice-draw chromium-freeworld wl-clipboard wlroots netcat bat rr toolbox distrobox diffpdf diskonaut procs

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
flatpak install flathub io.github.flattool.Warehouse
#flatpak install flathub com.github.tchx84.Flatseal
#flatpak install flathub io.github.giantpinkrobots.flatsweep

# Flatpak - System-related
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub org.gnome.NetworkDisplays
#flatpak install flathub org.gabmus.whatip
#flatpak install flathub com.github.alexkdeveloper.desktop-files-creator
#flatpak install flathub io.github.realmazharhussain.GdmSettings
#flatpak install flathub com.github.GradienceTeam.Gradience

# Flatpak - Productivity
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.github.Eloston.UngoogledChromium
flatpak install flathub app.drey.Dialect
#flatpak install flathub io.gitlab.idevecore.Pomodoro
#flatpak install flathub com.raggesilver.BlackBox
#flatpak install flathub org.standardnotes.standardnotes
#flatpak install flathub org.gnome.gitlab.somas.Apostrophe
#flatpak install flathub org.gnome.gitlab.somas.Apostrophe.Plugin.TexLive
#flatpak install flathub io.github.phastmike.tags

# Flatpak - PDF Tools
flatpak install flathub com.github.jeromerobert.pdfarranger
flatpak install flathub io.github.diegoivan.pdf_metadata_editor
#flatpak install flathub com.github.muriloventuroso.pdftricks
#flatpak install flathub net.sourceforge.pdfchain
#flatpak install flathub com.github.jkotra.unlockr
#flatpak install flathub com.github.unrud.djpdf

# Flatpak - Dev Tools
flatpak install flathub io.github.shiftey.Desktop
#flatpak install flathub com.getpostman.Postman
#flatpak install flathub io.podman_desktop.PodmanDesktop
#flatpak install flathub com.github.marhkb.Pods
#flatpak install flathub com.github.LongSoft.UEFITool
#flatpak install flathub xyz.tytanium.DoorKnocker

# Flatpak - Other Utilities
flatpak install flathub fr.romainvigier.MetadataCleaner
flatpak install flathub dev.geopjr.Collision
flatpak install flathub io.gitlab.adhami3310.Impression
#flatpak install flathub com.github.qarmin.czkawka
#flatpak install flathub com.github.qarmin.szyszka
#flatpak install flathub com.belmoussaoui.Decoder

# Flatpak - Photo and Drawing
flatpak install flathub io.gitlab.adhami3310.Converter
flatpak install flathub com.github.huluti.Curtail
flatpak install flathub com.github.PintaProject.Pinta
flatpak install flathub org.upscayl.Upscayl
#flatpak install flathub io.gitlab.theevilskeleton.Upscaler
#flatpak install flathub com.github.maoschanz.drawing
#flatpak install flathub com.endlessm.photos

# Flatpak - Multimedia
flatpak install flathub com.rafaelmardojai.Blanket
flatpak install flathub no.mifi.losslesscut
flatpak install flathub io.github.aandrew_me.ytdn
flatpak install flathub io.freetubeapp.FreeTube
#flatpak install flathub it.mijorus.whisper
#flatpak install flathub de.haeckerfelix.AudioSharing
#flatpak install flathub io.bassi.Amberol
#flatpak install flathub org.nickvision.tubeconverter
#flatpak install flathub io.gitlab.adhami3310.Footage
#flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer
#flatpak install flathub fr.handbrake.ghb
#flatpak install flathub app.drey.EarTag
#flatpak install flathub com.obsproject.Studio

# Flatpak - Communication
flatpak install flathub org.signal.Signal
flatpak install flathub com.discordapp.Discord
flatpak install flathub im.riot.Riot
#flatpak install flathub com.anydesk.Anydesk
#flatpak install flathub com.parsecgaming.parsec
#flatpak install flathub org.gnome.Fractal
#flatpak install flathub us.zoom.Zoom

# Flatpak - Entertainment and Fun
flatpak install flathub io.gitlab.news_flash.NewsFlash
flatpak install flathub info.febvre.Komikku
flatpak install flathub dev.geopjr.Tuba
#flatpak install flathub dev.bragefuglseth.Fretboard
#flatpak install flathub com.github.Darazaki.Spedread
#flatpak install flathub com.librumreader.librum

# Flatpak - Misc
#flatpak install flathub com.felipekinoshita.Kana
#flatpak install flathub io.github.nokse22.minitext
#flatpak install flathub io.github.nokse22.teleprompter
#flatpak install flathub app.drey.Warp
#flatpak install flathub com.github.alainm23.planner
#flatpak install flathub com.github.liferooter.textpieces
#flatpak install flathub com.github.scrivanolabs.scrivano
#flatpak install flathub com.github.flxzt.rnote

# Flatpak - Gaming
#flatpak install flathub org.turbowarp.TurboWarp
#flatpak install flathub edu.mit.Scratch
#flatpak install flathub com.endlessnetwork.fablemaker
#flatpak install flathub com.endlessnetwork.dragonsapprentice
#flatpak install flathub com.endlessnetwork.aqueducts

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

# Cargo Installs
# Depends on Rust toolchain
cargo install zellij
cargo install nu --features=extra
cargo install difftastic
cargo install --locked miniserve
cargo install cargo-audit --features=binary-scanning
cargo install cargo-auditable
cargo install systemfd
cargo install cargo-watch
cargo install systeroid
cargo install erdtree
cargo install viu

# Optional Firmware
#sudo dnf install \*-firmware

# Manual Installs - Packages / Binary
## Rust via rustup, add components
## Alacritty
## VS Code
## Dropbox
## SpiderOakONE
## Hugo
## Mullvad VPN

# Manual Set Ups
## dotfiles
## additional fonts
## Tela icon theme - https://github.com/vinceliuice/Tela-icon-theme
## rust via rustup
## rust components
## nvchad - https://nvchad.com/
## go
## deno
## abrt: bugzilla credentials
## libreoffice galleries and icons
## alacritty - https://github.com/alacritty/alacritty/blob/master/INSTALL.md
## rust-analyzer - https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary
## rr
## sudo alternatives --config nc





# Deprecated Items
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
## neovide - https://neovide.dev/
