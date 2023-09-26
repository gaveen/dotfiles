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
sudo dnf install neovim gitg binutils lsof ctags gcc cmake openssl-devel powertop wmctrl gimp gimp-data-extras pngcrush soundconverter transmission-gtk wireshark nmap xsel exiv2 bcc bcc-tools hexchat pdfmerge pdfarranger mpv gedit-plugins rhythmbox-alternative-toolbar socat libreoffice-draw chromium-freeworld wl-clipboard wlroots netcat bat rr toolbox distrobox diffpdf

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

# Flatpak - Look & Feel
flatpak install flathub com.mattjakeman.ExtensionManager
#flatpak install flathub com.github.tchx84.Flatseal
#flatpak install flathub io.github.giantpinkrobots.flatsweep
#flatpak install flathub io.github.realmazharhussain.GdmSettings
#flatpak install flathub com.github.alexkdeveloper.desktop-files-creator

# Flatpak - Basic Needs
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub org.gnome.NetworkDisplays
flatpak install flathub org.standardnotes.standardnotes
#flatpak install flathub com.github.alainm23.planner
#flatpak install flathub com.github.liferooter.textpieces
#flatpak install flathub org.gabmus.whatip
#flatpak install flathub app.drey.Warp
#flatpak install flathub com.github.marhkb.Pods

# Flatpak - Document Authoring
flatpak install flathub org.gnome.gitlab.somas.Apostrophe
flatpak install flathub org.gnome.gitlab.somas.Apostrophe.Plugin.TexLive
flatpak install flathub com.github.muriloventuroso.pdftricks
flatpak install flathub io.github.diegoivan.pdf_metadata_editor
flatpak install flathub net.sourceforge.pdfchain
flatpak install flathub com.github.jkotra.unlockr
#flatpak install flathub com.github.jeromerobert.pdfarranger
#flatpak install flathub com.github.unrud.djpdf

# Flatpak - Dev Tools
flatpak install flathub io.github.shiftey.Desktop
#flatpak install flathub com.getpostman.Postman
#flatpak install flathub io.podman_desktop.PodmanDesktop
#flatpak install flathub com.github.LongSoft.UEFITool
#flatpak install flathub xyz.tytanium.DoorKnocker

# Flatpak - Multimedia - Images
flatpak install flathub io.gitlab.adhami3310.Converter
flatpak install flathub io.gitlab.theevilskeleton.Upscaler
flatpak install flathub com.github.huluti.Curtail
flatpak install flathub fr.romainvigier.MetadataCleaner
flatpak install flathub com.github.PintaProject.Pinta
#flatpak install flathub io.gitlab.gregorni.Letterpress
#flatpak install flathub org.gnome.design.Emblem
#flatpak install flathub com.boxy_svg.BoxySVG
#flatpak install flathub com.github.maoschanz.drawing
#flatpak install flathub org.glimpse_editor.Glimpse
#flatpak install flathub com.github.GradienceTeam.Gradience
#flatpak install flathub com.endlessm.photos

# Flatpak - Multimedia - AV
flatpak install flathub io.github.aandrew_me.ytdn
flatpak install flathub org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak install flathub fr.handbrake.ghb
flatpak install flathub de.haeckerfelix.AudioSharing
flatpak install flathub io.gitlab.adhami3310.Footage
flatpak install flathub io.freetubeapp.FreeTube
#flatpak install flathub com.obsproject.Studio
#flatpak install flathub io.bassi.Amberol
#flatpak install flathub org.nickvision.tubeconverter

# Flatpak - Other
flatpak install flathub org.signal.Signal
flatpak install flathub com.discordapp.Discord
flatpak install flathub it.mijorus.whisper
flatpak install flathub com.raggesilver.BlackBox
flatpak install flathub dev.geopjr.Collision
flatpak install flathub com.belmoussaoui.Decoder
flatpak install flathub com.anydesk.Anydesk
flatpak install flathub com.github.Darazaki.Spedread
flatpak install flathub io.gitlab.news_flash.NewsFlash
flatpak install flathub io.gitlab.adhami3310.Impression
flatpak install flathub info.febvre.Komikku
flatpak install flathub dev.bragefuglseth.Fretboard
#flatpak install flathub dev.geopjr.Tuba
#flatpak install flathub io.github.nokse22.minitext
#flatpak install flathub org.gnome.Polari
#flatpak install flathub com.parsecgaming.parsec
#flatpak install flathub com.bitwarden.desktop
#flatpak install flathub org.gnome.Solanum
#flatpak install flathub app.drey.Dialect
#flatpak install flathub com.github.scrivanolabs.scrivano
#flatpak install flathub io.github.nokse22.teleprompter

# Flatpak - Gaming
#flatpak install flathub com.endlessnetwork.fablemaker
#flatpak install flathub com.endlessnetwork.dragonsapprentice
#flatpak install flathub com.endlessnetwork.aqueducts

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

# Deprecated - Flatpak Installs
#flatpak install flathub com.github.junrrein.PDFSlicer
#flatpak install flathub com.github.philip_scott.spice-up
#flatpak install flathub io.github.lainsce.DotMatrix
#flatpak install flathub org.syphon.Syphon
#flatpak install flathub im.riot.Riot
#flatpak install flathub org.gnome.Fractal
#flatpak install flathub us.zoom.Zoom

# Deprecated - Manual Set Ups
## neovide - https://neovide.dev/
