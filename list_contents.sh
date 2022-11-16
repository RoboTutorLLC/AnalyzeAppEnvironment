#timestamp stores the current time and date
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
echo "$timestamp"
#deviceId stores the current tabletId
deviceId=$(adb.exe shell getprop ro.serialno)
echo "$deviceId"
#filename is used for identifying the file and is of the format "timestamp_deviceId"
FILES_fileName="FILES_"
FILES_fileName+="${timestamp}_"
FILES_fileName+="$deviceId"
echo "$FILES_fileName"
#command to recursively list the subfolders inside the given folder
out=$(adb.exe shell ls -R /mnt/sdcard/RoboTutor)
#command to create a new text file with given fileName as the name and redirecting the contents of out into the file
echo "$out" > "$FILES_fileName".txt
# command to push the created text file into the tablet using adb
adb.exe push "${FILES_fileName}".txt /mnt/sdcard/RoboTutor
rm "$FILES_fileName".txt
