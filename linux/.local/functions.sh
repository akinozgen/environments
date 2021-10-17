#!/bin/bash
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

add_alias() {
	echo "\nalias $2=$1" >> ~/.local/aliases.sh
	source ~/.local/aliases.sh
}


lastxfiles() {
    find . -type f -printf '%T@ %p\n' | sort -n | tail -$1 | awk '{print $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15}' | tac
}

lastfiles() {
    find "$(pwd)" -type f -printf '%T@ %p\n' | sort -n | awk '{$1 = ""; print $0}' | tail -$1 | sed 's/^ *//;s/ *$//'
}

lastfiles_ago() {
    find "$(pwd)" -type f  -newermt $(date +%Y-%m-%d -d "$1 days ago") -type f -print | sed 's/^ *//;s/ *$//'
}

slideshow() {
    if [ "$2" = ""  ]; then
        2=$(ls -l | wc -l)
    fi

    lastfiles $2 > /tmp/filelist.txt
    feh -zdsrZFD $1 -f /tmp/filelist.txt
    #cat /tmp/filelist.txt | shuf | sxiv -bfqrS $1 -
    #cat /tmp/filelist.txt | shuf | sxiv  -a -b -s f -S $1 -p -q -i -
}

shuffleplay() {
    lastfiles $1 > /tmp/filelist.txt
    mpv --shuffle --playlist=/tmp/filelist.txt
}

ytvideo() {
	youtube-dl --output "%(uploader)s|%(title)s.%(ext)s" "$1"
}

ytmp3() {
	youtube-dl --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s" "$1"
}


mount_ntfs() {
  doas mkdir -p $2
  doas /usr/local/bin/ntfs-3g $1 $2 -olocal -oallow_other -oremove_hiberfile
}

blur_background_video() {
  ffmpeg -i $1 -vf 'split[original][copy];[copy]scale=ih*16/9:-1,crop=h=iw*9/16,gblur=sigma=20[blurred];[blurred][original]overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2' output.webm
}

lnx() {
  ln -s "${pwd}/$1" "${pwd}/$2"
}
