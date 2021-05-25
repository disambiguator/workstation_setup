starship init fish | source

set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths

source aliases.sh
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
