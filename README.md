# LinuxTricks

curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash

curl -OL https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh

https://help.github.com/articles/caching-your-github-password-in-git/

[mergetool "p4merge"]
  cmd = /Applications/p4merge.app/Contents/MacOS/p4merge "$BASE" "$LOCAL" "$REMOTE" "$MERGED"
  keepTemporaries = false
  trustExitCode = false
  keepBackup = false
[merge]
	tool = p4merge
[mergetool]
	keepBackup = false
[difftool "p4mergetool"]
	cmd = /Applications/p4merge.app/Contents/Resources/launchp4merge $LOCAL $REMOTE
[diff]
	tool = p4mergetool
[alias]
	s = status