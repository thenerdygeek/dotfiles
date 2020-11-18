# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/subhankar/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE='nerdfont-complete'


prompt_zsh_battery_level() {
  local percentage1=`acpi | grep -o '[0-9]*%'`
  local percentage=`echo "${percentage1//\%}"`

  local color='%F{red}'
  local symbol="\uf00d"
  acpi | grep "Discharging" > /dev/null
  if [ $? -eq 0 ]; then
    local charging="false";
  else
    local charging="true";
  fi
  if [ $percentage -le 20 ]
  then symbol='\uf579' ; color='%F{red}' ;
    #10%
  elif [ $percentage -gt 19 ] && [ $percentage -le 30 ]
  then symbol="\uf57a" ; color='%F{red}' ;
    #20%
  elif [ $percentage -gt 29 ] && [ $percentage -le 40 ]
  then symbol="\uf57b" ; color='%F{yellow}' ;
    #35%
  elif [ $percentage -gt 39 ] && [ $percentage -le 50 ]
  then symbol="\uf57c" ; color='%F{yellow}' ;
    #45%
  elif [ $percentage -gt 49 ] && [ $percentage -le 60 ]
  then symbol="\uf57d" ; color='%F{blue}' ;
    #55%
  elif [ $percentage -gt 59 ] && [ $percentage -le 70 ]
  then symbol="\uf57e" ; color='%F{blue}' ;
    #65%
  elif [ $percentage -gt 69 ] && [ $percentage -le 80 ]
  then symbol="\uf57f" ; color='%F{blue}' ;
    #75%
  elif [ $percentage -gt 79 ] && [ $percentage -le 90 ]
  then symbol="\uf580" ; color='%F{blue}' ;
    #85%
  elif [ $percentage -gt 89 ] && [ $percentage -le 99 ]
  then symbol="\uf581" ; color='%F{blue}' ;
    #85%
  elif [ $percentage -gt 98 ]
  then symbol="\uf578" ; color='%F{green}' ;
    #100%
  fi
  if [ $charging = "true" ];
  then color='%F{green}'; if [ $percentage -gt 98 ]; then symbol='\uf584'; fi
  fi
  echo -n "%F{white}\uE0B3 %{$color%}$symbol %F{white}$percentage%% " ;
}

prompt_zsh_internet_signal(){
  local symbol="\uf7ba"
  local strength=`iwconfig wlp8s0 | grep -i "link quality" | grep -o "[0-9]*/[0-9]*"`
  
  echo -n "%F{white}\uE0B3 $symbol $strength"
}


prompt_my_icon() {
    local content='\uf31b'
    $1_prompt_segment "$0" "$2" "black" "white" "$content" "#"
}



POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %d.%m.%y}"
POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='orange'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_HIDE_TAGS='false'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL9K_CUSTOM_BATTERY_STATUS="prompt_zsh_battery_level"
POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND='blue'
POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND='black'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(my_icon context custom_internet_signal  ssh root_indicator dir dir_writable vcs)
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context custom_internet_signal  ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time  status  custom_battery_status_joined zsh_internet_signal time)
HIST_STAMPS="dd/mm/yyyy"
DISABLE_UPDATE_PROMPT=true
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='purple'

POWERLINE9K_CODETALK_DEFAULT_BACKGROUND='black'
POWERLINE9K_CODETALK_DEFAULT_FOREGROUND='red'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git github git_remote_branch gradle python tmux sudo sublime zsh-syntax-highlighting zsh-autosuggestions catimg pip)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#added for the custom theme
eval `dircolors ~/.dir_colors/dircolors`

#for hiding the current user in terminal
export DEFAULT_USER=`whoami`

# added by Anaconda3 4.4.0 installer
# export PATH="/home/subhankar/anaconda3/bin:$PATH"

#shortcut to control secondary screen brightness
alias screen_brightness="xrandr --output HDMI1 --brightness" 

#to open sqlite from the default library
alias sqlite3='/usr/bin/sqlite3'


#alias for colorls to show colored icons
alias ll='colorls -lA --sd --group-directories-first'
alias ls='colorls --group-directories-first'




#setting environment variables for go-lang
export GOROOT=~/.local/share/umake/go/go-lang 
export GOPATH=~/Desktop/Programs/Go-Lang
export PATH=~/.local/share/umake/go/go-lang/bin:"${PATH}" 


#setting path for scala
export PATH=~/.local/share/umake/scala/scala-lang/bin:"${PATH}"

# For TMUX
export LC_ALL=en_US.UTF-8 
export LANG=en_US.UTF-8
source /usr/local/bin/activate.sh


# added by Anaconda3 installer
export PATH="/home/subhankar/anaconda3/bin:$PATH"

#TESSERACT Export
export TESSDATA_PREFIX='/usr/share/tesseract-ocr/tessdata'
export SCROLLVIEW_PATH=$PWD/java



###############
### Aliases ###
###############
alias fucking='sudo apt-get'
alias gdrive='~/Downloads/gdrive/./gdrive-linux-x64'
alias learnwords='python /home/subhankar/Desktop/Programs/Python/GRE/dictionary.py words.txt'
alias wordlist='python /home/subhankar/Desktop/Programs/Python/GRE/words.py'
alias dictionary='python /home/subhankar/Desktop/Programs/Python/GRE/dictionary.py'
alias select_intel='sudo prime-select intel'
alias select_nvidia='sudo prime-select nvidia'

#alias for navigating to competitve programming folder
# alias cpdir='cd /home/subhankar/Desktop/Programs/competitive_programming/'


#################
### Functions ###
#################
#----- Usage -----#
## func params ##
runcpp() {
	g++ -o "$1.out" "$1"
	./"$1.out"
}

youtube_playlist(){
  sudo pip install -U youtube-dl
	youtube-dl --yes-playlist -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "$1"
}



slack(){
	
	if $@; then
		curl -X POST -H 'Content-type: application/json' --data "{'text':'Run Succeded'}" https://hooks.slack.com/services/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
	else
		curl -X POST -H 'Content-type: application/json' --data "{'text':'Run Failed'}" https://hooks.slack.com/services/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
	fi
}

cpdir(){
  echo /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2"
  if [[ -d /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2" ]]
  then
    cd /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2"
    code .
    echo "Directory /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2" exists." 
  else
    echo "Error: Directory /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2" does not exists."
    mkdir /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2"
    cd /home/subhankar/Desktop/Programs/competitive_programming/"$1/$2"
    code .
  fi
}


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Bazel 
export PATH="$PATH:$HOME/bin"

# Cuda CUPTI
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64

# Cuda
export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}$ 
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

bindkey '^`' autosuggest-clear