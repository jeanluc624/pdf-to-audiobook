# pdf-to-audiobook
converts pdf to multiple audio files for so that you can listen to content even if you don't have much time

If your looking to hypothetically convert .epub's you could use Calibre's ebook-convert tool to convert it to pdf then to mp3, command syntax would be ebook-convert epubName.epub epubName.pdf

# Very Important
before you run this software, run the installer script to download nessesary dependent software, this script is designed in its current form to run on a single pdf inside a user made directory, running outside of this enviroment will cause unexpected or unwanted behaviour, check the code yourself to see what its doing. 

This script when run should create 3 folders using the desired output name, one for the images of each page in the pdf file, one for detected text on each page of the pdf file and one for the mp3 audio files

The installer part of this script is designed to be run on Debian or Debian like systems, the rest is just bash so it should be fine on anything that can run bash

# Known issues 

Tesseract isn't always perfect at picking up text near or in a page layout box, will also sometimes garbage text from the media your trying to convert and may fail to recognize differences between o's and 0's, Tesseract can be quite slow at converting very large pdfs

Part of the conversion uses WAV files which are horrendously bad if your converting large pdf's and can very easily eat up too much disk space, final step in my script deletes them leaving only mp3 files but it can take up a lot of space while converting 

# Additional Licencing / legal 
Obviously I don't own the rights to pdftoppm, tesseract-ocr, espeak (or its mbrola voices), ffmpeg or the concept a for loop on a directory, the currectly licencisng listed is really so that people can take what i have made and use it in a GPL 3 way. I also take the usual legal statement of No responsibility for any harm that this software causes, You can look at the code and choose to run it at your own risk 

All the code in this script is code i pieced together with the help of stack overflow and various coding websites, the only exception being the install script for the dependencies which chatgpt basically wrote 


