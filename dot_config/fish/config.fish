if status is-interactive
    fish_vi_key_bindings

    # git editor
    set -gx GIT_EDITOR gvim --nofork

    test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

    # mac only
    if test (uname -s) = Darwin
        set -Ux PYENV_ROOT $HOME/.pyenv
        set -Ux GOBIN $HOME/go/bin
        set -Ux DENO_INSTALL $HOME/.deno
        set -U fish_user_paths $HOME/bin $HOME/.local/bin $PYENV_ROOT/bin $HOME/.pyenv/shims $HOME/.cargo/bin $GOBIN $DENO_INSTALL/bin $fish_user_paths
        fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
        pyenv init - | source
        abbr --add tailscale /Applications/Tailscale.app/Contents/MacOS/Tailscale
    end
end
