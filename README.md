# dotfiles

## Create symlink to the dotfiles:
`ln -s ~/dotfiles/vim/.vimrc ~/.vimrc`<br/>
`ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig`<br/>
`ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf`<br/>
`ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc`<br/>

## zsh theme
The "pure" zsh theme needs to first be installed with<br/>
`npm install --global pure-prompt`

## Change your default shell to zsh
`chsh -s /bin/zsh`

## OSX specific
Install reattach-to-user-namespace<br/>
`brew install reattach-to-user-namespace`

Use Homebrew vim
`brew install vim` and
`brew link vim`

## Colorscheme.
Vim uses the gruvbox colorscheme. The same colorscheme for iterm2 is available here: https://github.com/herrbischoff/iterm2-gruvbox
