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
