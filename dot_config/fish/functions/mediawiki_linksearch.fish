function mediawiki_linksearch -d 'Search for external links using the MediaWiki Action API'
    argparse 'w/wiki_domain=' 's/search_domain=' 'c/continue=?' -- $argv
    or return
    
    set query_url "https://$_flag_w/w/api.php?action=query&list=exturlusage&euquery=$_flag_s&eunamespace=0&format=json&eulimit=15&eucontinue=$_flag_c"
    curl -sS $query_url | read -g eu_output
    echo $eu_output | jq -r '.query.exturlusage[] | .title' | uniq
    echo $eu_output | jq '.continue'
end
