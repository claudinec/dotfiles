function mastodon_archive
    # Fetch archives with mastodon-archive.
    type -q mastodon-archive
    if test $status -eq 0
        set -l data_dir $HOME/Data/Sources/fediverse-data
        if test "$PWD" != "$data_dir"
            cd $data_dir
            set -f change_dir 1
        else
            set -f change_dir 0
        end
        set -g mastodon_user claudinec
        set -g mastodon_domains aus.social
        for domain in $mastodon_domains
            set -l account "$mastodon_user@$domain"
            echo -e "\n#### Fetching archive for $account ####"
            mastodon-archive archive --with-following --with-mentions "$account"
        end
        if test $change_dir -eq 1
            prevd
        end
    end
end

