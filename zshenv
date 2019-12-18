export no_proxy="localhost"

export NETHACKOPTIONS="color,gender:female"

# export PATH="/usr/local/bin:/usr/local/Cellar/perl/5.14.4/bin:$PATH"
source ~/perl5/perlbrew/etc/bashrc
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
export PERL5LIB=$PERL5LIB:~/perl5/src/WebService-HabitRPG/lib

# export PYTHONPATH=/usr/local/lib/python2.7/site-packages

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
