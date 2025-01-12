function newsboat_to_archivebox
    # add a URL to ArchiveBox queue
    if test (uname -s) = Darwin
        set -g archivebox_queue $HOME/Documents/archivebox-queue
    else
        set -g archivebox_queue $XDG_DATA_HOME/archivebox-queue
    end

    # bookmark-cmd is given four arguments: URL, post title, description, feed title
    # put the queue name in the description
    set link_url "$argv[1]"
    if test -z $argv[3]
        set queue_file "$archivebox_queue/queue.txt"
    else
        set queue_file "$archivebox_queue/$argv[3].txt"
    end
    echo "$link_url" >> $queue_file
end

