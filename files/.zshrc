####################################
#  ___ _   _ ___  ___ ___  __  __  #
# | __| | | | _ \/ __/ _ \|  \/  | #
# | _|| |_| |   / (_| (_) | |\/| | #
# |_|  \___/|_|_\\___\___/|_|  |_| #
#                                  #
#    .zshrc Version 2024-09-07     #
#                                  #
####################################

################
## 1. SOURCES ##
################

#source ~/.cache/wal/colors-tty.sh

################
## 2. EXPORTS ##
################
export VISUAL=vim
export EDITOR=vim
export TERM=kitty
export PATH=$PATH:$HOME/.config/oh-my-posh

##############
## 3. ZINIT ##
##############
# 1. Set the Zinit directory
ZINIT_HOME="${HOME}/.local/share/zinit"

# 2. Load completions
autoload -Uz compinit && compinit

# 3. Download Zinit if not existing
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# 4. Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# 5. Zinit ZSH plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# 6. Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::debian
zinit snippet OMZP::docker
zinit snippet OMZP::command-not-found
zinit cdreplay -q

# 7. Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

####################
## 4. KEYBINDINGS ##
####################
bindkey -e
bindkey '^[w' kill-region
bindkey '^s' fzf-cd-widget
bindkey '^u' fzf-file-widget
bindkey '^f' fzf-history-widget
bindkey '^[[B' history-search-forward
bindkey '^[[A' history-search-backward
bindkey "^[[3~" delete-char

################
## 5. HISTORY ##
################
HISTDUP=erase
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt sharehistory
setopt appendhistory
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_ignore_all_dups

################
## 6. ALIASES ##
################
# Programs
#alias neofetch="fastfetch"
#alias vim="nvim"

# Navigation
alias ls="ls --color"
alias d="ls -hals --group-directories-first"
alias \#="cd .. ; d"
alias c="clear"
alias q="exit"
#alias f="bash -c "compgen -c" | fzf | xargs man"

# Configs
alias zz="vim $HOME/.zshrc"
alias bb="vim $HOME/.bashrc"
alias kk="vim $HOME/.config/kitty/kitty.conf"
alias hh="vim $HOME/.config/hypr/hyprland.conf"

# Proxmox
alias pm="$HOME/powermode.sh"

# SSH
alias keys="cd $HOME/.ssh"
alias delkey="ssh-add -D"
alias addkey="eval `ssh-agent` ; ssh-add $HOME/.ssh/id_ed25519"

# Update
alias update="sudo pacman -Syu ; yay -Syu"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# Git
alias githome='git add . ; git commit -m "Updates" ; git push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/HomeLab.git main'
alias gitarch='git add . ; git commit -m "Updates" ; git push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/arch-furcom.git main'
alias githypr='git add . ; git commit -m "Updates" ; git push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/hypr-furcom.git main'
alias gitfypr='git add . ; git commit -m "Updates" ; git push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/Fyprland.git main'

# Reboot
alias reboot='echo -n "Reboot? [N/y] "; read response; [[ $response == y || Y ]]; systemctl reboot || echo "Canceled."'
alias rebooty="systemctl reboot"
alias poweroff='echo -n "Poweroff? [N/y] "; read response; [[ $response == y || Y ]]; systemctl poweroff || echo "Canceled."'

##################
## 7. AUTOSTART ##
##################
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/config.yaml)"
fastfetch
