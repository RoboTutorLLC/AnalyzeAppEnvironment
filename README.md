# AnalyzeAppEnvironment
Tools to analyze environment in which RoboTutor etc. run, e.g. log a directory listing to see what files are there

apk that when run, logs recursive directory of whatever folder it’s in (“.”), presumably [main storage]/Download
	Filename should include tablet ID and timestamp
	Output filepath, filename, file size, file date (however is easiest)
	Output to [internal storage]/RoboTutor where DriveSync is already configured to upload

adb shell ls -R /mnt/sdcard/RoboTutor

**Example Output:**

/mnt/sdcard/RoboTutor:
PERF_RoboTutor__3.5.0.1_000001_2022.10.16.19.57.08_unknown.json
RoboTutor__3.5.0.1_000001_2022.10.16.19.57.08_unknown.json
facelogin_crashlogs

/mnt/sdcard/RoboTutor/facelogin_crashlogs:
CRASH_20221013_233506_unknown_debug_1.8.1.3.txt
CRASH_20221013_233544_unknown_debug_1.8.1.3.txt
CRASH_20221016_192137_unknown_debug_1.8.1.3.txt
CRASH_20221020_002321_unknown_debug_1.8.1.3.txt
CRASH_20221020_002337_unknown_debug_1.8.1.3.txt
CRASH_20221020_004852_unknown_debug_1.8.1.3.txt
