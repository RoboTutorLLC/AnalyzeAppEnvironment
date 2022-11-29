#!/system/bin/sh
#timestamp stores the current time and date
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
echo "timestamp = $timestamp"
#deviceId stores the current tabletId
deviceId=$(id -u)
echo "deviceId = $deviceId"
#filename is used for identifying the file and is of the format "timestamp_deviceId"
FILES_fileName="FILES_${deviceId}_${timestamp}.txt"
echo "FILES_fileName = $FILES_fileName"
#command to recursively list the subfolders inside the given folder
out=$(ls -R /sdcard/Download)
#command to create a new text file with given fileName as the name and redirecting the contents of out into the file
echo "$out" > /sdcard/RoboTutor/"$FILES_fileName"
