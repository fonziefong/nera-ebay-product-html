@echo off
REM Set the directory where you want to create the HTML files
set folder_path=%cd%\html_files

REM Create the folder if it doesn't exist
if not exist "%folder_path%" mkdir "%folder_path%"

REM List of filenames starting with "WS" only
set file_names=^
WS200-41-0A-0000^
 WS200-41-0A-0101^
 WS200-41-0A-0202^
 WS200-41-0B-0000^
 WS200-41-0B-0101^
 WS200-41-0B-0202^
 WS200-411-0A-0000^
 WS200-411-0A-0101^
 WS200-411-0A-0202^
 WS200-411-0B-0000^
 WS200-411-0B-0101^
 WS200-411-0B-0202^
 WS201-4A3-0B-0000^
 WS201-4A3-0B-0101^
 WS201-4A3-0B-8484^
 WS201-4A33-0B-0000^
 WS201-4A33-0B-0101^
 WS201-4A33-0B-8484^
 WS202-42-0B-0385^
 WS202-42-0B-0985^
 WS202-422-0B-0385^
 WS202-422-0B-0985^
 WS225-42-0B-0311^
 WS225-42-0B-0911^
 WS225-42-0B-6711^
 WS225-422-0B-0311^
 WS225-422-0B-0911^
 WS225-422-0B-6711

REM Loop through each WS-prefixed filename and create an HTML file
for %%f in (%file_names%) do (
    echo Creating file %%f.html
    echo ^<html^>^</html^> > "%folder_path%\%%f.html"
)

echo All files created in "%folder_path%"
pause
