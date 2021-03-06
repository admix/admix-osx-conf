### OSX Configuration files

#### zsh spaceship (sometimes can be slow)
- theme: [spaceship](https://github.com/denysdovhan/spaceship-prompt)
- config: TBD

#### zsh pure (fast and light prompt)
- theme: [pure](https://github.com/sindresorhus/pure)
- setup:
```bash
brew install pure
vim ~/.zshrc
```
paste the code below into `.zshrc`

```bash
autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
```
- different `zstyle` [colors](https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg)
```bash
# git branch color
zstyle :prompt:pure:git:branch color 208

# git pull arrow color
zstyle :prompt:pure:git:arrow color 119
```

#### vim
- theme: custom color scheme, inspired by [nord.vim](https://github.com/arcticicestudio/nord-vim)
- vimrc: some overrides (TBD)

#### iterm2
- font: Roboto Mono Powerline, inspired by [Powerline](https://github.com/powerline/fonts)
- color scheme: [nord-iterm](https://github.com/arcticicestudio/nord-iterm2)
