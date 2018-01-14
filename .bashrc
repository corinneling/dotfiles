# Taken from Mathias Bynens’ dotfiles
# https://github.com/mathiasbynens/dotfiles
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
  for file in ~/.{path,bash_prompt,aliases,functions}; do
  	[ -r "$file" ] && [ -f "$file" ] && source "$file";
  done;
  unset file;

# change the ls color output
  export CLICOLOR=1
  export LSCOLORS=CxFxGxDxAxegedabagaced

# change the bash prompt
  PS1='\[\e[1m\T\] \[\e[38m\d\] \[\e[33m\]$(git branch 2>/dev/null | sed -n "s/* \(.*\)/\1 /p")\[\e[32m\w\] \[\e[22m\u\] \n $(if [[ $? == 0 ]]; then printf "\xF0\x9F\x98\xBB"; else printf "\xF0\x9F\x98\xBF"; fi)\[\e[0m\]  \[\e[38m\]$ \[\e[0m\]'
