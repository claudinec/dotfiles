function get_wttr
    # Get one-line output from wttr.in for use in greeting.

    # If location is provided as argument, use this.
    # Otherwise use previously defined location or default.
    if test -n "$argv[1]"
        set -g wttr_location (string escape --style=url $argv[1])
    else if test -z "$wttr_location"
        set -g wttr_location 'Melbourne'
    end

    set -g wttr_url "https://wttr.in/$wttr_location?format=4"
    curl -sS $wttr_url | read -g wttr_output
    set -U fish_greeting $wttr_output
    echo $wttr_output
end
