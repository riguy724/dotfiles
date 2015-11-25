shopt -s dotglob

for file in "$(dirname "$BASH_SOURCE")"/.dfsrc/*; do
	[ -r "$file" ] && source "$file";
done;
unset file;

echo -en "All done \xF0\x9F\x98\x8E\x0A" | iconv -f utf-8 -t utf-8
