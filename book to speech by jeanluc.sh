#!/bin/bash
echo 'please run in the same directory as the singe pdf file to be converted Press any key to continue...'
read -n 1 -s -r -p ""
clear
echo "please enter the name you would like the output mp3's, jpg's to be "
read novelName
pdftoppm -jpeg *.pdf "$novelName.image"

for f in ./*jpg; 
	do tesseract "$f" "$f";
done
for f in *.jpg.txt;
	do espeak -v mb-us1 -f "$f" -s 150 -w "$novelName.$f.wav"
done
for f in *jpg.txt.wav;
	do ffmpeg -i "$f" -acodec mp3 "$f.mp3"
done

i=0
for f in *.mp3;
	do mv "$f" "$i.$novelName.mp3" 
	let "i=i+1"
done 

mkdir "$novelName.mp3" "$novelName.wav" "$novelName.jpg" "$novelName.txt" 
mv *.mp3 "$novelName.mp3"
mv *.wav "$novelName.wav"
mv *.jpg "$novelName.jpg"
mv *.txt "$novelName.txt" 
rm -r "$novelName.wav"
exit
