# Path to Oh My Fish install.
set -gx OMF_PATH /home/s/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /home/s/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

alias gst "git log --author='$USER' --pretty=tformat: --numstat | awk '{ add += \$1; subs += \$2; loc += \$1 - \$2 } END { printf \"added lines: \%s, removed lines: \%s, total lines: \%s\n\", add, subs, loc }' -"

# Git
alias ga "git add ."
alias gc "git commit -m"
alias gp "git push origin" 
    
# Open something in Atom
alias atom "open -a Atom"

set fish_function_path $fish_function_path "/home/s/.local/lib/python3.4/site-packages/powerline/bindings/fish"
 