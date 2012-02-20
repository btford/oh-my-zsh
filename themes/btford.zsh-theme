if [ "x$OH_MY_ZSH_HG" = "x" ]; then
    OH_MY_ZSH_HG="hg"
fi

function hg_prompt_info {
  ref=$(hg branch 2> /dev/null)
  if [[ -n $ref ]]; then

    echo "%{$fg[blue]%}hg %{$fg[magenta]%}${ref}%{$fg[yellow]%} → %{$reset_color%}"
  fi
}

PROMPT='%{$fg[yellow]%}λ %{$fg[green]%}%c %{$fg[yellow]%}→ $(git_prompt_info)$(hg_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%} → %{$reset_color%}"
