if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    neofetch
end
export PATH="$PATH:$HOME/.spicetify"
export TERM=xterm-256color


# pip fish completion start
function __fish_complete_pip
    set -lx COMP_WORDS (commandline -o) ""
    set -lx COMP_CWORD ( \
        math (contains -i -- (commandline -t) $COMP_WORDS)-1 \
    )
    set -lx PIP_AUTO_COMPLETE 1
    string split \  -- (eval $COMP_WORDS[1])
end
complete -fa "(__fish_complete_pip)" -c pip
# pip fish completion end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/daxter/anaconda3/bin/conda
    eval /home/daxter/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

