# Setup fzf
# ---------
if [[ ! "$PATH" == */home/nb-karpochev/.fzf/bin* ]]; then
  export PATH="$PATH:/home/nb-karpochev/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/nb-karpochev/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/nb-karpochev/.fzf/shell/key-bindings.zsh"

