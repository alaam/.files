#source /usr/local/git/contrib/completion/git-completion.bash
#GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='[\u@mbp \w$(__git_ps1)]\$ '

# My .zsh-theme based off the example given here:
# http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
    }

    function prompt_char {
        git branch >/dev/null 2>/dev/null && echo '±' && return
	    echo '$'
    }

    function virtualenv_info {
        [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='
%{$fg[magenta]%}Josh%{$reset_color%} at %{$fg[yellow]%}¯\_(ツ)_/¯%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

