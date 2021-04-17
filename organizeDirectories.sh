#!/bin/bash

folders='Images Music Videos'

img_ext="*.jpg *.JPG *.png *.gif"
music_ext="*.mp3 *.aac *.wma *.flac"
vid_ext="*.mp4 *.mkv *.flv *.avi *.webm *.wmv"


#ext_comp="*.zip *.tar.gz"
#ext_doc="*.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js"
#ext_progrm="*.deb *.exe *.run"

for folder in $folders
do

	if [ $folder == 'Images' ]
	then
		mkdir -p $folder
		mv $img_ext $folder 2>/dev/null

	elif [ $folder == 'Music' ]
	then
		mkdir -p $folder
		mv $music_ext $folder 2>/dev/null

	elif [ $folder == 'Videos' ]
	then
		mkdir -p $folder
		mv $ext_vid $folder 2>/dev/null

	else
		echo "$(tput setaf 3)Problem creating folder..$(tput sgr0)"
	fi

done

echo "$(tput setaf 2)Successfully organized..$(tput sgr0)"
