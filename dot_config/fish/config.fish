if status is-interactive
    fish_vi_key_bindings

    # set program-specific editors
    set -gx GIT_EDITOR gvim --nofork
    set -gx HLEDGER_UI_EDITOR gvim

    test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

    # mac only
    if test (uname -s) = Darwin
        set -Ux PYENV_ROOT $HOME/.pyenv
        set -Ux GOBIN $HOME/go/bin
        set -Ux LEDGER_DIR $HOME/Data/hledger-data
        set -Ux LEDGER_FILE $LEDGER_DIR/journal.hledger
        set -U fish_user_paths $HOME/bin $HOME/.local/bin $PYENV_ROOT/bin $HOME/.pyenv/shims $HOME/.cargo/bin $GOBIN $fish_user_paths
        fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
        pyenv init - | source
        abbr --add tailscale /Applications/Tailscale.app/Contents/MacOS/Tailscale
        if not test -e $HOME/bin/keyboardmaestro
            ln -s "/Applications/Keyboard Maestro.app/Contents/MacOS/keyboardmaestro" $HOME/bin/keyboardmaestro
        end
    end
end
