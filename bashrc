HISTCONTROL=ignoredups:ignorespace:erasedups
HISTIGNORE="pwd:ls:ll:cd:cd .."

PS1='\033[1;37m\W\033[0m$(__git_ps1 "|\033[0;33m%s\033[0m") '

PATH=$PATH:/media/Data/Libraries/android-sdk-linux/sdk/tools
PATH=$PATH:/media/Data/Libraries/android-sdk-linux/sdk/platform-tools
