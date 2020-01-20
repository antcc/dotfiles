# Allow aliases with sudo
alias sudo="sudo "

# Building PKGBUILD in /tmp
alias makepkgt='mkdir -p /tmp/makepkg && BUILDIR=/tmp/makepkg makepkg -si'

# Custom diff
alias diff='diff --color -y --suppress-common-lines'

# Cisco VPN
alias vpn='/opt/cisco/anyconnect/bin/vpn'

# Edit on terminal mode
alias edit='vim'

# Custom cat command
alias cat='bat'

# Compile latex files while editing
alias mlatexmk='latexmk -shell-escape -pdf -pvc -interaction=nonstopmode'

# Suspend system
alias suspend='systemctl suspend'

# Start R in quiet mode
alias R="R --quiet"

# Update AUR packages
alias aur-update="yay -Pu"

# Pacman remove orphans
#alias pacrmph="pacman -Rns $(pacman -Qtdq)"

# Edit i3 config
alias i3config="gedit ~/.config/i3/config &"
alias i3configs="gedit ~/.config/i3status/config &"

# Connect & disconnect external monitor
alias connect-one="xrandr --output DP1 --auto --output eDP1 --off"
alias disconnect-one="xrandr --output eDP1 --auto --output DP1 --off"
alias connect="xrandr --output DP1 --auto --right-of eDP1"
alias disconnect="xrandr --output DP1 --off"

# Better safe than sorry
alias rm="rm -I --preserve-root"

# Open file with default application
alias open="xdg-open"

# Load VirtualBox kernel modules
alias vboxl="sudo modprobe vboxdrv && sudo modprobe vboxnetflt && sudo modprobe vboxpci && sudo modprobe vboxnetadp"

# Activate python virtual environment
alias pyactivate="source venv/bin/activate"

# Find replacement
alias find='fd'

# ls replacement
alias ls='exa'
