starship init fish | source

set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# Aliases
alias g=git
alias gst='git status'
alias gp='git push'
alias gd='git diff'
alias wip='git wip'
alias pr='git push -u origin head && hub compare'
alias pull='git pull && git cleanup'
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths

source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
