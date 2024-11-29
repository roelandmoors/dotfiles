alias ls='ls --color'
#alias vi='nvim'
alias mc='mc --nosubshell'
alias lg='lazygit'
#alias python='python3'
#alias pip='pip3'

export EDITOR="vim"

bindkey -e

export PATH="/opt/homebrew/bin":$PATH
export PATH=$HOME/.local/bin:$HOME/go/bin:$PATH
export PATH="/Applications/MacVim.app/Contents/bin:$PATH"


## FZF
export FZF_DEFAULT_COMMAND="rg --files --sortr modified"
source <(fzf --zsh)

### PROMPT
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
export PROMPT='%(?.%F{14}⏺.%F{9}⏺)%f %2~ %F{39}$(parse_git_branch)%f%# '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/roeland/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/roeland/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/roeland/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/roeland/google-cloud-sdk/completion.zsh.inc'; fi
