### vocabulary, aliases, basic commands

- working directory (uncommited changes untracked by git),
- staging area (uncommited changers, but now tracked by git),
- git repository (commited changes),
- external repository (pushed changes),

`git config --global core.pager "less -X -F"` -> uses pager (less),
`git config --global core.pager 'vim -'` -> logs in vim,

git aliases
-> ~/.gitconfig
create new group [alias] and create aliases for git (git ch = git checkout etc.)
[alias]
        ch = checkout
        st = status

`git init` -> to initialize git repository in current folder,
`rm -rf .git/` -> to remove git repository from current folder,
`git status` -> current state of git repository,
`git status -u` -> shows all untracked files per folders,
`git clone` -> to clone remote git repo (e.g. grom GitHub),

`git help` -> to get help (`git help | less` -> in less pager),
`git commit --help` -> to get help on particular command,

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

### git clean, git checkout, git reset

# removes untracked files (created, but not staged yet)
`git clean -d -n .` -> displays all files & folders to be un-tracked,
`git clean -d -f .` -> removes all folders & files to be un-tracked,
`git clean -X -d -n/-f .` -> affects also ignored files & folders,
- ofc we can just remove files manually with `rm` or `git rm`,
# restores tracked files (created & modified, but not staged yet)
`git checkout -- anyFolder/anyFile.txt` -> restores unstaged change,
`git checkout .` -> restores all unstaged changes,
# restores staged files (brings them back to working directory)
# to restore further -> git checkout (unmodify) or git clean (remove)
`git reset -- anyFolder/anyFile.txt` -> restores staged change,
`git reset .` -> restores all staged change,

# git reset in more detail: 
`git reset --soft ecda622` -> restores the local repository to a certain commit (point) in time (but keeps all the changes in the local repository from this commit onwards),
`git reset --hard ecda622` -> restores the local repository to a certain commit (point) in time (without keeping the changes),