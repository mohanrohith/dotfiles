# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

##
## Completion…
##

# bash completion.
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    . $(brew --prefix)/share/bash-completion/bash_completion
fi
# homebrew completion
source `brew --repository`/Library/Contributions/brew_bash_completion.sh
