# AnalyzeAppEnvironment
Tools to analyze environment in which RoboTutor etc. run, e.g. log a directory listing to see what files are there.

When run, logs recursive directory of specified folder, e.g. [main storage]/Download in order to list its apk and assets.

	Filename should include tablet ID and timestamp.
	
	Ideally besides filenames, list file date and size.  Unfortunately, Android shell script editor only lists filename.
	
	Output to [internal storage]/RoboTutor, because DriveSync is already configured to upload it.
	
To show what files are in RoboTutor folder, could modify to log it instead, e.g. to catch DriveSync lossage if any.

**Example Output for directory of RoboTutor folder:**

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
