git-new() {
	[ -d "$1" ] || mkdir "$1" &&
		cd "$1" &&
		git init &&
		touch .gitignore &&
		git add .gitignore &&
		git commit -m "Add .gitignore."
}
