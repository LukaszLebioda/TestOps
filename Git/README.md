### vocabulary, aliases, basic commands

- working directory (uncommited changes untracked by git),
- staging area (uncommited changers, but now tracked by git),
- git repository (commited changes),
- external repository (pushed changes),

`git config --global core.pager "less -X -F"` -> pager (less),
`git config --global core.pager 'vim -'` -> vim,

git aliases
-> ~/.gitconfig
create new group [alias] and create aliases for git (git ch = git checkout etc.)
[alias]
        ch = checkout
        st = status

`git init` -> to initialize git repository in current folder,
`rm -rf .git/` -> to remove git repository from current folder,
`git status` -> current state of git repository
`git clone` -> to clone remote git repo (e.g. grom GitHub),

### git add, git commit

`git add` -> adds files from working directory to git staging area,
`git add .` -> adds all files,
`git add folder/file.txt folder2/file2.txt` -> adds specific file(s),

`git commit` -> adds files from staging area to git repo (text editor will open),
`git commit -m "message"` -> adds file with a git message,
`git commit --amend` -> updates existing commit,

### git log, git diff, git show

`git log` -> displays information about commits (q to quit),
`git log --oneline` -> displays high-level information,
`git log -n 3` -> limits the logged commits to 3,
- when in vim log output, type `/` to search for any string,

`git diff` -> shows diff between workdir and git_repo (with staging),
`git diff --name-status` -> shows high level differences,
`git diff --cached` or `git diff --staged` -> shows diffs between staging area and the state of git repo (last commit),

`git diff commitId1..commitId2` -> diff between 2 particular commits,
or `git diff commitId1 commitId2`
`git diff commitId1..`, -> diff from 1 commit downwards,
`git diff --name-status commitId1..` -> shows high level differences,
- first 7 signs of commit sha identifier is enough,

`git show commitId` -> git log + git diff combined,

### git rm, git mv

`git rm junk.txt` -> deletes file and simultaneously stages it (git rm = rm + git add),
`git mv junk.txt junk_renamed.txt` -> moves (renames) and simultaneously stages it (git mv = mv + git add),

