# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/claudine/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Perl local::lib
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

