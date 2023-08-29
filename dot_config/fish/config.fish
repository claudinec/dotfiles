if status is-interactive
    fish_vi_key_bindings

    # git editor
    set -gx GIT_EDITOR gvim --nofork

    test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

    # mac only
    if test (uname -s) = Darwin
        set -gx GOBIN $HOME/go/bin
        set -gx DENO_INSTALL $HOME/.deno
        fish_add_path /opt/homebrew/bin /opt/homebrew/sbin $HOME/bin $HOME/.local/bin $HOME/.pyenv/shims $GOBIN $DENO_INSTALL/bin
        abbr --add tailscale /Applications/Tailscale.app/Contents/MacOS/Tailscale
    end
end
