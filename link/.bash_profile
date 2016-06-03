shopt -s dotglob

if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi

for file in "$(dirname "$BASH_SOURCE")"/.dfsrc/*; do
	[ -r "$file" ] && source "$file";
done;
unset file;

export NVM_DIR="/Users/chris/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

echo -en "All done \xF0\x9F\x98\x8E\x0A" | iconv -f utf-8 -t utf-8
