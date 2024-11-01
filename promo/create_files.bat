@echo off
REM Set the directory where you want to create the HTML files
set folder_path=%cd%\html_files

REM Create the folder if it doesn't exist
if not exist "%folder_path%" mkdir "%folder_path%"

REM List of filenames
set file_names=(
    BT100-0A
    BT100-0B
    CD400-0A
    CD400-0B
    CD500-0A
    BW200-0A
    BW200-0B
    BW220-0A
    BW220-0B
    BT301-0B
    CD401A-0B
    BW201-0B
    BT202-0B
    CD402-0B
    BW202-0B
    BW302-0B
    CD304-0A
    CD604-0A
    CD604-0B
    CD804-0A
    CD804-0B
    BT205-0B
    CD405-0B
    BW225-0B
)

REM Loop through the filenames and create an HTML file for each
for %%f in %file_names% do (
    echo Creating file %%f.html
    echo ^<html^>^</html^> > "%folder_path%\%%f.html"
)

echo All files created in "%folder_path%"
pause
