#!/system/bin/sh

#timestamp stores the current time and date
timestamp=$(date +%Y-%m-%d_%H-%M-%S)
echo "timestamp = $timestamp"

#Taking the DeviceId as an input
echo "Enter Device ID:"
read

#Storing the input into the deviceId variable
deviceId=$REPLY

#filename is used to uniquely identify the file and is of the format "FILES_deviceId_timestamp"
FILES_fileName="FILES_${deviceId}_${timestamp}.txt"
echo "FILES_fileName = $FILES_fileName"

#command to recursively list the subfolders in the given folder
out=$(ls -R -s /sdcard/Download)

#command to create a new text file with given fileName as the name and redirecting the contents of $out into a new file
echo "$out" > /sdcard/RoboTutor/"$FILES_fileName"
