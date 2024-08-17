
# FORGIT ENV
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
# export FORGIT_FZF_DEFAULT_OPTS="--height 40% --reverse --border --ansi --prompt='Forgit> '"
# export FORGIT_FZF_DEFAULT_OPTS="--height 40% --reverse --border --ansi --prompt='Forgit> ' --preview 'bat --color=always --style=header,grid --line-range :500 {}'"
# export FORGIT_FZF_DEFAULT_OPTS="--highlight-line --wrap --preview-window='right:60%' --preview 'bat --color=always --style=header,grid --line-range :500 {}'"
export FORGIT_FZF_DEFAULT_OPTS="--highlight-line --wrap --preview-window='right:60%:nohidden:wrap'"
export FORGIT_CHECKOUT_BRANCH_BRANCH_GIT_OPTS="--sort=comitterdate"
export FORGIT_GLO_FORMAT="%C(auto)%h%d %s %C(blue)(%cr)%C(reset)"

general_plugins=(
    git
)
custom_plugins=(
    fast-syntax-highlighting
    forgit
    fzf-zsh-plugin
    zsh-autosuggestions
    zsh-completions
    diff-so-fancy
)


for plugin ($custom_plugins); do
    source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
done

# GIT CONFIG FOR DIFF-SO-FANCY
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global interactive.diffFilter "diff-so-fancy --patch"

git config --global color.ui true

git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta "11"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.fund "146 bold"
git config --global color.diff.commit "yellow bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"

# GIT CONFIG GLOBAL
git config --global core.editor "nvim"
git config --global --add --bool push.autoSetupRemote true
git config --global branch.sort -committerdate

# Setup p10k
# cp ./p10k.zsh ~/.p10k.zsh

# ALIASES
als() {
    alias_name=$1
    cmd=$2
    alias $alias_name="echo '$cmd' ; echo '---' && $cmd"
}

als gfod 'git fetch origin dev'
als gcod 'gco origin/dev'
als gfcod 'gfod && gcod'
als griod 'git rebase -i origin/dev'
