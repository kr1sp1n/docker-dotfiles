# lolfish

such rainbow, wow.

![lolfish][screenshot1]
![lolfish][screenshot2]

## Install

With [Fisherman](https://github.com/fisherman/fisherman):

```fish
fisher i lolfish
```

Manually

Download both left and right prompts source files:

```fish
mkdir -p $HOME/.config/fish
wget -O $HOME/.config/fish/lolfish_prompt.fish https://github.com/er0/lolfish/raw/master/fish_prompt.fish
wget -O $HOME/.config/fish/lolfish_right_prompt.fish https://github.com/er0/lolfish/raw/master/fish_right_prompt.fish
```

Source the prompt files from your primary fish config:

```fish
echo "source $HOME/.config/fish/lolfish_prompt.fish" >> $HOME/.config/fish/config.fish
echo "source $HOME/.config/fish/lolfish_right_prompt.fish" >> $HOME/.config/fish/config.fish
```


## Features

  * git branch/status info while PWD in git repositories
  * Only the most rainbow friendly xterm colors!
  * Return value from the last command if there was an error.
  * Right prompt displays backgrounded jobs, backgrounded tmux sessions, and the time.
  * Compact and scp compatible user@hostname:path format
  * rainbow


## The Prompt

### Left Prompt:
  * username@hostname:path
  * Git branch, [master]
  * Git status, [master:3]
  * Exit status of previous command on error: (127)
  * You currently are not root: >>
  * You currently are root: #

### Right Prompt:
  * Number of background jobs, [&:2]
  * Number of tmux sessions, [tmux:7]
  * The time and Date: Hour:Min Day-Month-Year


[screenshot1]: http://i.imgur.com/InJELf3.png
[screenshot2]: http://i.imgur.com/v6aI9AB.png
