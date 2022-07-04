# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
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

alias x='exit'
alias p='clear'
export DISPLAY=":1"
echo "important command :- shopt, shuf, shred, uniq, sort, cowsay -l, shift, cut, fzf, espeak, factor, wc -l, command -v, awk, sed, file, mkfs, mknod, mkfifo, uname, hostname" | lolcat
sleep 3
clear
cmatrix -amBs

cowsay -f $(cowsay -l | fzf) "important command :- time, date, cal, shopt, shuf, shred, uniq, sort, cowsay -l, shift, cut, fzf, cmatrix, toilet, fortune, proot-distro, zip, unzip, openssl, ssh, tee, gpg, grep, alias, unalias" | lolcat
sleep 2
clear
sleep 1
echo "DSA lecture holds at directory ~/DSA/lec33/ ok keep learning !!"
echo "Turtle lecture holds at ~/Turtle/lec18/"
echo "WebDev lecture holds at ~/HarryWebDev/lec39"
echo "Assembly lecture holds at ~/*asembly/lec13/"
echo "from Low Level Learning Watch All ARM assembly lecture"
echo "binutils : (strings, objdump, hexdump, pidof) dnsutils : (whois, nslookup), ncurses, strace" | lolcat
echo "piping : |, &&, || ;, etc and redirection : {0, 1, 2}>, {0, 1, 2}>>, {0, 1, 2}< (0=stdin, 1=stdout, 2=stderr)" | lolcat
echo "ENV:var, positional argument, normal argument" | lolcat
echo "Priority : function, alias, command-binary" | lolcat
# cd /data/data/com.termux/files/home/HarryPy/lec120/
# cd $HOME/HarryWebDev/lec75/
# cd /data/data/com.termux/files/home/DSA/lec42/
# cd $HOME/WsCube/Python-Project/lec6/
cd ~/JavaCrashCourse/episode2/
