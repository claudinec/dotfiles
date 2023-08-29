function start_whoogle
    # Start whoogle if it's installed.
    type -q whoogle-search
    if test $status -eq 0
        # Docs: https://sr.ht/~benbusby/whoogle-search/#environment-variables
        # Defaults: https://git.sr.ht/~benbusby/whoogle-search/tree/main/item/whoogle.template.env
        set -gx WHOOGLE_RESULTS_PER_PAGE 30
        set -gx WHOOGLE_CONFIG_COUNTRY AU
        set -gx WHOOGLE_CONFIG_NEW_TAB 1
        set -gx WHOOGLE_CONFIG_ALTS 1
        set -gx WHOOGLE_ALT_WIKI ""
        set -g whoogle_port 5100
        set -g whoogle_host "$hostname.dojo-hamlet.ts.net"
        if test "$argv[1]" = "debug"
            whoogle-search --debug --port "$whoogle_port" --host "$whoogle_host" &
        else
            whoogle-search --port "$whoogle_port" --host "$whoogle_host" &
            echo "Started Whoogle at http://$whoogle_host:$whoogle_port"
        end
    else
        echo "Whoogle command not found"
        return 1
    end
end
