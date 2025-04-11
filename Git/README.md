### vocabulary, aliases, basic commands

- working directory (changes untracked by git),
- staging area / index (changes tracked by git, yet to be commited),
- git repository (commited changes),
- external repository (pushed changes),

~/.gitconfig:
`git config --global user.name "Wookie Wookovsky`,
`git config --global user.email wookie@wookie.com`,
`git config --global core.pager "less -X -F"` -> logs in less pager,
`git config --global core.pager 'vim -'` -> logs in vim,
`git config --global core.editor 'code --wait` -> vs code as default,
git aliases: create new group [alias] and create aliases for git (git ch = git checkout etc.)
[alias]
        lo = log --oneline
        ch = checkout
        st = status
        br = branch
        fe = fetch
        pu = push -u origin HEAD

`git init` -> to initialize git repository in current folder (.git),
`rm -rf .git/` -> to remove git repository from current folder,
`git status` -> current state of git repository,
`git clone` -> to clone remote git repo (e.g. grom GitHub),
`git help` -> to get help (`git help | less` -> in less pager),
`git commit --help` -> to get help on particular command,

### git add, git commit

`git add .` -> adds all files from work dir to staging area,
`git add folder/file.txt folder2/file2.txt` -> adds specific file(s),

`git commit` -> adds files from staging area to git repo (text editor will open),
`git commit -m "message"` -> adds file with a git message,
`git commit --amend` -> updates existing commit (`git push --force-with-lease` may be required),

### git log, git diff, git show

`git log` -> displays information about commits (q to quit),
`git log --oneline` -> displays high-level information,
- when in vim log output, type `/` to search for any string,

`git diff` -> shows diff between workdir and git_repo (with staging),
`git diff --name-status` -> shows high level differences,
`git diff --cached` or `git diff --staged` -> shows diffs between staging area and the state of git repo (last commit),

`git diff commitId1..commitId2` -> diff between 2 commits,
or `git diff commitId1 commitId2`
`git diff commitId`, -> diff from 1 commit downwards,
- first 7 signs of commit sha identifier is enough,

`git show commitId` -> git log + git diff combined,

### git rm, git mv

`git rm junk.txt` -> deletes file and simultaneously stages them (git rm = rm + git add),
`git mv junk.txt junk_renamed.txt` -> moves (renames) and simultaneously stages them (git mv = mv + git add),

### git clean, git checkout, git reset

# removes untracked files (created, but not staged yet)
`git clean -d -n .` -> displays all files & folders to be un-tracked,
`git clean -d -f .` -> removes all folders & files to be un-tracked,
`git clean -X -d -n/-f .` -> affects also ignored files & folders,
- ofc we can just remove files manually with `rm` or `git rm`,

# restores tracked files (created & modified, but not staged yet)
`git checkout anyFolder/anyFile.txt` -> restores unstaged changes,
`git checkout .` -> restores all unstaged changes,

# restores staged files (brings them back to working directory)
# to restore further -> git checkout (unmodify) or git clean (remove)
`git reset anyFolder/anyFile.txt` -> restores a staged change,
`git reset .` -> restores all staged changes,
`git reset shaIdentifier` -> restores back to a specific commit,
`--mixed` -> reset default behaviour,
`--soft`,
`--hard`,




