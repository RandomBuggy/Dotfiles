# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
set -o vi
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

[ -r /data/data/com.termux/files/usr/share/bash-completion/bash_completion ] && . /data/data/com.termux/files/usr/share/bash-completion/bash_completion

function ubuntu() {
	unset LD_PRELOAD
	proot --link2symlink --shared-tmp -r "/data/data/com.termux/files/home/Ubuntu" -0  -b "/dev" -b "/proc" -b "/sys" -b "data/data/com.termux/files/home/Ubuntu/tmp:/dev/shm" -b "/data/data/com.termux/files/" -b "/:/data/data/com.termux/files/home/Ubuntu" -b "/sdcard" -b "/storage" -b "/mnt" -w "/data/data/com.termux/files/home/" /usr/bin/env -i HOME="/root" PATH="/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games" COLORTERM="truecolor" TERM="xterm-256color" PROMPT_DIRTRIM=2 LANG="C.UTF-8" /bin/bash --login
	set LD_PRELOAD="/data/data/com.termux/files/usr/lib/libtermux-exec.so"
}

function pulse() {
	pulseaudio \
                --start \                                                                                                             --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
                --exit-idle-time=-1 >>/dev/null
}

# echo "important command :- shopt, shuf, shred, uniq, sort, cowsay -l, shift, cut, fzf, espeak, factor, wc -l, command -v, awk, sed, file, mkfs, mknod, mkfifo, uname, hostname" | lolcat
# cmatrix -amBs
# cowsay -f $(cowsay -l | fzf) "important command :- time, date, cal, shopt, shuf, shred, uniq, sort, cowsay -l, shift, cut, fzf, cmatrix, toilet, fortune, proot-distro, zip, unzip, openssl, ssh, tee, gpg, grep, alias, unalias" | lolcat
# echo "binutils : (strings, objdump, hexdump, pidof) dnsutils : (whois, nslookup), ncurses, strace" | lolcat
# echo "piping : |, &&, || ;, etc and redirection : {0, 1, 2}>, {0, 1, 2}>>, {0, 1, 2}< (0=stdin, 1=stdout, 2=stderr)" | lolcat
# echo "ENV:var, positional argument, normal argument" | lolcat
# echo "Priority : function, alias, command-binary" | lolcat
# xset r rate 300 50 ;extends key pressing speed
export LANG=C.UTF-8
export DISPLAY=":1"
alias rm="rm -iv"
alias cp="cp -iv"
alias mv="mv -iv"
alias snake="sssnake -j 2 -s 8 -l fancy -z -t -m autopilot --try-hard 2"
# cd $HOME/WsCube/Python-Project/lec6/
# cd /data/data/com.termux/files/home/HarryPy/lec120/
