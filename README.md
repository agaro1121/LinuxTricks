# LinuxTricks

https://help.github.com/articles/caching-your-github-password-in-git/
```shell
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
```	
